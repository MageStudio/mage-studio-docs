# ARCHITECTURE.md

## Bird's-eye view

A static documentation site for the Mage engine and the Mage Studio editor. VitePress turns the
Markdown in `docs/` into HTML at build time; there is no server and no runtime backend. The only
logic is site configuration and a light theme extension.

## Code map

- `docs/.vitepress/config.mts`: the single site config (title, `head` tags, nav, sidebar, search, footer).
- `docs/.vitepress/theme/`: `index.ts` re-exports the default theme; `custom.css` holds style overrides.
- `docs/.vitepress/cache/`: Vite dependency cache. Generated; do not edit or commit changes.
- `docs/index.md`: home page (hero and feature cards). `docs/faq.md`, `docs/404.md`: standalone pages.
- `docs/engine/`: engine docs (`getting-started/`, `advanced/`, `utilities/`, `changelog.md`).
- `docs/editor/`: editor docs (`getting-started/`, `scene/`, `inspector/`, `assets/`, `scripting/`,
  `build-and-deploy/`, `changelog.md`).
- `docs/public/`: files served at the site root (favicons, icons, `site.webmanifest`, and editor screenshots under `img/editor/`). `docs/img/`, `docs/fonts/`: images and fonts.
- `examples/`: standalone sample projects (`hello-cube`, `physics`, ...). `favicons/docs/`: source icon set.

## Data and control flow

`yarn build` runs `vitepress build docs`: VitePress reads `config.mts`, renders every Markdown file
under `docs/` to a page, and writes the site to `docs/.vitepress/dist/`. A page appears in the
URL space by existing as a file (`docs/engine/advanced/physics.md` is `/engine/advanced/physics`).
It appears in navigation only if listed in `themeConfig.sidebar` (keyed by `/engine/` or `/editor/`)
or `themeConfig.nav` in `config.mts`.

## Boundaries and invariants

- Every page under `/engine/` and `/editor/` needs a sidebar entry whose `link` matches its path without `.md`.
- Existing URLs stay stable.
- The build does not validate `themeConfig.sidebar` or `nav` links (VitePress checks dead links in Markdown
  content only), so a typo there passes `yarn build`. Check each `link` against a real file under `docs/`.
- Nothing is generated from the engine or editor source: docs are written by hand.
- `dist/` is never committed.

## Cross-repo context

This site documents the Mage engine (npm package `mage-engine`) and the Mage Studio editor. Both
are developed separately; this repo only describes them. The site is published as static files.
