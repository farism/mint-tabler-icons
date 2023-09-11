enum Page {
  Readme
  Guide(String)
  API(String)
}

store App {
  state micromark : Maybe(Function(String, String)) = Maybe::Nothing
  state page: Page = Page::Readme
  state showMobileNav : Bool = false

  fun setMicromark (m : Function(String, String)) {
    next { micromark: Maybe::Just(m) }
  }

  fun setPage (p : Page) {
    next { page: p }
  }
}