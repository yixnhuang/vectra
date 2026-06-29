# Changelog

All notable changes to VECTRA will be documented in this file.

VECTRA follows a simple versioning scheme during early development. Public
template interface changes, layout changes, documentation updates, and
maintainer-facing design changes should be recorded here.

## [Unreleased]

### Planned for 0.2.0

- Improve publication-related commands and formatting.
- Add support for a dedicated Talks section.
- Add semantic entry commands for invited talks, conference talks, seminars,
  presentations, and posters.
- Refine academic CV examples to demonstrate publications and talks.
- Add documentation for publication and talk formatting conventions.

## [0.1.0] - 2026-06-29

### Added

- Initial VECTRA repository structure.
- Source-available custom license.
- Plain-language usage policy.
- Citation metadata through `CITATION.cff`.
- Modular LaTeX template architecture under `src/`.
- Main VECTRA document class: `src/vectra.cls`.
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

- Established the default VECTRA Academic Compact style.
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

- Added minimal example demonstrating the smallest recommended VECTRA document
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
- Added PDF metadata support through VECTRA profile commands.

### License

- Added `Yixuan Huang Non-Commercial Attribution Template License Version 1.0`.
- Clarified that VECTRA is source-available, not distributed under a
  conventional open-source license.
- Clarified that generated CVs and resumes do not require visible attribution.
- Clarified that users may edit personal CV content and publish generated PDFs.
- Clarified that template source redistribution, republication, repackaging,
  resale, and derivative template publication are not permitted.
- Clarified that sharing VECTRA should be done by citing or linking to the
  official repository.