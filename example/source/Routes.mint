routes {
  / {
    App.setPage(Page::Readme)
  }

  /api {
    App.setPage(Page::Readme)
  }

  /api/:entity (entity : String) {
    App.setPage(Page::API(entity))
  }

  /guides {
    App.setPage(Page::Readme)
  }

  /guides/:guide (guide : String) {
    App.setPage(Page::Guide(guide))
  }
}
