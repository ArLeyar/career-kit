// CV Template — Theme-aware rendering engine
// All functions accept a `theme` dict from themes.typ
// ATS-friendly: single column, no images, all text selectable

// ---------- Page Setup ----------

#let cv-page-setup(theme) = {
  set page(
    paper: "us-letter",
    margin: (x: 0.55in, top: 0.35in, bottom: 0.3in),
    fill: theme.page-bg,
  )
  set text(
    font: theme.font-body,
    size: 9.5pt,
    fill: theme.text,
  )
  set par(leading: 0.45em, justify: false)
}

// ---------- Section Heading ----------

#let section(title, theme) = {
  v(6pt)
  block[
    #text(
      font: theme.font-display,
      size: 11pt,
      weight: "bold",
      fill: theme.primary,
      tracking: 2pt,
      upper(title),
    )
    #if theme.section-line {
      v(-3pt)
      line(length: 100%, stroke: 1.2pt + theme.primary)
    } else {
      v(1pt)
    }
  ]
  v(3pt)
}

// ---------- Header ----------

#let cv-header(personal, theme) = {
  if theme.has-header-bar {
    // Dark bar header
    block(
      width: 100%,
      fill: theme.bg,
      inset: (x: 16pt, y: 12pt),
      radius: 2pt,
    )[
      #align(center)[
        #text(
          font: theme.font-name,
          size: 22pt,
          weight: "bold",
          fill: theme.fg,
          tracking: theme.name-tracking,
          upper(personal.name),
        )
        #v(-3pt)
        #text(size: 10.5pt, fill: theme.primary, weight: "medium", font: theme.font-body)[
          #personal.title #text(fill: theme.muted)[ | ] #personal.tagline
        ]
        #v(-1pt)
        #text(size: 8.5pt, fill: theme.muted, font: theme.font-mono)[
          #personal.location #h(8pt) · #h(8pt)
          #personal.email #h(8pt) · #h(8pt)
          #personal.linkedin
        ]
      ]
    ]
  } else {
    // Clean header — no bar, just typography
    align(center)[
      #text(
        font: theme.font-name,
        size: 24pt,
        weight: "bold",
        fill: theme.text,
        tracking: theme.name-tracking,
        upper(personal.name),
      )
      #v(-2pt)
      #text(size: 10.5pt, fill: theme.primary, weight: "medium", font: theme.font-body)[
        #personal.title #text(fill: theme.muted)[ | ] #personal.tagline
      ]
      #v(-1pt)
      #text(size: 8.5pt, fill: theme.muted, font: theme.font-mono)[
        #personal.location #h(8pt) · #h(8pt)
        #personal.email #h(8pt) · #h(8pt)
        #personal.linkedin
      ]
    ]
  }
  v(2pt)
}

// ---------- Summary ----------

#let cv-summary(summary-text, theme) = {
  section("Summary", theme)
  text(size: 9pt, weight: "medium", fill: theme.text, summary-text)
}

// ---------- Tag-based Bullet Filtering ----------

#let filter-bullets(bullets, prefer-tags, max-count) = {
  let scored = bullets.map(b => {
    let score = b.tags.filter(t => prefer-tags.contains(t)).len()
    (bullet: b, score: score)
  })
  let sorted = scored.sorted(key: item => -item.score)
  let result = sorted.slice(0, calc.min(max-count, sorted.len()))
  result.map(item => item.bullet)
}

// ---------- Experience Entry ----------

#let experience-entry(entry, theme, bullet-config: none) = {
  // Title line
  grid(
    columns: (1fr, auto),
    align: (left, right),
    [
      #text(weight: "bold", size: 9.5pt, fill: theme.text)[#entry.title]
      #text(size: 9.5pt, fill: theme.muted)[ — ]
      #text(size: 9.5pt, fill: theme.text)[#entry.company]
    ],
    text(font: theme.font-mono, size: 8.5pt, fill: theme.secondary, weight: "medium", entry.period),
  )

  // Subtitle
  if entry.subtitle != none {
    text(size: 8.5pt, fill: theme.muted, style: "italic", entry.subtitle)
  }

  v(1.5pt)

  // Bullets
  let bullets = if bullet-config != none {
    let prefer = bullet-config.at("prefer-tags", default: ())
    let max-b = bullet-config.at("max-bullets", default: 3)
    filter-bullets(entry.bullets, prefer, max-b)
  } else {
    entry.bullets.slice(0, calc.min(3, entry.bullets.len()))
  }

  for b in bullets {
    block(inset: (left: 10pt))[
      #text(size: 9pt)[#text(fill: theme.tertiary, font: theme.font-mono, size: 8pt)[#theme.bullet-char] #h(2pt) #b.text]
    ]
  }

  // Tech stack
  text(font: theme.font-mono, size: 7.5pt, fill: theme.muted)[
    #text(fill: theme.tech, weight: "bold")[stack] #h(4pt) #entry.tech
  ]
  v(3pt)
}

// ---------- Skills ----------

#let cv-skills(skills-data, theme) = {
  section("Skills", theme)

  let labels = (
    primary: "Core",
    secondary: "Also",
  )

  for cat in skills-data.keys() {
    let items = skills-data.at(cat)
    let formatted = items.join(", ")
    text(size: 9pt)[
      #text(font: theme.font-mono, size: 8pt, fill: theme.tech, weight: "bold")[#labels.at(cat, default: cat)]
      #text(fill: theme.muted)[ : ]
      #formatted
    ]
    linebreak()
  }
}

// ---------- Education ----------

#let cv-education(edu, theme) = {
  section("Education", theme)
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(size: 9pt)[*#edu.university* — #edu.degree],
    text(font: theme.font-mono, size: 8.5pt, fill: theme.secondary, weight: "medium", edu.period),
  )
}
