# uc-slides-template

Starter repository for a presentation using the
[uc-slides](https://github.com/elinscott/uc-slides) Typst theme (University of
Canterbury "General" PowerPoint look). Click **Use this template** on GitHub
to start a new talk from it.

## Setup (once per machine)

The theme is distributed privately, not via Typst Universe. Install it once:

```sh
git clone git@github.com:elinscott/uc-slides.git
cd uc-slides && ./install.sh
```

This makes it available as `@local/uc-slides:0.1.0`, which `main.typ` imports.

## Writing the talk

```sh
typst watch main.typ     # live-rebuilds main.pdf as you edit
typst compile main.typ   # one-off build
```

`main.typ` demonstrates every slide type; delete what you don't need. Put
references in `references.bib` (citations appear as footnotes using the
included `nature-footnote.csl`). Replace `campus.jpg` with your own images.

For theme options and the full list of slide functions, see the
[uc-slides README](https://github.com/elinscott/uc-slides#readme).

**UC staff and students only.** The theme carries the UC logo, which must not
be redistributed outside the University.
