# HTML

## Page metadata

Every page sets a title and a description in its front matter.

- `baseof.html` renders them as `<title>` and `<meta name="description">`.
- Never hardcode either in a template.
- `baseof.html` renders `<link rel="canonical">` from `.Permalink` on every page. Never set a canonical by hand or in front matter, and never override `baseof.html` in a way that drops it.

## Links

Every external link opens in a new tab with `target="_blank" rel="noopener"`.

- An external link is one whose destination starts with `http://` or `https://`.
- Markdown links get both attributes from the render hook in `layouts/_markup/render-link.html`.
- Links written by hand in templates carry both attributes on the anchor.
- Never use `target="_blank"` without `rel="noopener"`.

## Icons

Each line icon is its own partial in `layouts/_partials/icons/`.

- Name a partial after what it draws, such as `calendar.html`. Never name it after the place that uses it.
- A partial holds one inline `<svg>` with `viewBox="0 0 24 24"`. Decorative icons also carry `aria-hidden="true"`.
- A partial sets no size or colour. CSS does that (see `css.md`).
- Include an icon with `{{ partial "icons/calendar.html" }}`.
- Every menu item must have a line icon. This is a hard rule. Set it with `icon` under `[menu.main.params]` in `hugo.toml`. The header fails the build when an item has none.

## Anchors

Every `h2` on every page has an `id` and an anchor link. This is a hard rule.

- Markdown headings get both from the render hook in `layouts/_markup/render-heading.html`.
- An `h2` written by hand in a template sets its own `id` and includes the link with `{{ partial "anchor.html" "the-id" }}`.
- Anchor ids are the lowercase heading text with hyphens between words.

## Sections

- Use `<section>` for a heading and the content under it.
- Content that only needs a box or a layout goes in a `<div>` with a class.
