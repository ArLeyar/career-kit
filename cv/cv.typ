// CV — Example · Theme: Ristretto
// To use: copy data.example.typ to data.typ, fill in your info, then:
//   typst compile cv.typ my-resume.pdf
#import "data.example.typ": *
#import "themes.typ": ristretto as theme
#import "template.typ": *

#show: doc => {
  cv-page-setup(theme)
  doc
}

#cv-header(personal, theme)
#cv-summary(summaries.default, theme)

#section("Experience", theme)

#experience-entry(
  experience.current, theme,
  bullet-config: (prefer-tags: ("systems", "ai"), max-bullets: 3),
)
#experience-entry(
  experience.company_a, theme,
  bullet-config: (prefer-tags: ("leadership", "architecture"), max-bullets: 3),
)
#experience-entry(
  experience.company_b, theme,
  bullet-config: (prefer-tags: ("architecture", "scale"), max-bullets: 3),
)
#experience-entry(
  experience.company_c, theme,
  bullet-config: (prefer-tags: ("crypto", "blockchain"), max-bullets: 2),
)
#experience-entry(
  experience.company_d, theme,
  bullet-config: (prefer-tags: ("scale", "architecture"), max-bullets: 2),
)

#cv-skills(skills, theme)

#cv-education(education, theme)
