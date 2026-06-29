# Maintainer Guide

This guide is intended for maintaining the official VECTRA template.

Most users should not need this document. Users should edit only profile,
settings, and section files.

## Purpose

VECTRA is designed as an opinionated, source-available LaTeX CV template.

The goal is not to expose many customization options. Instead, the template
should provide a fixed, polished, academic style with a small content-facing API.

## Core Design Files

The main template files are in:

```text
src/
```

Important files:

```text
vectra.cls
vectra-design.sty
vectra-core.sty
vectra-fonts.sty
vectra-colors.sty
vectra-accessibility.sty
vectra-layout.sty
vectra-header.sty
vectra-footer.sty
vectra-sections.sty
```

## File Responsibilities

### `vectra.cls`

Main document class.

Responsibilities:

- Load the base `article` class
- Load VECTRA style modules
- Provide the user-facing class entry point

### `vectra-design.sty`

Central design-token file.

This is the main file for tuning:

- Margins
- Header spacing
- Name size
- Section spacing
- Section rule thickness
- Entry spacing
- Right metadata column width
- Bullet spacing
- Footer typography
- Contact separator

### `vectra-core.sty`

Core document behavior.

Responsibilities:

- Geometry setup
- Paragraph behavior
- No section numbering
- Ragged-right body text
- Core packages used across the template

### `vectra-fonts.sty`

Font configuration.

Default design choice:

```text
Charter
```

Rationale:

- Academic appearance
- Compact width
- Good print readability
- More polished than default Computer Modern for CV use

### `vectra-colors.sty`

Color definitions.

Default design choice:

```text
Black text and black links
```

Rationale:

- Print-friendly
- Academic
- Minimal
- Avoids decorative resume styling

### `vectra-accessibility.sty`

PDF accessibility and metadata support.

Responsibilities:

- Unicode mapping for pdfLaTeX
- PDF metadata
- Hyperref setup
- Bookmark support

### `vectra-layout.sty`

Internal layout primitives.

Responsibilities:

- One-column blocks
- Two-column entry layout
- Bullet list styling
- Internal spacing helpers

These commands are internal and should not be documented as user-facing API.

### `vectra-header.sty`

Header data and rendering.

Responsibilities:

- Store profile fields
- Render name and contact information
- Hide empty fields
- Keep default header icon-free

### `vectra-footer.sty`

Footer configuration.

Default concept:

```text
Last updated: <date>           <Name>           Page X of Y
```

Responsibilities:

- Date mode
- Footer mode
- Centered name
- Page numbering
- Last updated text

### `vectra-sections.sty`

User-facing content commands.

Responsibilities:

- `\VectraSection`
- `\VectraEducationEntry`
- `\VectraResearchExperienceEntry`
- `\VectraProjectEntry`
- `\VectraPublicationEntry`
- `\VectraAwardEntry`
- `\VectraServiceEntry`
- `\VectraSkillGroup`
- `\VectraCertificationEntry`

## Public User API

The stable user-facing commands are:

```latex
\VectraSetName
\VectraSetEmail
\VectraSetWebsite
\VectraSetGitHub
\VectraSetLinkedIn
\VectraSetORCID
\VectraSetPhone
\VectraSetLocation
\VectraSetTitle

\VectraSetPDFTitle
\VectraSetPDFAuthor
\VectraSetPDFSubject
\VectraSetPDFKeywords

\VectraSetDateMode
\VectraSetFixedDate
\VectraSetFooterMode

\VectraMakeHeader
\VectraSection
\VectraResearchInterests
\VectraEducationEntry
\VectraResearchExperienceEntry
\VectraExperienceEntry
\VectraProjectEntry
\VectraPublicationEntry
\VectraAwardEntry
\VectraServiceEntry
\VectraSkillGroup
\VectraCertificationEntry
```

## Internal API

Internal commands include names containing `@`, such as:

```latex
\Vectra@TwoColumnBlock
\Vectra@OneColumnBlock
\Vectra@NormalGap
\Vectra@CompactGap
\Vectra@SkillGap
```

These should not be used directly in user content.

## Default Design Parameters

Current intended defaults:

```text
Paper size: letterpaper
Base font size: 10pt
Font: Charter
Name size: 28pt
Name line height: 32pt
Text alignment: ragged right
Section title: bold, large
Section rule: thin black rule
Right metadata column: 4.45cm
Footer: left date, center name, right page number
Links: black
Icons: disabled
```

