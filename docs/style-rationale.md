# Style Rationale

This document explains the visual and structural design principles behind
VECTRA.

VECTRA is intentionally opinionated. It is designed to provide a fixed,
professional, academic CV style rather than a broad style-customization system.

## Design Goal

The goal is to produce CVs and resumes that are:

- Academic
- Minimal
- Compact
- Readable
- Print-friendly
- Research-oriented
- Consistent
- Easy to scan

The template is especially suitable for early-career researchers, graduate
students, research assistants, and applicants preparing academic or
research-focused documents.

## Overall Layout

VECTRA uses a single-column document body with structured entries.

A typical major entry conceptually follows this structure:

```text
Institution or Project Title                         Location
Role, Degree, or Description                         Date
Additional context
Bullet points if needed
```

This layout is common in modern academic CVs and research resumes.

For scholarly and public-facing records, VECTRA uses a compact indexed style:

```text
[C1] Authors. Title. Venue, Year. Location. [Links]
[T1] Title. Event, Location. [Links]       Date
[M1] Title. Outlet. [Links]                Date
```

This gives the template a recognizable academic record system while remaining
close to mainstream CV conventions.

## Why Not a Sidebar Layout?

VECTRA avoids decorative sidebars and large colored blocks.

Reasons:

- Sidebars reduce usable content width.
- They can make academic CVs look overly commercial.
- They may reduce compatibility with text extraction.
- They can be harder to adapt to long academic documents.

## Why Not a Two-Column Section Layout?

Some older CVs use a left column for section titles and a right column for
content. VECTRA does not use that as the default.

Reasons:

- It wastes horizontal space.
- It is less flexible for early-career CVs.
- It can reduce readability for dense technical content.
- It is less suitable for resume-style applications.

Instead, VECTRA uses full-width section headings and structured entries.

## Typography

VECTRA uses Charter by default.

Charter was selected because it is:

- Readable
- Compact
- Academic in tone
- More polished than default Computer Modern for CV use
- Suitable for black-and-white printing

The default body size is 10pt for a compact academic CV.

## Name and Header

The name is visually prominent but not oversized.

Default concept:

```text
Name: 28pt
Contact information: normal body size
```

The header is centered because this is a common and stable academic CV
convention.

Default contact items are text-based rather than icon-based.

Reasons:

- Better academic tone.
- Better machine readability.
- Fewer package dependencies.
- Better compatibility with print and PDF extraction.

VECTRA supports constrained header width so that long contact lines do not span
the entire page. Contact items are kept together during wrapping, and separators
are omitted at line breaks.

## Section Design

Sections use:

- Bold section titles
- A thin rule below each section title
- Moderate spacing before and after the heading

The rule creates visual structure without adding decorative complexity.

VECTRA avoids all-caps section titles by default to preserve readability and a
modern academic appearance.

## Entry Design

Major entries use a two-column structure with adaptive right metadata.

Examples include:

- Education
- Research Experience
- General Experience
- Projects

Benefits:

- Easy scanning of chronology.
- Strong academic CV convention.
- Clean separation between content and metadata.
- Compact use of space.

The right metadata column is adaptive. It uses the natural width of the current
entry's date, term, or location instead of a globally fixed width. This gives
the left content more space when the right metadata is short.

## Indexed Academic Records

VECTRA introduces an indexed compact academic record style for scholarly and
public-facing outputs.

Examples:

```text
[C1] Authors. Title. Venue, Year. Location. [Links]
[T1] Title. Event, Location. [Links]       Date
[M1] Title. Outlet. [Links]                Date
```

This style is inspired by compact academic CV publication lists, where the
left-side label helps readers scan long records while wrapped text remains
aligned with the entry body.

VECTRA applies this idea to different kinds of academic records:

- Publications use author-first citation formatting.
- Talks use title-first presentation formatting.
- Media uses title-first coverage formatting.
- Teaching remains role-grouped and is not indexed by default.

This gives VECTRA a recognizable academic style while remaining close to
mainstream CV conventions.

## Publications

