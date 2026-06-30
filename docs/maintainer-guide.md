# Maintainer Guide

This guide is intended for maintaining the official VECTRA template.

Most users should not need this document. Users should edit only profile,
settings, and section files.

## Purpose

VECTRA is designed as an opinionated, source-available LaTeX CV template.

The goal is not to expose many customization options. Instead, the template
should provide a fixed, polished, academic style with a small content-facing API.

VECTRA should remain:

- Academic
- Compact
- Readable
- Print-friendly
- Modular
- Easy for users to fill in
- Difficult for users to accidentally break

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

- Load the base `article` class.
- Load VECTRA style modules.
- Provide the user-facing class entry point.

### `vectra-design.sty`

Central design-token file.

This is the main file for tuning:

- Margins
- Header spacing
- Header width
- Name size
- Section spacing
- Section rule thickness
- Entry spacing
- Column separation
- Bullet spacing
- Publication prefix spacing
- Talk and media prefix spacing
- Group heading spacing
- Footer typography
- Contact separator spacing

This file should contain design parameters, not entry rendering logic.

### `vectra-core.sty`

Core document behavior.

Responsibilities:

- Geometry setup.
- Paragraph behavior.
- No section numbering.
- Ragged-right body text.
- Core packages used across the template.

### `vectra-fonts.sty`

Font configuration.

Default design choice:

```text
Charter
```

Rationale:

- Academic appearance.
- Compact width.
- Good print readability.
- More polished than default Computer Modern for CV use.

### `vectra-colors.sty`

Color definitions.

Default design choice:

```text
Black text and black links
```

Rationale:

- Print-friendly.
- Academic.
- Minimal.
- Avoids decorative resume styling.

### `vectra-accessibility.sty`

PDF accessibility and metadata support.

Responsibilities:

- Unicode mapping for pdfLaTeX.
- PDF metadata.
- Hyperref setup.
- Bookmark support.

### `vectra-layout.sty`

Internal layout primitives.

Responsibilities:

- One-column blocks.
- Adaptive two-column entry layout.
- Indexed two-column layout for talks and media.
- Bullet list styling.
- Entry spacing helpers.
- Trailing entry-gap tracking.
- Section content tracking.

These commands are internal and should not be documented as user-facing API.

### `vectra-header.sty`

Header data and rendering.

Responsibilities:

- Store profile fields.
- Render name and contact information.
- Hide empty fields.
- Keep default header icon-free.
- Support constrained header width.
- Support custom header contact links.
- Keep contact items together during wrapping.
- Avoid separators at line starts or line ends.

### `vectra-footer.sty`

Footer configuration.

Default concept:

```text
Last updated: <date>           <Name>           Page X of Y
```

Responsibilities:

- Date mode.
- Footer mode.
- Centered name.
- Page numbering.
- Last updated text.

### `vectra-sections.sty`

User-facing content commands.

Responsibilities:

- `\VectraSection`
- `\VectraResearchInterests`
- `\VectraEducationEntry`
- `\VectraResearchExperienceEntry`
- `\VectraExperienceEntry`
- `\VectraProjectEntry`
- `\VectraPublicationEntry`
- `\VectraPublicationNote`
- `\VectraPublicationGroup`
- `\VectraTalkEntry`
- `\VectraTalkGroup`
- `\VectraMediaEntry`
- `\VectraMediaGroup`
- `\VectraTeachingEntry`
- `\VectraTeachingGroup`
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

\VectraSetHeaderWidth
\VectraAddContactLink
\VectraAddContactText

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

\VectraPublicationNote
\VectraPublicationGroup
\VectraPublicationEntry
\VectraPublicationLink

\VectraTalkGroup
\VectraTalkEntry
\VectraTalkLink

\VectraMediaGroup
\VectraMediaEntry
\VectraMediaLink

\VectraTeachingGroup
\VectraTeachingEntry
\VectraTeachingLink

