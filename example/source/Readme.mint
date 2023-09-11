component Readme {
  connect App exposing { micromark }

  state html : String = ""

  fun componentDidMount {
    let resp =
      await "https://raw.githubusercontent.com/farism/mint-canvas/master/README.md"
      |> Http.get
      |> Http.send

    let html =
      case resp {
        Result::Ok(resp) =>
          case micromark {
            Maybe::Just(fn) =>
              fn(resp.bodyString)

            =>
              ""
          }

        =>
          ""
      }

    next { html: html }

    ""
  }

  fun componentDidUpdate {
    `window.hljs.highlightAll()`
  }

  fun render : Html {
    <div dangerouslySetInnerHTML={`{__html: #{html}}`}/>
  }
}
