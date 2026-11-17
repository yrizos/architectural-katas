# HTML

## Links

Every external link opens in a new tab with `target="_blank" rel="noopener"`.

- An external link is one whose destination starts with `http://` or `https://`.
- Markdown links get both attributes from the render hook in `layouts/_markup/render-link.html`.
- Links written by hand in templates carry both attributes on the anchor.
- Never use `target="_blank"` without `rel="noopener"`.
