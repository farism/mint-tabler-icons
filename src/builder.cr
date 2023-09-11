require "xml"

class String
  def indent(spaces : Int32 = 2) : String
    lines.join('\n') do |line|
      line.empty? ? line : (" " * spaces) + line
    end
  end
end

def format_filename(str : String)
  File.basename(str, ".svg").upcase.gsub("-", "_")
end

def copy(node, xml)
  node.children.each do |child|
    next if child.text?
    next if child["stroke"]? == "none" && child["fill"]? == "none"

    xml.element(child.name) do
      child.attributes.each do |attribute|
        xml.attribute(attribute.name, attribute.content)
        copy(child, xml)
      end
    end
  end
end

icons = {} of String => String

Dir.glob("heroicons/optimized/**/*.svg").to_a.sort.each do |file|
  document = XML.parse(File.read(file))

  if svg = document.first_element_child
    string = XML.build(indent: "  ") do |xml|
      xml.element("svg") do
        svg.attributes.each do |attribute|
          next if attribute.name == "aria-hidden"

          if attribute.name == "stroke-width"
            xml.attribute("style", "stroke-width: var(--heroicons-stroke-width, #{attribute.content});")
          else
            xml.attribute(attribute.name, attribute.content)
          end
        end

        copy(svg, xml)
      end
    end

    html =
      string
        .sub("<?xml version=\"1.0\"?>", "")
        .indent

    icons[file] = html
  end
end

def generate_module_content(icons : Hash(String, String), filter : String, module_name : String)
  content =
    icons
      .select { |file| file.includes?(filter) }
      .map { |file, html| "const #{format_filename(file)} =\n#{html}" }
      .join("\n\n")
      .indent

  <<-MINT
    // THIS FILE IS AUTO GENERATED

    module #{module_name} {
      \n#{content}\n
    }
  MINT
end

def generate_demo_component(icons : Hash(String, String), module_name : String)
  content =
    icons
      .keys
      .map { |file| "<{ #{module_name}:#{format_filename(file)} }>" }
      .join("\n")
      .indent(8)

  <<-MINT
  // THIS FILE IS AUTO GENERATED
  
  component #{module_name}Demo {
    fun render : Html {
      <div>
        #{content}
      </div>
    }
  }
  MINT
end

File.write("source/Icons.mint", generate_module_content(icons, "24/solid", "HeroIcons"))
File.write("source/IconsOutline.mint", generate_module_content(icons, "24/outline", "HeroIconsOutline"))
File.write("source/IconsMini.mint", generate_module_content(icons, "20/solid", "HeroIconsMini"))

# write example icon files
# Dir.mkdir_p("example/source")
# File.write("example/source/HeroIconsDemo.mint", generate_demo_component(icons, "HeroIcons"))
# File.write("example/source/HeroIconsOutlineDemo.mint", generate_demo_component(icons, "HeroIconsOutline"))
# File.write("example/source/HeroIconsMiniDemo.mint", generate_demo_component(icons, "HeroIconsMini"))