Publications use an author-first citation style:

```text
[C1] Authors. Title. Venue, Year. Location. [Links]
```

This reflects mainstream academic CV practice, where author order and authorship
position are important.

The title is emphasized to make the research topic easier to scan. Users may
also bold their own name in the author list.

Publication groups, such as Preprints, Conference Papers, and Journal Articles,
help organize longer publication lists.

## Talks

Talks use title-first indexed records:

```text
[T1] Title. Event, Location. [Links]       Date
```

Talks are title-first because the core information is what was presented and
where it was presented.

Talks may be grouped by type:

- Invited Talks
- Conference Presentations
- Seminars
- Posters

Unlike publications, talks use right-aligned dates because talks are event-like
records rather than bibliographic citations.

## Media

Media entries use title-first indexed records:

```text
[M1] Title. Outlet. [Links]       Date
```

Media is separate from Talks because it represents interviews, press coverage,
podcasts, articles, or other public-facing coverage rather than academic
presentations.

Media may be grouped by type:

- Interviews
- Press Coverage
- Podcasts
- Articles

## Teaching Records

Teaching entries are not indexed by default.

Teaching is treated as an experience record rather than a publication-like
scholarly output. Entries are grouped by role, such as Instructor, Teaching
Assistant, or Guest Lecturer, and use right-aligned terms for compact scanning.

Example:

```text
Instructor
Example University, Introduction to Robotics. [Course Website]       Fall 2026
```

## Entry Spacing

VECTRA separates entry spacing by content type.

Major entries use larger spacing:

- Education
- Research Experience
- General Experience
- Projects

Record entries use tighter spacing:

- Publications
- Talks
- Media
- Teaching

Compact entries use minimal spacing:

- Awards
- Service
- Certifications

Skill groups use their own dense spacing.

This design keeps narrative CV entries readable while allowing long academic
record sections to remain compact.

Section-to-section spacing is controlled separately from entry-to-entry spacing.
The template cancels trailing entry gaps before starting a new section so that
section spacing remains consistent regardless of the previous section's final
entry type.

## Bullet Lists

Bullets are compact and minimally indented.

VECTRA assumes that CV bullets should be concise and evidence-oriented.

Recommended bullet content:

- Contribution
- Method
- Result
- Scope
- Technical detail

Avoid:

- Long paragraphs
- Generic responsibilities
- Overly promotional language

## Footer Design

VECTRA supports a structured footer with three zones:

```text
Left:   Last updated date
Center: Name
Right:  Page number
```

Default concept:

```text
Last updated: <date>           <Name>           Page X of Y
```

This footer supports academic use because it communicates document currency and
identity while preserving a formal style.

## Color

The default color system is monochrome:

```text
Text: black
Links: black
Rules: black
```

Reasons:

- Print-friendly.
- Academic.
- Minimal.
- Avoids overdesigned resume aesthetics.

## Icons

Icons are not used by default.

Reasons:

- Academic CVs do not need decorative contact icons.
- Text labels are clearer.
- Icons may reduce machine readability.
- Icons add dependency complexity.

## Density

VECTRA uses a compact but readable density.

It is not as compressed as a one-page commercial resume and not as loose as a
portfolio document.

The intended balance:

- Enough content for research-oriented applications.
- Enough whitespace for readability.
- Consistent spacing without manual adjustment.
- Compact handling of longer academic record sections.

## Content Philosophy

The template should help users emphasize:

- Education
- Research experience
- Projects
- Publications
- Talks
- Teaching
- Media
- Awards
- Leadership and service
- Technical skills

The template should not encourage users to over-customize appearance.

## User Experience Philosophy

VECTRA separates:

```text
Content files       -> user-editable
Template source     -> not user-editable
Maintainer settings -> internal
```

This allows users to focus on writing a strong CV while maintaining a consistent
visual identity across documents created with VECTRA.

## Summary

VECTRA is designed to be:

```text
clean, academic, compact, structured, and stable
```

It intentionally avoids excessive customization so that the final document
looks professional by default.