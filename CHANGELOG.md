# Changelog

All notable changes to Vectra are documented in this file.

Vectra follows a simple versioning scheme during early development. Public
template interface changes, layout changes, documentation updates, and
maintainer-facing design changes should be recorded here.

## [0.3.0] - 2026-09-12

### Added

- Added a `compact` class option: a one-page professional resume style at 10pt
  with 0.85/1.05 cm margins, a 0.96 line spread, an 18pt name, `\normalsize`
  section titles, and roughly a third of the academic style's space between
  entries.
  `\documentclass[compact]{vectra}` selects it; `academic` names the default
  explicitly. Any other option is still passed through to `article`.
- Added `src/vectra-compact.sty`, which holds the compact style's design
  parameters. It redefines what `vectra-design.sty` sets and touches no macro in
  the layout, header, section or footer layers, so the two styles differ in
  measurement and never in behaviour. The class loads it between `vectra-design`
  and `vectra-core`, because `vectra-core` is where the margin lengths reach
  `geometry`.
- Documented both styles and their parameter differences in a new `Document
  Styles` section of the README.
- Added `\VectraSetPDFLang`, which writes the document's natural language into
  the PDF catalogue as `/Lang`. A screen reader chooses its pronunciation rules
  from that entry and otherwise falls back to the reading machine's locale, so
  an English document opened on a system configured for another language is
  read with the wrong phonology. WCAG 2.2 requires it at level A (3.1.1) and
  PDF/UA requires it of the document. Defaults to `en`; set `zh-CN` for a
  Chinese document. hyperref's own `pdflang` key does not reach the catalogue
  when set this late under pdfTeX, which was verified against the generated
  file, so the entry is written directly.

### Changed

- Replaced the custom source-available license with the LaTeX Project Public
  License, version 1.3c or later.
- Added LPPL maintenance, generated-document, contribution, and official-version
  guidance.
- Standardized the project name as `Vectra`.
- Moved the maintained project documentation and example previews to
  `https://yixuanhuang.com/projects/vectra/`.
- Removed the repository-local `docs/` directory.

## [0.2.0] - 2026-06-30

### Added

- Added publication groups for organizing publications into categories such as
  Preprints, Conference Papers, Journal Articles, Workshop Papers, and Patents.
- Added publication notes for explanatory text such as equal contribution notes.
- Added updated publication entry format:

  ```text
  [C1] Authors. Title. Venue, Year. Location. [Links]
  ```

- Added support for publication locations.
- Added inline bracket-style publication links, such as `[Preprint]`, `[Code]`,
  `[DOI]`, `[PDF]`, and `[BibTeX]`.
- Added indexed talk entries with right-aligned dates:

  ```text
  [T1] Title. Event, Location. [Links]       Date
  ```

- Added talk groups for organizing talks by type, such as Invited Talks,
  Conference Presentations, Seminars, and Posters.
- Added indexed media entries with right-aligned dates:

  ```text
  [M1] Title. Outlet. [Links]       Date
  ```

- Added media groups for organizing interviews, press coverage, podcasts, and
  articles.
- Added role-grouped teaching entries with right-aligned terms:

  ```text
  Role
  Institution, Course Title. [Links]       Term
  ```

- Added inline bracket-style links for talks, media, and teaching records.
- Added custom header contact links through `\VectraAddContactLink`.
- Added custom header text items through `\VectraAddContactText`.
- Added configurable header width through `\VectraSetHeaderWidth`.
- Added adaptive right metadata columns for two-column entries.
- Added indexed two-column layout support with hanging indentation for talks
  and media.

### Changed

- Updated publication entries from the v0.1.0 four-field format to a richer
  seven-field format:

  ```latex
  \VectraPublicationEntry
      {Prefix}
      {Authors}
      {Title}
      {Venue}
      {Year}
      {Location}
      {Links}
  ```

- Standardized scholarly and public-facing record links as inline bracket-style
  links.
- Updated talks to use indexed compact academic record formatting with dates in
  the right metadata column.
- Updated media entries to use indexed compact record formatting with dates in
  the right metadata column.
- Updated teaching entries to use role-grouped compact records with terms in the
  right metadata column.
- Reorganized spacing design around semantic entry categories:
  - Major entries: Education, Research Experience, General Experience, Projects.
  - Record entries: Publications, Talks, Media, Teaching.
  - Compact entries: Awards, Service, Certifications.
  - Skill entries: Skill groups.
- Updated right metadata layout so dates, terms, and short metadata use natural
  width instead of a fixed-width column.
- Updated header contact wrapping so contact items remain intact and separators
  are omitted at line breaks.
- Updated academic CV examples to include publications, talks, media, and
  teaching sections.
- Updated documentation for publications, talks, media, teaching, header
  customization, and adaptive metadata columns.

### Fixed

- Fixed undefined control sequence errors caused by layout helpers being used
  before definition.
- Fixed inconsistent top alignment between indexed left records and right-side
  dates in media and talk entries.
- Fixed contact separator wrapping so lines do not end or begin with `|`.
- Fixed spacing behavior for group headings that appear immediately after a
  section title.
- Fixed link spacing behavior so inline links do not inherit unwanted whitespace
  from source line breaks.

## [0.1.0] - 2026-06-28

### Added

