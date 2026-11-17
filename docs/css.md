# CSS

## Project conventions

### File layout

CSS lives in `assets/css/` and is loaded through Hugo's `resources.Get` in `layouts/baseof.html`.

- `variables.css` holds colour and spacing custom properties.
- `main.css` holds the reset, `html`, `body` and `main` rules.
- `typography.css` holds all font families, sizes, weights and line heights, including their custom properties.
- `header.css` holds the header partial's styles.

### Load order

The files load in this order: `variables.css`, `main.css`, `typography.css`, `header.css`. A later file overrides an earlier one when selectors have equal specificity.

### Component files

Each component or partial gets its own CSS file in `assets/css/`, named after it. For example, `header.css` styles `layouts/_partials/header.html`. New component files are linked in `baseof.html` after `typography.css`.

### Typography

All font sizes must be relative to `--font-size-base`. Never hardcode a pixel size outside that variable.

Heading sizes are written as `calc(var(--font-size-base) * n / d)`.

| Element | Size |
| --- | --- |
| `h1` and site title | `--font-size-title`, which is base × 12 / 7 |
| `h2` | base × 10 / 7 |
| `h3` | base × 8 / 7 |
| `h4` | base |

The font is Inter, loaded from Google Fonts in `baseof.html`. `--font-sans` is the fallback stack.

### Custom properties

- Colours and spacing are defined in `variables.css`.
- Font properties are defined in `typography.css`.
- Rules reference these properties instead of repeating literal values.

## Best practices

- Prefer custom properties over repeated literal values.
- Prefer relative units for type and spacing.
- Keep selectors short. Use element and class selectors and avoid `!important`.
- Keep one concern per file.
- Keep text contrast at WCAG AA or better.
- Never remove focus outlines without providing a visible replacement.
