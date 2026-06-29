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

VECTRA uses a single-column document body with right-aligned metadata inside
individual entries.

A typical entry conceptually follows this structure:

```text
Institution or Project Title                         Location
Role, Degree, or Description                         Date
Additional context
Bullet points if needed
```

This layout is common in modern academic CVs and research resumes.

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

- Better academic tone
- Better machine readability
- Fewer package dependencies
- Better compatibility with print and PDF extraction

## Section Design

Sections use:

- Bold section titles
- A thin rule below each section title
- Moderate spacing before and after the heading

The rule creates visual structure without adding decorative complexity.

VECTRA avoids all-caps section titles by default to preserve readability and a
modern academic appearance.

## Entry Design

Entries use a right-aligned metadata column for dates and locations.

Benefits:

- Easy scanning of chronology
- Strong academic CV convention
- Clean separation between content and metadata
- Compact use of space

## Entry Spacing

VECTRA separates entry spacing by content type.

Education entries are usually shorter and often do not include bullet lists, so
they use a dedicated education-entry spacing parameter. Research experience,
projects, and publications use the normal entry spacing. Awards, service, and
certifications use compact spacing.

This design keeps the visual rhythm balanced across sections while avoiding
manual spacing in user content files.

Section-to-section spacing is controlled separately from entry-to-entry spacing.
The template cancels trailing entry gaps before starting a new section so that
section spacing remains consistent regardless of the type of the previous
section's final entry.

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

- Print-friendly
- Academic
- Minimal
- Avoids overdesigned resume aesthetics

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

- Enough content for research-oriented applications
- Enough whitespace for readability
- Consistent spacing without manual adjustment

## Content Philosophy

The template should help users emphasize:

- Education
- Research experience
- Projects
- Publications when available
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