\VectraAwardEntry
\VectraServiceEntry
\VectraSkillGroup
\VectraCertificationEntry
```

## Internal API

Internal commands include names containing `@`, such as:

```latex
\Vectra@TwoColumnBlock
\Vectra@IndexedTwoColumnBlock
\Vectra@OneColumnBlock
\Vectra@MajorEntryGap
\Vectra@RecordEntryGap
\Vectra@CompactGap
\Vectra@SkillGap
\Vectra@MeasureRightColumn
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
Links: black
Icons: disabled
```

## Entry Spacing Tokens

VECTRA separates entry spacing into semantic spacing tokens.

```text
\VectraMajorEntrySeparation
\VectraRecordEntrySeparation
\VectraCompactEntrySeparation
\VectraSkillEntrySeparation
```

Recommended usage:

- `\VectraMajorEntrySeparation`  
  Used for Education, Research Experience, General Experience, and Projects.

- `\VectraRecordEntrySeparation`  
  Used for Publications, Talks, Media, and Teaching.

- `\VectraCompactEntrySeparation`  
  Used for Awards, Service, and Certifications.

- `\VectraSkillEntrySeparation`  
  Used for skill groups.

This distinction keeps narrative CV entries more readable while keeping longer
record-style sections compact.

## Margin Tuning

The default margins are defined in `vectra-design.sty`.

Current baseline:

```text
top:    1.60cm
bottom: 1.75cm
left:   1.75cm
right:  1.75cm
footer: 0.75cm
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
Default header width: 0.86\textwidth
```

Header width is controlled by:

```latex
\VectraHeaderWidth
```

Users may set it with:

```latex
\VectraSetHeaderWidth{0.86\textwidth}
```

Custom contact links can be added with:

```latex
\VectraAddContactLink{Display Text}{URL}
```

Text-only contact items can be added with:

```latex
\VectraAddContactText{Text}
```

Header contact items are kept as unbreakable units. Separators are omitted at
line breaks so that no line ends or begins with a vertical bar.

Tuning recommendations:

- Use 26pt for a more compact name.
- Use 28pt for the default academic compact style.
- Avoid 32pt unless the CV has very little content.
- Use a header width between `0.80\textwidth` and `0.90\textwidth` for most
  documents.
- Keep custom contact display text short.

## Section Tuning

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
Major entry separation:  0.30cm
Record entry separation: 0.12cm
Compact entry separation: 0cm
Skill entry separation:  0.07cm
Column separation:       0.22cm
```

Recommended usage:

- Major entries use `\VectraMajorEntrySeparation`.
- Record entries use `\VectraRecordEntrySeparation`.
- Compact entries use `\VectraCompactEntrySeparation`.
- Skill groups use `\VectraSkillEntrySeparation`.

## Adaptive Right Metadata Columns

VECTRA uses adaptive right metadata columns in two-column entries.

The layout layer measures the natural width of right-side metadata for each
entry, then assigns the remaining width to the left column.

This behavior is implemented in `src/vectra-layout.sty`.

Benefits:

- Short dates such as `2026` use minimal width.
- Longer dates such as `Sep. 2022 -- Jun. 2026` remain unwrapped when possible.
- The left column automatically receives more space when the right metadata is
  short.
- Talk, media, teaching, project, education, and experience entries share the
  same adaptive layout behavior.

Right-side metadata should remain short. Long descriptive text should be placed
in the left-side content.

## Indexed Academic Records

VECTRA uses indexed compact academic records for Publications, Talks, and Media.

Examples:

```text
[C1] Authors. Title. Venue, Year. Location. [Links]
[T1] Title. Event, Location. [Links]       Date
[M1] Title. Outlet. [Links]                Date
```

The indexed prefix is placed in a fixed-width label area. Wrapped lines align
with the entry body rather than with the prefix.

The implementation differs by section:

- Publications use one-column hanging indentation.
- Talks and Media use indexed two-column records with right-side dates.
- Teaching uses role-grouped two-column records and is not indexed by default.

## Publication Tuning

Publication design parameters include:

```text
\VectraPublicationPrefixWidth
\VectraPublicationPrefixSeparation
\VectraPublicationLinkSeparator
\VectraPublicationNoteBottomSpace
\VectraPublicationGroupTopSpace
\VectraPublicationGroupBottomSpace
```

Publication format:

```text
[C1] Authors. Title. Venue, Year. Location. [Links]
```

Publication links are bracket-style inline links:

```text
[Preprint] [Code] [BibTeX]
```

## Talk and Media Tuning

Talk and Media records use indexed two-column layout.

Talk format:

```text
[T1] Title. Event, Location. [Links]       Date
```

Media format:

```text
[M1] Title. Outlet. [Links]                Date
```

Talk and Media group spacing is controlled by:

```text
\VectraTalkGroupTopSpace
\VectraTalkGroupBottomSpace
\VectraMediaGroupTopSpace
\VectraMediaGroupBottomSpace
```

The first group immediately after a section title should not add extra top
spacing. Subsequent groups may use their configured top spacing.

## Teaching Tuning

Teaching entries are grouped by role.

Format:

```text
Role
Institution, Course Title. [Links]       Term
```

Teaching is not indexed by default because it is treated as an experience record
rather than a publication-like scholarly output.

Teaching group spacing is controlled by:

```text
\VectraTeachingGroupTopSpace
\VectraTeachingGroupBottomSpace
```

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

## Versioning Guidance

During development, modified source files may use:

```text
v0.2.0-dev
```

Before publishing a release, all core files in `src/` should be updated to the
release version for consistency, for example:

```text
v0.2.0
```

This makes issue reports and release audits easier.

## Release Checklist

Before publishing a release:

- Compile the minimal example.
- Compile the academic CV example.
- Check that generated PDFs have correct metadata.
- Check that no old usernames or stale links remain.
- Check that license and usage policy are up to date.
- Check that source files contain copyright notices.
- Check that user documentation tells users not to edit `src/`.
- Check that examples contain fictional or safe sample data.
- Update preview PDFs and images in `docs/assets/`.
- Update `CHANGELOG.md`.
- Update `CITATION.cff` version if needed.
- Create and push a release tag.

## Repository URL

Official repository:

```text
https://github.com/yixnhuang/vectra
```