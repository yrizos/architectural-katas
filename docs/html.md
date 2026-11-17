# HTML

## Links

Links to external sites open in a new tab.

- Markdown links get `target="_blank" rel="noopener"` from the render hook in `layouts/_markup/render-link.html` when the destination starts with `http`.
- Links written by hand in templates carry `target="_blank" rel="noopener"` on the anchor.
