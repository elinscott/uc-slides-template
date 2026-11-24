# uc-slides-template

Starter repository for a presentation using the **uc-slides** Typst theme,
which reproduces the University of Canterbury "General" PowerPoint look.
Click **Use this template** on GitHub to start a new talk from it.

## Getting the theme

The theme itself (`uc-slides`) is **not** in this repository and is not on
Typst Universe: it carries the UC logo, which is a registered trademark, so
it is shared privately with UC staff and students only. If you are at UC,
email me at edward.linscott@canterbury.ac.nz and I'll give you access to the
repository. Then, once per machine:

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
references in `references.bib`: citing with `@Key` adds a short reference at
the foot of that slide, and the References slide lists everything in full
(both citation styles come with the theme). `photo.jpg` is a placeholder;
replace it with your own image.

For theme options and the full list of slide functions, see the uc-slides
README once you have access.
