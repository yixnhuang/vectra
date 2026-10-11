# Vectra

An opinionated, open-source LaTeX CV and résumé system for research,
academia, and professional applications. Vectra combines a polished fixed design,
modular content files, extensive documentation, reproducible examples, and
print-friendly PDF output.

[![License](https://img.shields.io/badge/License-LPPL_1.3c-blue.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-success.svg)](#project-status)
[![LaTeX](https://img.shields.io/badge/LaTeX-CV%20Template-informational.svg)](#quick-start)
[![Compiler](https://img.shields.io/badge/Compiler-pdfLaTeX-orange.svg)](#requirements)
[![Overleaf](https://img.shields.io/badge/Overleaf-Compatible-47A141.svg)](#overleaf)

## Overview

**Vectra** stands for **Versatile Experience and Career Template for Research
and Academia**.

Vectra is built for users who want a polished academic CV or research-oriented
resume without spending time adjusting LaTeX formatting.

It is suitable for:

- Academic CVs
- Research resumes
- Graduate school applications
- Fellowship applications
- Research assistant applications
- Internship applications
- Personal academic websites
- Professional self-presentation

The template is designed around a modern academic CV layout:

- Single-column body
- Adaptive right-aligned metadata for dates, terms, and locations
- Clean section titles with subtle rules
- Compact but readable spacing
- Black-and-white print-friendly style
- Machine-readable PDF output
- Minimal visual distractions
- No icon dependency in the default style

## Preview

The preview below shows selected pages from the academic CV example generated
with Vectra.

<p align="center">
  <img src="https://yixuanhuang.com/assets/projects/vectra/vectra-academic-cv-example-page-1.png" alt="Vectra academic CV example page 1" width="45%">
  <img src="https://yixuanhuang.com/assets/projects/vectra/vectra-academic-cv-example-page-2.png" alt="Vectra academic CV example page 2" width="45%">
</p>

<p align="center">
  <img src="https://yixuanhuang.com/assets/projects/vectra/vectra-academic-cv-example-page-3.png" alt="Vectra academic CV example page 3" width="45%">
</p>

Both examples describe **Jordan Avery**, who does not exist. Every publication,
talk, award and appointment in them is invented, and exists only to show the
layout at a realistic density. Replace all of it before you compile anything you
intend to send.

## Examples

Example source files are available in:

- [`examples/minimal/`](./examples/minimal/)
- [`examples/academic-cv/`](./examples/academic-cv/)

Compiled example PDFs are available here:

- [Minimal example PDF](https://yixuanhuang.com/assets/projects/vectra/vectra-minimal-example.pdf)
- [Academic CV example PDF](https://yixuanhuang.com/assets/projects/vectra/vectra-academic-cv-example.pdf)

The academic CV example demonstrates:

- Publications with groups, notes, indexed labels, locations, and inline links
- Talks with indexed labels and right-aligned dates
- Media entries for interviews and press coverage
- Teaching entries grouped by role
- Adaptive right-side metadata columns
- Customizable header links and constrained header width

## Usage and Generated Documents

Vectra is open-source software distributed under the
[LaTeX Project Public License 1.3c or later](LICENSE).

You may use and modify the template for your own CV or resume. Documents
generated with Vectra belong to their authors and do not need to display a
Vectra notice, citation, watermark, or license merely because the template was
used to produce them.

Modified template versions must comply with the LPPL, identify their changes,
and avoid implying that they are an official Vectra release. See the
[plain-language license guide](USAGE_POLICY.md) for details.

## Features

- Clean academic CV design
- Modular section files
- Simple user-editable profile file
- Fixed professional layout
- Consistent entry formatting
- Research-oriented section structure
- Optional generated-date handling
- Footer system with support for update date, name, and page number
- PDF metadata support
- Print-friendly link styling
- Adaptive right metadata columns
- Indexed compact publication records
- Publication groups and publication notes
- Talk entries with indexed labels and right-aligned dates
- Media entries for interviews, press coverage, podcasts, and articles
- Role-grouped teaching entries with right-aligned terms
- Inline bracket-style links for publications, talks, media, and teaching
- Configurable header width
- Custom header contact links
- Maintainer-facing design parameters separated from user-facing content

## Repository Structure

```text
vectra/
├── README.md
├── LICENSE
├── NOTICE
├── USAGE_POLICY.md
├── CONTRIBUTING.md
├── CITATION.cff
├── CHANGELOG.md
├── Makefile
├── latexmkrc
├── .gitignore
│
├── src/
│   ├── vectra.cls
│   ├── vectra-core.sty
│   ├── vectra-design.sty
│   ├── vectra-compact.sty
│   ├── vectra-layout.sty
│   ├── vectra-sections.sty
│   ├── vectra-header.sty
│   ├── vectra-footer.sty
│   ├── vectra-fonts.sty
│   ├── vectra-colors.sty
│   └── vectra-accessibility.sty
│
├── cv/
│   └── README.md
│
├── examples/
│   ├── minimal/
│   └── academic-cv/
│
└── output/
```

## Document Styles

Vectra ships two styles, chosen with a class option. They share every macro;
only the design parameters differ, so a document can be moved from one to the
other by editing a single line.

```latex
\documentclass{vectra}            % academic, the default
\documentclass[compact]{vectra}   % one-page professional resume
```

| | `academic` (default) | `compact` |
|---|---|---|
| Base size | 11pt | 10pt |
| Line spread | 1.00 | 0.96 |
| Margins, top / bottom | 1.60 / 1.75 cm | 0.85 / 0.85 cm |
| Margins, left / right | 1.75 cm | 1.05 cm |
| Name | 28pt | 18pt |
| Section titles | `\large\bfseries` | `\normalsize\bfseries` |
| Space above / below a section | 0.32 / 0.14 cm | 0.14 / 0.05 cm |
| Major entry gap | 0.40 cm | 0.14 cm |
| Header width | 0.80 of text width | 0.96 |
| Intended length | as many pages as the record needs | one |

`academic` is for the document a committee reads for a quarter of an hour:
publications, talks, teaching, the full record, generous spacing that survives
page after page. `compact` is for the document a hiring coordinator reads in
under a minute, where the page is the constraint and every value moves in the
direction of more content per page.

`compact` is deliberately at the tight end of readable. Two limits are worth
knowing before pushing it further. The vertical margins leave roughly a quarter
of a centimeter over the unprintable edge most consumer printers reserve, so
going below 0.80 cm needs testing on the actual printer. And a line spread
below about 0.95 makes descenders and the next line's ascenders interfere in
bullet lists, which is where this style is densest.

**The option changes nothing for a document that does not pass it.** `compact`
is purely additive: the academic style's measurements are exactly what they
were before it existed. The PDF is not byte-identical to one built with v0.2.0,
because v1.0.0 also writes `/Lang` into every document's catalog.

**How it works.** `vectra-compact.sty` redefines the lengths and macros that
`vectra-design.sty` sets, and touches nothing in the layout, header, section or
footer layers. The class loads it between design, whose values it overrides, and
core, which hands the margins to `geometry`. The two styles can therefore differ
in measurement but never in behavior: a bug fixed in a section macro is fixed
in both, and there is no second code path to keep in step.

**Declare the document's language.** `\VectraSetPDFLang` writes `/Lang` into the
PDF catalog, which is what a screen reader reads to choose its pronunciation
rules. Without it the reader uses its own locale, and an English CV opened on a
system set to another language is read with the wrong phonology rather than
merely the wrong accent. It defaults to `en`:

```latex
\VectraSetPDFLang{en}      % default
\VectraSetPDFLang{zh-CN}   % a Chinese document
```

**Turn the footer off in `compact`.** A document that is one page by
construction has no page number worth printing:

```latex
\VectraSetDateMode{none}
\VectraSetFooterMode{none}
```

## Requirements

- pdfLaTeX
- `latexmk`
- A current LaTeX distribution such as TeX Live, MacTeX, or MiKTeX

Vectra uses pdfLaTeX as its default compiler. The included `latexmkrc` and
`Makefile` provide the maintained build configuration.

## Overleaf

1. Download or package the repository as a `.zip` archive.
2. In Overleaf, select `New Project` → `Upload Project`.
3. Upload the archive.
4. Set the compiler to `pdfLaTeX` in the project settings.
5. Copy an example into `cv/`, or set the selected example's `main.tex` as the
   main document.

The repository does not currently publish an official Overleaf Gallery
template. The GitHub repository remains the maintained source.

## Quick Start

The public Vectra repository does not track personal CV source files in `cv/`.

To create your own local CV, copy one of the examples into `cv/`:

```bash
cp -r examples/academic-cv/* cv/
```

Then edit:

```text
cv/profile.tex
cv/settings.tex
cv/sections/
```

### 1. Edit your profile

Open:

```text
cv/profile.tex
```

Update your:

- Name
- Email
- Website
- GitHub
- ORCID, if applicable
- LinkedIn, if applicable
- Location, if desired
- PDF metadata

You may also add custom header links:

```latex
\VectraAddContactLink{Google Scholar}{https://scholar.google.com/}
\VectraAddContactLink{Lab}{https://example-lab.org}
```

You may constrain the header width:

```latex
\VectraSetHeaderWidth{0.86\textwidth}
```

### 2. Edit your CV content

Open files under:

```text
cv/sections/
```

Edit sections such as:

- Education
- Research interests
- Research experience
- Publications
- Talks
- Teaching experience
- Media
- Projects
- Awards and honors
- Leadership and service
- Skills
- Certifications

### 3. Adjust simple document settings

Open:

```text
cv/settings.tex
```

This file is for simple content-level settings, such as whether the footer date
uses the current compile date or a fixed update date.

Vectra is not intended to be customized by changing fonts, spacing, margins, or
layout internals.

### 4. Compile

From the repository root, run:

```bash
make cv
```

The generated PDF will be placed in:

```text
output/
```

You may also compile `cv/main.tex` directly using a LaTeX editor or Overleaf,
provided that the project structure is preserved.

## What Users Should Edit

Users should edit:

```text
cv/profile.tex
cv/settings.tex
cv/sections/*.tex
```

These files contain personal CV information and content.

## What Users Should Not Edit

Users should not edit:

```text
src/
cv/main.tex
Makefile
latexmkrc
```

The files in `src/` define the Vectra template design and layout. They are part
of the Template Source and are not intended for user customization or
redistribution. This includes `src/vectra-compact.sty`: the way to select the
compact style is the class option, not an edit to that file. A document that
needs different measurements than either style provides is asking for a third
style, which belongs in `src/` beside the other two.

## Academic Record Formats

Vectra supports indexed compact records for scholarly and public-facing content.

### Publications

```text
[C1] Authors. Title. Venue, Year. Location. [Links]
```

### Talks

```text
[T1] Title. Event, Location. [Links]       Date
```

### Media

```text
[M1] Title. Outlet. [Links]                Date
```

### Teaching

```text
Role
Institution, Course Title. [Links]         Term
```

These formats are designed to remain compact while supporting long academic
records.

## Design Philosophy

Vectra follows a compact academic design philosophy.

The default style is intended to be:

- Professional
- Academic
- Minimal
- Readable
- Consistent
- Print-friendly
- Suitable for research-oriented applications

Vectra avoids:

- Decorative sidebars
- Excessive icons
- Overly colorful layouts
- Complex multi-column resume designs
- Manual spacing in user content
- User-facing typography customization

The goal is to let users focus on CV content while the template handles visual
consistency.

## Footer Design

Vectra includes a structured footer system.

The footer may include:

- Last updated date
- Name
- Page number

The intended default academic footer format is conceptually:

```text
Last updated: <date>           <Name>           Page X of Y
```

This provides useful version information while keeping the document formal and
balanced.

## Documentation

Vectra documentation is maintained on the project website:

- [Documentation overview](https://yixuanhuang.com/projects/vectra/)
- [Quick Start](https://yixuanhuang.com/projects/vectra/quick-start/)
- [User Guide](https://yixuanhuang.com/projects/vectra/user-guide/)
- [Design Rationale](https://yixuanhuang.com/projects/vectra/design/)
- [Maintainer Guide](https://yixuanhuang.com/projects/vectra/maintainer-guide/)
- [Licensing](https://yixuanhuang.com/projects/vectra/licensing/)
- [Changelog](https://yixuanhuang.com/projects/vectra/changelog/)

The website is the canonical location for project documentation. The repository
contains the template source, examples, build configuration, and formal license
files.

## Citation

If you use Vectra and want to recommend or share the template, please cite or
link to the official repository:

```text
Yixuan Huang. Vectra: Versatile Experience and Career Template for Research and
Academia. GitHub repository: https://github.com/yixnhuang/vectra
```

A `CITATION.cff` file is provided so GitHub can generate a citation through
**Cite this repository**. Citation is appreciated when sharing or discussing
Vectra, but it is not required inside a generated CV or resume.

## Project Status

Active. Vectra is maintained as a structured template system with versioned
documentation, examples, citation metadata, and a changelog.

## Contributing

Questions, compatibility reports, documentation corrections, and focused
improvements are welcome. Please open an issue before preparing a substantial
change so its scope and design can be discussed.

Thank you to everyone who uses Vectra, shares thoughtful feedback, and
recognizes the work behind the project. Your attention and practical experience
help make the template more reliable and useful.

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.

## License

Vectra is distributed under the
[LaTeX Project Public License, version 1.3c or later](LICENSE).

This work has the LPPL maintenance status `maintained`. The Current Maintainer
is Yixuan Huang. Generated documents are not required to use the LPPL or display
attribution solely because they were produced with Vectra.

See [NOTICE](NOTICE) and [USAGE_POLICY.md](USAGE_POLICY.md) for project-specific
clarifications.

## Contact

For questions or collaboration, use the contact details below or consult the
website for the latest information.

- Website: [yixuanhuang.com](https://yixuanhuang.com)
- Email: [yixhuang@umich.edu](mailto:yixhuang@umich.edu)
