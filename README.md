<!-- markdownlint-disable-file MD033 MD041 -->

<p align="center"><img src="static/android-chrome-192x192.png" width="96" alt=""></p>

<h1 align="center">Architectural Katas</h1>

<p align="center">Practice system design on a brief for a system that does not exist yet.</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-CC%20BY--SA%204.0-lightgrey.svg" alt="CC BY-SA 4.0"></a>
  <a href="https://github.com/yrizos/architectural-katas/actions/workflows/deploy-site.yml"><img src="https://github.com/yrizos/architectural-katas/actions/workflows/deploy-site.yml/badge.svg" alt="Deploy site"></a>
  <a href="https://architectural-katas.yrizos.com/"><img src="https://img.shields.io/badge/site-architectural--katas.yrizos.com-blue" alt="Website"></a>
</p>

---

An architectural kata is a practice exercise in software design. A small team gets a short brief, decides which requirements matter most, and sketches an architecture that could serve it. Nobody writes code, and the design stays on paper or a whiteboard along with the reasons behind each choice.

Most engineers design a system from scratch only a handful of times in their career. A kata gives you that practice as often as you like, and nothing you try can break production.

[Ted Neward](https://www.architecturalkatas.com/) created architectural katas, and his site holds the rules and a large selection of briefs. The [Architecture Modernization Enabling Team](https://medium.com/nick-tune-tech-strategy-blog/architecture-modernization-enabling-teams-amet-23a7f867b284) at [Epignosis](https://www.epignosishq.com/) started running them so that teams get far more design practice than real projects offer.

## What the Site Covers

The [website](https://architectural-katas.yrizos.com/) follows one kata, a brief for a conference platform, from the first read to a design you can present. Its pages are:

- [What Is a Kata?](https://architectural-katas.yrizos.com/what-is-a-kata/) explains the format and shows the example brief with the gaps it leaves.
- [How Do You Work Through a Brief?](https://architectural-katas.yrizos.com/working-through-a-brief/) walks through the three phases of a kata and the ground rules that hold through each one.
- [What Happens in a Workshop?](https://architectural-katas.yrizos.com/workshop/) describes the one-hour session run at tech events.
- [Events](https://architectural-katas.yrizos.com/events/) lists the conferences where the workshop runs, such as FOSSCOMM 2026 and Open Conf 2026.
- [Which Tools Do You Need?](https://architectural-katas.yrizos.com/toolkit/) covers decision records, release timelines, and C4 diagrams, with printable templates.
- [How Do You Reach Us?](https://architectural-katas.yrizos.com/contact/) introduces the team behind the katas.

## Requirements

The site needs only Hugo to build. The other tools support the Git hooks, the linters, and the generated assets:

| Tool | Version | Used for |
| --- | --- | --- |
| [Hugo](https://gohugo.io/) | 0.169.0, the version the deploy pins | Building and serving the site |
| [Make](https://www.gnu.org/software/make/) | Any | Running the project commands |
| [pre-commit](https://pre-commit.com/) | 4 or later | Git hooks, `make fix`, and `make lint` |
| [Node.js](https://nodejs.org/) | A current LTS release | The markdownlint-cli2 and stylelint hooks, which run on the system Node (`language_version: system`) |
| [WeasyPrint](https://weasyprint.org/) | Any recent release | `make pdf`, which renders the toolkit templates to PDF |
| [ImageMagick](https://imagemagick.org/) | 7, which provides the `magick` command | `make icon`, which generates the favicon and app icons |

pre-commit sets up the remaining hooks in their own environments, so gitlint, checkmake, gitleaks, and the standard pre-commit hooks need no separate install.

On macOS, Homebrew installs everything in one step:

```sh
brew install hugo make pre-commit node weasyprint imagemagick
```

## Getting Started

Clone the repository, install the Git hooks, and start the local server:

```sh
git clone git@github.com:yrizos/architectural-katas.git
cd architectural-katas
make hooks-install
make run
```

Hugo serves the site at <http://localhost:1313/> and reloads it as you edit. Run `make help` at any time to list the available commands.

## Commands

| Command | What it does |
| --- | --- |
| `make help` | Lists the available commands |
| `make run` | Runs the site locally with `hugo server` |
| `make pdf` | Builds the ADR and timeline templates in `pdf/` into `static/toolkit/`, with the site URL from `hugo.toml` filled in |
| `make icon` | Generates the favicon, iOS, and Android icons in `static/` from `static/icon.png` |
| `make fix` | Fixes trailing whitespace, line endings, Markdown, and CSS |
| `make lint` | Checks for merge conflicts, invalid YAML and TOML, Makefile problems, and leaked secrets |
| `make hooks-install` | Installs the pre-commit and commit-msg Git hooks |
| `make hooks-uninstall` | Removes the Git hooks |

The commit-msg hook runs gitlint, which expects the conventional commit types listed in `.gitlint`.

## Deployment

Every push to `main` builds the site with `hugo --gc --minify` and publishes it to GitHub Pages through the [deploy workflow](.github/workflows/deploy-site.yml). You can also start a deploy by hand from the Actions tab.

The toolkit PDFs in `static/toolkit/` are committed to the repository, and the deploy does not rebuild them. Run `make pdf` and commit the result whenever you change a template in `pdf/`.

## Repository Layout

```text
.
├── assets/css/         # Stylesheets, one file per component
├── assets/images/      # Images processed by Hugo
├── content/            # Site pages and events
├── docs/               # Conventions for CSS, HTML, and site copy
├── layouts/            # Templates, partials, shortcodes, and icons
├── pdf/                # HTML sources for the toolkit PDFs
├── static/             # Fonts, icons, and the generated PDFs
├── .github/workflows/  # The deploy workflow
├── AGENTS.md           # Rules for AI agents working in this repository
├── hugo.toml           # Site configuration and main menu
├── LICENSE
├── Makefile            # Project commands
└── README.md
```

## License

The site content and source are shared under [CC BY-SA 4.0](LICENSE). You can reuse and adapt them, including commercially, as long as you give credit and share your changes under the same license.
