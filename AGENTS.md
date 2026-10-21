# AGENTS.md

## What this repo is

Public product documentation for the Mage engine (npm package `mage-engine`) and the Mage Studio
editor, built as a static [VitePress](https://vitepress.dev) site. Content is Markdown under `docs/`.
There is no application code and no test suite.

## Setup, test, lint, build

- Runtime: Node 22 (the version CI uses). Package manager: yarn.
- Setup: `yarn install --frozen-lockfile --cache-folder /tmp/yarn-cache-$(basename $PWD)`
- Dev server: `yarn dev` (runs `vitepress dev docs`)
- Build: `yarn build` (runs `vitepress build docs`; output goes to `docs/.vitepress/dist/`)
- Preview a build: `yarn start` (serves on port 3001)
- Test: none. There is no test suite.
- Lint: none. There is no lint script.
- Verification is a clean `yarn build` plus reading your diff. CI runs the same install and build
  (`.github/workflows/build.yml`).

## Rules

- This repo is public product documentation. Write for readers of the engine and the editor, and
  put nothing private in it: no credentials, internal URLs or unreleased plans.
- Use yarn, not npm. A stray `package-lock.json` is tracked; do not update or delete it, and do not
  generate lockfile changes. Keep `yarn.lock` in sync only when a dependency really changes.
- There is no test suite: never claim tests passed. Say that verification was `yarn build`.
- Do not commit build output (`dist/`). `docs/.vitepress/cache` is not gitignored and some of its
  files are tracked; do not commit changes under it. Discard them after a build or dev run.
- `.DS_Store` files are tracked; leave them alone.
- A new page appears in navigation once it is added to the sidebar in `docs/.vitepress/config.mts`
  (see `ARCHITECTURE.md`). Add the file and the sidebar entry in the same change.
- Internal links are root-relative without the `.md` extension (for example
  `/engine/advanced/physics`). Do not break existing URLs when renaming or moving pages.
- Keep documented behaviour accurate for the current engine and editor releases. When adding a
  release note, edit the matching changelog page (`docs/engine/changelog.md` or
  `docs/editor/changelog.md`).

## Conventions

- Pages are Markdown with VitePress features (containers such as `::: tip` and `::: warning`,
  frontmatter on the home page).
- Engine pages live under `docs/engine/`: `getting-started/` is a numbered tutorial, `advanced/`
  holds reference pages by topic, `utilities/` holds helpers. Editor pages live under `docs/editor/`
  grouped by topic (`getting-started/`, `scene/`, `inspector/`, `assets/`, `scripting/`,
  `build-and-deploy/`).
- File names are lowercase (except `README.md`); some use underscores (`state_machines.md`) and some hyphens
  (`text-scripts.md`). Follow the neighbouring files in the same folder.
- Site title, nav, sidebar, search (local provider) and head tags are all set in
  `docs/.vitepress/config.mts`. The theme extends the default VitePress theme
  (`docs/.vitepress/theme/index.ts`) with `custom.css`.
- Static assets: `docs/public/` is served from the site root (icons, manifest, `img/editor/` screenshots); `docs/img/` and
  `docs/fonts/` hold images and fonts.
- The config file uses TypeScript, double quotes and trailing commas.

## Where to look next

Read `ARCHITECTURE.md` for the layout of the site and how pages reach the nav and sidebar.
