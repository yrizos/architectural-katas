# HTML

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

## Sections

- Use `<section>` for a heading and the content under it. Never use it as a styling hook.
- Content that only needs a box or a layout goes in a `<div>` with a class.
