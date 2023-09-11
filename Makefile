.PHONY: build

build: hero-icons
	crystal run -p src/builder.cr
	mint format

hero-icons:
	-git clone https://github.com/tailwindlabs/heroicons