- Initial Vectra repository structure.
- Source-available custom license.
- Plain-language usage policy.
- Citation metadata through `CITATION.cff`.
- Modular LaTeX template architecture under `src/`.
- Main Vectra document class: `src/vectra.cls`.
- Core style modules:
  - `vectra-design.sty`
  - `vectra-core.sty`
  - `vectra-fonts.sty`
  - `vectra-colors.sty`
  - `vectra-accessibility.sty`
  - `vectra-layout.sty`
  - `vectra-header.sty`
  - `vectra-footer.sty`
  - `vectra-sections.sty`
- Personal CV directory under `cv/`.
- User-editable profile, settings, and section files.
- Minimal example document under `examples/minimal/`.
- Academic CV example document under `examples/academic-cv/`.
- Documentation directory under `docs/`.
- Build system using `Makefile` and `latexmk`.
- Root-level `latexmkrc` configuration.
- Git ignore rules for LaTeX build artifacts and generated output.
- Output directory placeholder for generated PDFs.

### User-Facing Template Features

- Added semantic CV commands for:
  - profile information
  - PDF metadata
  - education entries
  - research experience entries
  - general experience entries
  - project entries
  - publication entries
  - award entries
  - service entries
  - skill groups
  - certification entries
- Added optional field handling for entry commands.
- Empty optional fields are omitted automatically without creating blank lines,
  placeholder labels, or extra spacing.
- Added support for structured bullet lists through `VectraBullets`.
- Added date mode support:
  - `today`
  - `fixed`
  - `none`
- Added footer mode support:
  - `full`
  - `simple`
  - `none`
- Added structured footer layout with:
  - left update date
  - centered name
  - right page number
- Added text-based contact header with automatic omission of empty contact
  fields.
- Added support for email, website, GitHub, LinkedIn, ORCID, phone, location,
  and title fields.

### Design and Layout

- Established the default Vectra Academic Compact style.
- Adopted a single-column academic CV layout with right-aligned metadata.
- Added fixed-width right metadata column for dates and locations.
- Added subtle section rules for improved scanability.
- Selected Charter as the default font.
- Used black text and black links for a print-friendly academic appearance.
- Avoided icon-based contact formatting in the default style.
- Tuned page geometry for improved academic CV readability.
- Increased bottom margin to provide better footer breathing room.
- Tuned header spacing, including compact spacing between contact links and the
  first section.
- Tuned section spacing for consistent section-to-section rhythm.
- Reduced section-to-first-entry spacing for a more compact section opening.
- Added dedicated Education entry spacing for improved visual balance.
- Standardized normal entry spacing for Research Experience, Projects, and
  Publications.
- Added compact spacing for Awards, Service, and Certifications.
- Added skill-group spacing for dense technical skills sections.
- Standardized bullet list spacing by removing itemize's default top spacing.
- Added explicit entry-to-bullet spacing.
- Added line struts inside entry blocks to reduce visual spacing differences
  caused by descenders such as `g`, `y`, `p`, and `q`.
- Added trailing entry-gap tracking and cancellation before new sections so that
  section-to-section spacing remains consistent.

### Personal CV

- Added modular personal CV structure under `cv/`.
- Added personal profile and PDF metadata configuration.
- Added sections for:
  - Education
  - Research Interests
  - Research Experience
  - Selected Projects
  - Awards and Honors
  - Leadership and Service
  - Technical Skills
  - Certifications
- Updated research experience content for multi-arm tabletop rearrangement
  planning.
- Added Outstanding Graduating Undergraduate to Awards and Honors.
- Updated GitHub and website references to use `yixnhuang`.

### Examples

- Added minimal example demonstrating the smallest recommended Vectra document
  structure.
- Added academic CV example demonstrating a research-oriented academic CV
  structure.
- Added example profile, settings, education, experience, research interests,
  projects, publications, awards, service, and skills files.
- Used fictional example data in public examples.

### Documentation

- Added `README.md` with project overview, quick start, repository structure,
  features, usage notice, license summary, and citation information.
- Added `USAGE_POLICY.md` with plain-language allowed and prohibited uses.
- Added `docs/quick-start.md`.
- Added `docs/user-guide.md`.
- Added `docs/maintainer-guide.md`.
- Added `docs/style-rationale.md`.
- Added `docs/license-guide.md`.
- Documented maintainer-facing spacing parameters in `vectra-design.sty`.
- Documented the fixed-design philosophy and user-editable content workflow.
- Documented empty optional field behavior for CV entries.
- Documented footer design and date modes.
- Documented build commands and project structure.

### Build and Compatibility

- Added Makefile targets:
  - `make cv`
  - `make minimal`
  - `make academic`
  - `make examples`
  - `make all`
  - `make clean`
  - `make clean-output`
  - `make distclean`
- Added `TEXINPUTS` handling in the Makefile for local builds.
- Added Overleaf-compatible input path handling in entry-point `main.tex` files.
- Configured pdfLaTeX as the default build engine.
- Added machine-readable PDF support through Unicode mapping for pdfLaTeX.
- Added PDF metadata support through Vectra profile commands.

### License

- Added `Yixuan Huang Non-Commercial Attribution Template License Version 1.0`.
- Clarified that Vectra is source-available, not distributed under a
  conventional open-source license.
- Clarified that generated CVs and resumes do not require visible attribution.
- Clarified that users may edit personal CV content and publish generated PDFs.
- Clarified that template source redistribution, republication, repackaging,
  resale, and derivative template publication are not permitted.
- Clarified that sharing Vectra should be done by citing or linking to the
  official repository.
