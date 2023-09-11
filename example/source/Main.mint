component Main {
  connect App exposing { micromark, setMicromark }

  state showMobileNav = false

  const ICON_SETS =
    [
      {"HeroIcons", "hero_icons"},
      {"HeroIconsOutline", "hero_icons_outline"},
      {"HeroIconsMini", "hero_icons_mini"}
    ]

  fun onMicromarkReady (micromark : Function(String, String)) {
    setMicromark(micromark)
  }

  fun isActive (href : String) {
    if Window.isActiveURL(href) {
      "active"
    } else {
      ""
    }
  }

  fun componentDidMount {
    `window.onMicromarkReady = #{onMicromarkReady}`

    ""
  }

  fun toggleMobileNav (e : Html.Event) {
    next { showMobileNav: !showMobileNav }
  }

  fun render : Html {
    if micromark == Maybe::Nothing {
      <></>
    } else {
      <>
        <div class="nav">
          <div class="nav__wrapper">
            <a
              class="nav__brand"
              href="/">

              <svg
                height="20"
                viewBox="0 0 767.169 165">

                <defs>
                  <linearGradient id="b">
                    <stop
                      offset="0"
                      stop-color="#3ac155"/>

                    <stop
                      offset="1"
                      stop-color="#0cb3ff"/>
                  </linearGradient>

                  <linearGradient id="a">
                    <stop
                      offset="0"
                      stop-color="#247e3d"/>

                    <stop
                      offset="1"
                      stop-color="#56cf86"/>
                  </linearGradient>

                  <linearGradient
                    gradientTransform="translate(5.657 -.005)"
                    gradientUnits="userSpaceOnUse"
                    id="d"
                    x1="-5.657"
                    x2="211.343"
                    xlink:href="#b"
                    y1="82.505"
                    y2="82.505"/>

                  <linearGradient
                    gradientTransform="scale(1 -1) rotate(47.012 284.656 22.691)"
                    gradientUnits="userSpaceOnUse"
                    id="c"
                    x1="-5.657"
                    x2="211.343"
                    xlink:href="#b"
                    y1="82.505"
                    y2="82.505"/>
                </defs>

                <path
                  d="M245.943 41.45c-24.16 5.78-44.026 6.067-61.218 3.597-10.998 13.44-17.726 26.944-23.33 40.224 23.39-6.552 46.394-15.233 65.388-26.583-20.51 15.128-44.225 25.725-68.123 33.277-8.739 21.96-15.512 43.564-34.771 60.285l-2.252 1.953c28.048-9.77 76.975-36.416 124.306-112.754z"
                  fill="url(#c)"/>

                <path
                  d="M30.552 33.567c-49.954 36.431-27.206 95.236-11.548 81.492 25.592-22.14 64.03-76.108 137.652-95.465-66.83 18.181-113.972 81.988-126.349 98.033-12.377 16.044 1.958 42.386 31.297 46.488 29.339 4.103 45.808-6.826 57.697-17.147l.004.002c38.478-33.408 23.43-90.436 97.695-139.7C94.163-17.025 39.84 26.794 30.552 33.568z"
                  fill="url(#d)"/>

                <path
                  color="#000"
                  d="M23.617 120.313l-.037.034c.01-.008.02-.021.03-.03.001-.002.005-.002.007-.004z"
                  font-family="sans-serif"
                  font-weight="400"
                  overflow="visible"
                  style="line-height:normal;font-variant-ligatures:normal;font-variant-position:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-alternates:normal;font-feature-settings:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;text-orientation:mixed;white-space:normal;shape-padding:0;isolation:auto;mix-blend-mode:normal;solid-color:#000;solid-opacity:1"/>

                <g
                  aria-label="Mint"
                  fill="#444"
                  font-family="Rounded Mplus 1c Bold"
                  font-size="217.105"
                  font-weight="700"
                  letter-spacing="0"
                  stroke-width="5.428"
                  style="line-height:1.25;-inkscape-font-specification:'open sans Bold'"
                  word-spacing="0">

                  <path
                    d="M317.347 162.829q-4.993 0-8.684-3.69-3.69-3.692-3.69-8.685V16.717q0-4.993 3.69-8.684 3.69-3.69 8.684-3.69h5.428q5.644 0 10.42 3.039 4.777 3.04 6.948 8.032l37.994 82.066q0 .217.217.217t.217-.217l37.993-82.066q2.171-4.993 6.948-8.032 4.776-3.04 10.42-3.04h6.297q4.993 0 8.684 3.69 3.69 3.692 3.69 8.685v133.737q0 4.993-3.69 8.684-3.69 3.691-8.684 3.691h-4.777q-4.993 0-8.684-3.69-3.69-3.692-3.69-8.685v-94.44q0-.218-.218-.218-.217 0-.217.217l-26.052 55.796q-2.389 4.994-7.382 8.25-4.776 3.04-10.204 3.04h-1.303q-5.427 0-10.42-3.04-4.777-3.256-7.165-8.25l-26.053-55.796q0-.217-.217-.217t-.217.217v94.441q0 4.993-3.69 8.684-3.692 3.691-8.685 3.691zM503.6 162.829q-4.994 0-8.685-3.69-3.69-3.692-3.69-8.685V62.309q0-4.993 3.69-8.684 3.691-3.69 8.685-3.69h5.644q4.994 0 8.685 3.69 3.69 3.69 3.69 8.684v88.145q0 4.993-3.69 8.684-3.691 3.691-8.685 3.691zm0-136.776q-4.994 0-8.685-3.691-3.69-3.69-3.69-8.684v-1.303q0-4.993 3.69-8.684Q498.606 0 503.6 0h5.644q4.994 0 8.685 3.69 3.69 3.692 3.69 8.685v1.303q0 4.993-3.69 8.684-3.691 3.69-8.685 3.69zM570.444 162.829q-4.993 0-8.684-3.69-3.69-3.692-3.69-8.685V62.309q0-4.993 3.69-8.684 3.691-3.69 8.684-3.69h2.823q5.21 0 8.684 3.69 3.69 3.474 3.908 8.684v1.52q0 .217.217.217t.434-.217q14.763-16.066 34.52-16.066 19.756 0 28.658 11.29 9.118 11.072 9.118 37.125v54.276q0 4.993-3.69 8.684-3.691 3.691-8.685 3.691h-3.69q-4.994 0-8.685-3.69-3.473-3.692-3.473-8.685V98.349q0-16.283-4.343-22.145-4.125-6.079-14.98-6.079-8.901 0-16.5 7.599-7.599 7.598-7.599 16.283v56.447q0 4.993-3.69 8.684-3.691 3.691-8.685 3.691zM688.577 75.336q-4.342 0-7.382-3.04-3.04-3.257-3.04-7.599 0-4.342 3.04-7.381 3.04-3.04 7.382-3.04h10.42q1.955 0 1.955-1.954v-26.92q0-4.994 3.473-8.685 3.691-3.69 8.685-3.69h4.342q4.993 0 8.684 3.69 3.69 3.69 3.69 8.684v26.921q0 1.954 1.955 1.954h24.75q4.342 0 7.381 3.04 3.257 3.04 3.257 7.381 0 4.342-3.257 7.6-3.04 3.039-7.381 3.039h-24.75q-1.954 0-1.954 1.736v43.856q0 14.111 3.04 18.236 3.039 4.125 12.591 4.125 5.21 0 7.816-.434 4.342-.434 7.599 1.954 3.256 2.388 3.256 6.513 0 4.777-3.256 8.685-3.04 3.69-7.599 4.125-9.552.868-14.329.868-21.059 0-29.526-8.901-8.467-9.119-8.467-32.349V77.072q0-1.736-1.954-1.736z"
                    style="-inkscape-font-specification:'Rounded Mplus 1c Bold, Bold'"/>

                </g>

              </svg>

            </a>

            <div class="nav__mobile-menu-toggle">
              <span>"Menu"</span>

              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24">

                <path d="M24 6h-24v-4h24v4zm0 4h-24v4h24v-4zm0 8h-24v4h24v-4z"/>

              </svg>
            </div>

            <a
              class="nav__item"
              href="/guides">

              <svg
                class="octicon octicon-book"
                viewBox="0 0 16 16"
                version="1.1"
                width="16"
                height="16"
                aria-hidden="true">

                <path
                  fill-rule="evenodd"
                  d="M3 5h4v1H3V5zm0 3h4V7H3v1zm0 2h4V9H3v1zm11-5h-4v1h4V5zm0 2h-4v1h4V7zm0 2h-4v1h4V9zm2-6v9c0 .55-.45 1-1 1H9.5l-1 1-1-1H2c-.55 0-1-.45-1-1V3c0-.55.45-1 1-1h5.5l1 1 1-1H15c.55 0 1 .45 1 1zm-8 .5L7.5 3H2v9h6V3.5zm7-.5H9.5l-.5.5V12h6V3z"/>

              </svg>

              <span>"Guides"</span>

            </a>

            <a
              class="nav__item"
              href="/api">

              <svg
                class="octicon octicon-repo"
                viewBox="0 0 12 16"
                version="1.1"
                width="12"
                height="16"
                aria-hidden="true">

                <path
                  fill-rule="evenodd"
                  d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/>

              </svg>

              <span>"API"</span>

            </a>

            <a
              class="nav__item"
              target="_blank"
              active="exact"
              href="https://github.com/farism/mint-hero-icons">

              <svg
                class="octicon octicon-mark-github"
                viewBox="0 0 16 16"
                version="1.1"
                width="16"
                height="16"
                aria-hidden="true">

                <path
                  fill-rule="evenodd"
                  d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"/>

              </svg>

              <span>"GitHub"</span>

            </a>
          </div>
        </div>

        <article>
          <div class="page">
            <div class="guide guide--wide">
              <div
                class="toc-mobile"
                onClick={toggleMobileNav}>

                "Pages"

                <svg
                  width="14"
                  class="octicon octicon-chevron-down"
                  viewBox="0 0 10 16"
                  version="1.1"
                  height="22"
                  aria-hidden="true">

                  <path
                    fill-rule="evenodd"
                    d="M5 11L0 6l1.5-1.5L5 8.25 8.5 4.5 10 6l-5 5z"/>

                </svg>

              </div>

              <div
                class={
                  "toc #{if showMobileNav {
                    "toc--open"
                  } else {
                    ""
                  }}"
                }
                onClick={toggleMobileNav}>

                <div class="toc__wrapper">
                  <div class="page__package">
                    <strong>"mint-hero-icons"</strong>
                    <p/>
                  </div>

                  <div class="toc__section">
                    "Basic information"
                  </div>

                  <div class="toc__pages">
                    <a
                      class="toc__page"
                      href="/readme">

                      <div>
                        <svg
                          class="octicon octicon-book"
                          viewBox="0 0 16 16"
                          version="1.1"
                          width="16"
                          height="16"
                          aria-hidden="true">

                          <path
                            fill-rule="evenodd"
                            d="M3 5h4v1H3V5zm0 3h4V7H3v1zm0 2h4V9H3v1zm11-5h-4v1h4V5zm0 2h-4v1h4V7zm0 2h-4v1h4V9zm2-6v9c0 .55-.45 1-1 1H9.5l-1 1-1-1H2c-.55 0-1-.45-1-1V3c0-.55.45-1 1-1h5.5l1 1 1-1H15c.55 0 1 .45 1 1zm-8 .5L7.5 3H2v9h6V3.5zm7-.5H9.5l-.5.5V12h6V3z"/>

                        </svg>

                        "README"
                      </div>

                    </a>

                    <a
                      class="toc__page"
                      href="https://github.com/farism/mint-hero-icons"
                      target="_blank">

                      <div>
                        <svg
                          class="octicon octicon-mark-github"
                          viewBox="0 0 16 16"
                          version="1.1"
                          width="16"
                          height="16"
                          aria-hidden="true">

                          <path
                            fill-rule="evenodd"
                            d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"/>

                        </svg>

                        "Source on GitHub"
                      </div>

                    </a>
                  </div>

                  <div class="toc__section">
                    "Icon Sets"
                  </div>

                  <div
                    class="toc__pages"
                    id="sidebar">

                    <div class="sidebar">
                      <div>
                        for set of ICON_SETS {
                          <div data-id="version-item">
                            <a
                              class={isActive(set[1])}
                              href="/#{set[1]}">

                              <{ set[0] }>

                            </a>
                          </div>
                        }
                      </div>
                    </div>

                  </div>
                </div>

              </div>

              <div class="guide-content">
                "content"
              </div>
            </div>
          </div>
        </article>
      </>
    }
  }
}
