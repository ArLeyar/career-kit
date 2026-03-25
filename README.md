# career-kit

Career toolkit for software engineers: Typst CV generator with themes + LinkedIn optimization guides + job search strategies.

Built by an engineer who went through the process of rebuilding their entire professional presence from scratch. Everything here is battle-tested.

## What's Inside

### CV Generator (`cv/`)

A modular, ATS-friendly resume system built with [Typst](https://typst.app/).

- **6 visual themes** (Monokai, Werma, Rigpa, Ristretto, Bardo, Kadag)
- **Tag-based bullet selection** — write all your bullets once, select per role
- **Multiple summary variants** — swap summaries for different job types
- **Role-specific CV variants** — same data, different emphasis
- **ATS-friendly** — single column, all text selectable, no images

**Quick start:**

```bash
# Install Typst: https://github.com/typst/typst
# Copy example data
cp cv/data.example.typ cv/data.typ

# Edit cv/data.typ with your information

# Generate PDF
typst compile cv/cv.typ my-resume.pdf
```

**Themes:**

| Theme | Style | Best for |
|-------|-------|----------|
| Ristretto | Warm amber + coral on dark | Creative/startup roles |
| Monokai | Code editor aesthetic | Developer roles |
| Rigpa | Lapis + gold, editorial | Senior/executive roles |
| Werma | Cinnabar red + gold | Bold/leadership roles |
| Bardo | Indigo + phosphor green | Tech/futuristic roles |
| Kadag | Single teal, radical minimal | Minimalist preference |

**Creating role-specific variants:**

```typst
// crypto-exchange.typ
#import "data.typ": *
#import "themes.typ": ristretto as theme
#import "template.typ": *

// Use crypto-specific summary
#cv-summary(summaries.crypto, theme)

// Emphasize crypto/trading bullets
#experience-entry(
  experience.company_a, theme,
  bullet-config: (prefer-tags: ("crypto", "trading"), max-bullets: 3),
)
```

### LinkedIn Guides (`guides/`)

Comprehensive, research-backed guides for LinkedIn optimization:

| Guide | What's Inside |
|-------|--------------|
| [Optimization Guide](guides/linkedin-optimization-guide.md) | Complete guide: headline, summary, experience, skills, algorithm, ATS, engagement (18 sections) |
| [Algorithm & SEO](guides/linkedin-algorithm-seo.md) | How LinkedIn ranks profiles, keyword strategy, SSI score |
| [Headlines](guides/linkedin-headlines.md) | Headline formula, character limits, what to include/exclude |
| [Summary](guides/linkedin-summary.md) | About section structure, hook patterns, above-the-fold |
| [Job Titles](guides/linkedin-job-titles.md) | Recruiter search terms, "Backend" vs "Back End", ATS matching |
| [AI Positioning](guides/linkedin-ai-positioning.md) | AI Engineer positioning for 2026, trending terms |
| [Honesty & Authenticity](guides/honesty-authenticity.md) | Philosophy of truthful self-presentation (Dzogchen, Buddhism, Stoicism, psychology) |

### Banner Generator (`tools/`)

LinkedIn banner HTML template in Ristretto theme. Open in browser, screenshot at 1584x396px.

```bash
open tools/banner.html
# Customize: edit keywords, tagline, email in the HTML
# Screenshot the browser window for your LinkedIn banner
```

## Key Concepts

### Honesty Framework

Four levels of self-presentation:

| Level | Example | Verdict |
|-------|---------|---------|
| **Fabrication** | Inventing experience you don't have | Never |
| **Embellishment** | "Led team of 10" (actually participated) | Never |
| **Strategic silence** | Not mentioning a gap | Acceptable |
| **Strategic emphasis** | Highlighting strengths first | This is the skill |

### ATS Keywords

Your profile and CV need these keywords naturally distributed:

```
Primary: Go, Rust, Distributed Systems, Microservices, Kafka, PostgreSQL, Kubernetes
Secondary: gRPC, REST APIs, Redis, Docker, AWS, CI/CD, Prometheus, Grafana
Trending: AI Agents, Claude Code, Multi-Agent Orchestration
```

Adjust to your stack. The principle: repeat target keywords 3-5 times across different sections (headline, summary, experience, skills).

### Resume vs LinkedIn

| Element | LinkedIn | PDF Resume |
|---------|----------|-----------|
| Experience entries | All (including freelance) | Only top 5-6 companies |
| Skills | 30-50 for ATS coverage | Top 10-15 relevant |
| Summary | 1800-2200 chars | 2-3 sentences |
| Metrics | Everything you have | Only impressive ones |

## Philosophy

> "The question is not whether to optimize your profile, but whether each line passes the test: can you explain it instantly, without pause, to anyone who asks?"
>
> Inspired by Marcus Aurelius, Buddhist Right Speech, and modern P-O fit research showing authentic candidates get better offers.

## Contributing

PRs welcome. If you've found something that works in your job search, share it.

## License

Code (CV system, tools): [MIT](LICENSE)
Guides and research: [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)
