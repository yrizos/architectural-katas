# CSS

## Project conventions

### File layout

CSS lives in `assets/css/`. `layouts/baseof.html` combines the files into one minified, fingerprinted stylesheet with `resources.Concat`.

- `variables.css` holds colour and spacing custom properties.
- `main.css` holds the reset, `html`, `body` and `main` rules.
- `typography.css` holds the typography rules that apply to the whole site, including their custom properties.
- Typography that belongs to one component goes in that component's file.
- `header.css` holds the header partial's styles.
- `footer.css` holds the footer partial's styles.
- `brief.css` holds the `.brief` block's styles, including its icons.
- `callout.css` holds the `.callout` block's styles.
- `people.css` holds the `.people` and `.person` blocks' styles.
- `phases.css` holds the `.phases` block's styles, including its icons.
- `handoff.css` holds the `.handoff` block's styles.
- `questions.css` holds the `.questions` block's styles.
- `terms.css` holds the `.terms` block's styles.
- `page-link.css` holds the `.page-link` button's styles, including its icon.
- `events.css` holds the `.events` list and the `.event-session` and `.event-facts` blocks' styles, including their icons.
- `hero.css` holds the homepage `.hero` block's styles.
- `comparison.css` holds the `.comparison` table's styles.
- `not-found.css` holds the 404 page's `.not-found` block's styles.

### Load order

The files load in this order: `variables.css`, `main.css`, `typography.css`, `callout.css`, `people.css`, `header.css`, `footer.css`, `brief.css`, `phases.css`, `handoff.css`, `questions.css`, `terms.css`, `page-link.css`, `events.css`, `hero.css`, `comparison.css`, `not-found.css`. A later file overrides an earlier one when selectors have equal specificity.

### Component files

Each component gets its own CSS file in `assets/css/`, named after it. For example, `header.css` styles `layouts/_partials/header.html`. New component files are added to the stylesheet list in `baseof.html` after `typography.css`.

### Typography

All font sizes must be relative to `--font-size-base`. Never hardcode a pixel size outside that variable.

Heading sizes are written as `calc(var(--font-size-base) * n / d)`.

| Element | Size |
| --- | --- |
| `h1` and site title | `--font-size-title`, which is base × 12 / 7 |
| `h2` | base × 10 / 7 |
| `h3` | base × 8 / 7 |
| `h4` | base |

The font is Inter, served locally from `static/fonts/inter.woff2` and declared in `typography.css`. `--font-sans` is the fallback stack.

### Page layout

- `--content-width` is the width of the content column.
- `--gap-page` is the side padding that centres the content at `--content-width`. It never drops below `--gap-inline`.
- `header`, `footer` and `main` use `padding: var(--gap-base) var(--gap-page)`. Their backgrounds stay full width.
- `body` is a size container (`container-type: inline-size`) and `--gap-page` uses `100cqw`. That makes `--gap-page` resolve to the page width inside any element.
- The page `h1` has `margin-top: 0`, so the gap above it is `main`'s top padding.

### Icons

Icons are inline SVG partials (see `html.md`). CSS gives them their size, colour and stroke.

- The size is `1.25em`, so it follows the font size.
- The stroke is `--color-accent`, 1.5 wide, with round caps and joins and no fill.
- `margin-top: calc((1lh - 1.25em) / 2)` centres the icon on the first line of the text beside it.

### Custom properties

- Colours and spacing are defined in `variables.css`.
- Font properties are defined in `typography.css`.
- Rules reference these properties instead of repeating literal values.

## Best practices

- Prefer custom properties over repeated literal values.
- Font sizes and icon sizes are relative to `--font-size-base`, so they change as the font gets bigger. Never hardcode them.
- Gaps are relative to `--gap-base`. Never hardcode them.
- The `cqw` and `lh` units need a recent browser.
- Keep selectors short. Use element and class selectors and avoid `!important`.
- Keep one concern per file.
- Keep text contrast at WCAG AA or better.
- Never remove focus outlines without providing a visible replacement.
