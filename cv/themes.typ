// CV Themes — Visual identities for career-kit
// Each theme: colors + fonts + layout flags
// Usage: #import "themes.typ": monokai as theme

// ═══════════════════════════════════════════
// 1. MONOKAI — Code editor aesthetic
// ═══════════════════════════════════════════

#let monokai = (
  name: "monokai",
  bg: rgb("#2d2a2e"),          // actual Monokai Pro bg (warm gray)
  fg: rgb("#fcfcfa"),
  text: rgb("#2d2a2e"),
  primary: rgb("#ab9df2"),      // purple — structure
  secondary: rgb("#ff6188"),    // pink — temporal
  tertiary: rgb("#a9dc76"),     // green — action
  tech: rgb("#fc9867"),         // orange — technical
  muted: rgb("#727072"),
  page-bg: rgb("#ffffff"),
  font-name: ("Optima", "Gill Sans", "Avenir Next"),
  font-display: ("JetBrains Mono", "Menlo", "PT Mono"),
  font-body: ("Avenir Next", "Helvetica Neue"),
  font-mono: ("JetBrains Mono", "Menlo", "PT Mono"),
  has-header-bar: true,
  section-line: true,
  name-tracking: 3pt,
  bullet-char: "▸",
)

// ═══════════════════════════════════════════
// 2. WERMA — Fierce Protector
// Cinnabar red + thangka gold. Terminal × ritual.
// ═══════════════════════════════════════════

#let werma = (
  name: "werma",
  bg: rgb("#1c1917"),          // dark stone (not pure black)
  fg: rgb("#e7e5e4"),
  text: rgb("#1c1917"),
  primary: rgb("#dc2626"),      // cinnabar red — fire
  secondary: rgb("#d97706"),    // burnished gold — temporal
  tertiary: rgb("#dc2626"),     // red — action
  tech: rgb("#d97706"),         // gold — technical
  muted: rgb("#78716c"),
  page-bg: rgb("#ffffff"),
  font-name: ("Optima", "Gill Sans", "Avenir Next"),
  font-display: ("JetBrains Mono", "Menlo", "PT Mono"),
  font-body: ("Avenir Next", "Helvetica Neue"),
  font-mono: ("JetBrains Mono", "Menlo", "PT Mono"),
  has-header-bar: true,
  section-line: true,
  name-tracking: 3pt,
  bullet-char: "◆",
)

// ═══════════════════════════════════════════
// 3. RIGPA — Luminous Awareness
// Lapis blue + gold on warm white. Spacious, editorial.
// ═══════════════════════════════════════════

#let rigpa = (
  name: "rigpa",
  bg: rgb("#faf9f7"),           // warm parchment (no dark bar)
  fg: rgb("#1c1917"),           // dark text (no dark bar)
  text: rgb("#1c1917"),
  primary: rgb("#1e40af"),      // lapis lazuli — deep blue
  secondary: rgb("#b45309"),    // gold leaf — temporal
  tertiary: rgb("#1e40af"),     // lapis — action
  tech: rgb("#b45309"),         // gold — technical
  muted: rgb("#a8a29e"),
  page-bg: rgb("#faf9f7"),      // warm white page
  font-name: ("Crimson Pro", "Georgia", "Times New Roman"),
  font-display: ("Crimson Pro", "Georgia", "Times New Roman"),
  font-body: ("Avenir Next", "Helvetica Neue"),
  font-mono: ("JetBrains Mono", "Menlo", "PT Mono"),
  has-header-bar: false,        // no bar — just name on white
  section-line: false,          // no lines — spacing only
  name-tracking: 4pt,
  bullet-char: "–",             // em dash — minimal
)

// ═══════════════════════════════════════════
// 4. RISTRETTO — Warm Earth
// Amber + coral. Bali coffee shop warmth.
// ═══════════════════════════════════════════

#let ristretto = (
  name: "ristretto",
  bg: rgb("#2c2524"),          // Monokai Pro Ristretto filter bg
  fg: rgb("#e8e0d4"),
  text: rgb("#2c2520"),
  primary: rgb("#d19a66"),      // amber — warm structure
  secondary: rgb("#e06c75"),    // soft coral — temporal
  tertiary: rgb("#d19a66"),     // amber — action
  tech: rgb("#e06c75"),         // coral — technical
  muted: rgb("#7a7068"),
  page-bg: rgb("#ffffff"),
  font-name: ("Optima", "Gill Sans", "Avenir Next"),
  font-display: ("JetBrains Mono", "Menlo", "PT Mono"),
  font-body: ("Avenir Next", "Helvetica Neue"),
  font-mono: ("JetBrains Mono", "Menlo", "PT Mono"),
  has-header-bar: true,
  section-line: true,
  name-tracking: 3pt,
  bullet-char: "▹",
)

// ═══════════════════════════════════════════
// 5. BARDO — Between Worlds
// Indigo + phosphor green. Void header, liminal.
// ═══════════════════════════════════════════

#let bardo = (
  name: "bardo",
  bg: rgb("#1e1e2e"),           // deep twilight (not void black)
  fg: rgb("#e4e4e7"),
  text: rgb("#18181b"),
  primary: rgb("#818cf8"),      // electric indigo — visions
  secondary: rgb("#818cf8"),    // indigo — temporal
  tertiary: rgb("#4ade80"),     // phosphor green — life
  tech: rgb("#818cf8"),         // indigo — technical
  muted: rgb("#71717a"),
  page-bg: rgb("#ffffff"),
  font-name: ("Optima", "Gill Sans", "Avenir Next"),
  font-display: ("JetBrains Mono", "Menlo", "PT Mono"),
  font-body: ("Avenir Next", "Helvetica Neue"),
  font-mono: ("JetBrains Mono", "Menlo", "PT Mono"),
  has-header-bar: true,
  section-line: true,
  name-tracking: 3pt,
  bullet-char: "›",
)

// ═══════════════════════════════════════════
// 6. KA DAG — Primordial Purity
// Single teal accent. Pure white. Radical minimalism.
// ═══════════════════════════════════════════

#let kadag = (
  name: "kadag",
  bg: rgb("#ffffff"),           // no dark bar
  fg: rgb("#0a0a0a"),           // dark text (no dark bar)
  text: rgb("#0a0a0a"),
  primary: rgb("#0d9488"),      // deep teal — one color
  secondary: rgb("#0d9488"),    // teal — same
  tertiary: rgb("#0d9488"),     // teal — same
  tech: rgb("#737373"),         // gray — muted tech
  muted: rgb("#737373"),
  page-bg: rgb("#ffffff"),
  font-name: ("Optima", "Gill Sans", "Avenir Next"),
  font-display: ("IBM Plex Mono", "JetBrains Mono", "Menlo"),
  font-body: ("IBM Plex Mono", "JetBrains Mono", "Menlo"),
  font-mono: ("IBM Plex Mono", "JetBrains Mono", "Menlo"),
  has-header-bar: false,        // no bar — radical simplicity
  section-line: false,          // no lines
  name-tracking: 5pt,           // wide tracking — monastic
  bullet-char: "·",             // minimal dot
)
