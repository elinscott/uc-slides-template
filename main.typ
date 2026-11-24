#import "@local/uc-slides:0.1.0": *

#show: uc-theme.with(
  // logo: true,             // small horizontal UC logo on content slides
  // slide-counter: false,   // slide number inside the chevron bar
  // heading-size: 40pt,     // the template's 55pt headings suit a few words per slide
  // text-size: 20pt,
  config-info(
    title: [Title of the talk],
    subtitle: [An optional subtitle],
    author: [Edward Linscott],
    institution: [University of Canterbury],
    date: datetime.today(),
  ),
  config-common(show-bibliography-as-footnote: true),
)

#set bibliography(title: none, style: "nature-footnote.csl")

#title-slide()

== Outline

#outline(title: none, depth: 1)

= Introduction

== A plain content slide

Level-two headings (`==`) start a new slide and become its heading. The
chevron bar along the bottom is drawn as a vector, so it stays crisp.

- Bulleted lists
- Nested items
  - as usual
- `*bold*` is *red emphasis*, as in Touying; use `#text(weight: "bold")[..]` for plain bold
- `#pause` works as usual

#pause

Text that appears on the second subslide.

== Two columns

#slide(composer: (1fr, 1fr))[
  === Left column

  Level-three headings are red subheadings inside a slide.

  $ E = m c^2 $
][
  === Right column

  #figure(
    rect(width: 80%, height: 4cm, fill: uc-colors.light-grey, stroke: none)[
      #align(center + horizon)[your figure here]
    ],
    caption: [Captions are set small and grey.],
  )
]

== Options

#slide(composer: 3)[
  #option[Option 1][
    Three or four columns with a red rule on the left, as in the template's
    "options" layouts. Use any number of columns.
  ]
][
  #option[Option 2][
    Each column is an `#option[title][body]` inside a multi-column slide.
  ]
][
  #option[Option 3][
    Citations appear as numbered footnotes at the bottom of the slide.@Linscott2023
  ]
]

#image-slide(image("campus.jpg"))[
  Photo on the right
][
  The signature layout of the template: a half-bleed photo with a heading
  and a short paragraph beside it.
]

#image-slide(image("campus.jpg"), side: left, variant: "red")[
  Photo on the left
][
  Pass `side: left` and `variant: "red"` for the mirrored, red version.
]

#stat-slide([75%], [of students agree])[
  A key statistic
][
  A very large figure on a red panel, with a label underneath.
]

#focus-slide[
  A focus slide puts one statement on a red background.
]

= Variants

== A red content slide

#slide(variant: "red")[
  Pass `variant: "red"` for the red version of the content slide.
]

#full-image-slide(image("campus.jpg"))

#matrix-slide(columns: 3, primary: uc-colors.light-grey.lighten(50%), secondary: white)[
  A matrix slide
][
  presents blocks side by side
][
  in a checkerboard
][
  with as many rows
][
  and columns
][
  as you need
]

== References

#bibliography("references.bib")

#end-slide[
  edward.linscott\@canterbury.ac.nz
]