Most visual parameters are defined in `src/vectra-design.sty`. These parameters
are maintainer-facing design tokens and are not intended as public user-facing
customization options.

## Margin Tuning

The default margins are defined in `vectra-design.sty`.

Current baseline:

```text
top:    1.60cm
bottom: 2.00cm
left:   2.15cm
right:  2.15cm
footer: 0.70cm
```

The bottom margin is intentionally larger than the top margin to provide enough
space for the structured footer and to avoid a visually crowded page bottom.

Tuning recommendations:

- Increase left and right margins if the page feels crowded.
- Increase top margin if the header feels too close to the page edge.
- Increase bottom margin if the footer feels compressed.
- Do not make margins so narrow that the CV appears like a dense one-page
  resume template.

## Header Tuning

Current baseline:

```text
Name size: 28pt
Name line height: 32pt
Name-to-contact spacing: 0.15cm
Header bottom spacing: 0.16cm
```

Tuning recommendations:

- Use 26pt for a more compact look.
- Use 28pt for the default academic compact style.
- Avoid 32pt unless the CV has very little content.

## Section Tuning

Current baseline:

Current baseline:

```text
Section top spacing: 0.32cm
Section bottom spacing: 0.14cm
Rule space: 1pt
Rule thickness: 0.4pt
```

Section top spacing controls the distance before each section title. Section
bottom spacing controls the distance between the section rule and the first
entry.

Section-to-section consistency depends on the layout layer cancelling trailing
entry gaps before a new section begins. Do not use entry spacing parameters to
manually compensate for section spacing.

Tuning recommendations:

- If the document feels too dense, increase bottom spacing slightly.
- If the document spills by a small amount, reduce section top spacing first.
- Keep the rule thin to avoid a commercial resume style.

## Entry Tuning

Current baseline:

```text
Education entry separation: 0.24cm
Normal entry separation: 0.12cm
Compact entry separation: 0cm
Skill entry separation: 0.07cm
Right column width: 4.45cm
Column separation: 0.22cm
```

Recommended usage:

- Education entries use `\VectraEducationEntrySeparation`.
- Research Experience, Projects, and Publications use
  `\VectraNormalEntrySeparation`.
- Awards, Service, and Certifications use
  `\VectraCompactEntrySeparation`.
- Skill groups use `\VectraSkillEntrySeparation`.

Education entries are visually shorter and usually do not contain bullet lists,
so they use a dedicated spacing parameter for better visual balance.

Recommended usage:

- Education and research entries use normal spacing.
- Awards and service entries use compact spacing.
- Skill groups use minimal spacing.

## Bullet Tuning

Current baseline:

```text
Bullet left margin: 12pt
Bullet top separation: 0pt
Bullet item separation: 0pt
Entry-to-bullet separation: 2.5pt
```

The itemize environment's own top spacing is kept at zero so that bullet lists
do not introduce inconsistent vertical spacing. The distance between an entry
information block and its bullet list is controlled by
`\VectraEntryBulletSeparation`.

Tuning recommendations:

- Increase top separation if bullet lists feel crowded.
- Avoid large item separation for compact academic CVs.
- Keep bullet indentation modest.

## Footer Tuning

Footer modes:

```text
full
simple
none
```

Default:

```text
full
```

Full footer concept:

```text
Last updated: <date>           <Name>           Page X of Y
```

Date modes:

```text
today
fixed
none
```

Recommended usage:

- Personal continuously maintained CV: `today`
- Application snapshot: `fixed`
- One-page resume: `none` or `simple`

## Build System

Main build commands:

```bash
make cv
make minimal
make academic
make examples
make all
make clean
make distclean
```

The Makefile uses `TEXINPUTS` to allow documents in `cv/` and `examples/` to
find files in `src/`.

## Release Checklist

Before publishing a release:

- Compile personal CV.
- Compile minimal example.
- Compile academic CV example.
- Check that no old usernames or stale links remain.
- Check that generated PDFs have correct metadata.
- Check that license and usage policy are up to date.
- Check that source files contain copyright notices.
- Check that user documentation tells users not to edit `src/`.
- Check that examples contain fictional or safe sample data.
- Update `CHANGELOG.md`.
- Update `CITATION.cff` version if needed.

## Repository URL

Official repository:

```text
https://github.com/yixnhuang/vectra
```