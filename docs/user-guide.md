# User Guide

This guide explains how to write CV content using VECTRA.

VECTRA is intentionally opinionated. The visual style is fixed so that users can
focus on content rather than formatting.

## Files Users Should Edit

Most users should edit only:

```text
cv/profile.tex
cv/settings.tex
cv/sections/*.tex
```

## Files Users Should Not Edit

Most users should not edit:

```text
src/
cv/main.tex
Makefile
latexmkrc
```

The `src/` directory contains the template source code, layout definitions,
typography, spacing, header, footer, and section formatting.

## Profile Fields

Use `cv/profile.tex` to set identity and contact information.

Example:

```latex
\VectraSetName{Your Name}
\VectraSetEmail{your.email@example.edu}
\VectraSetWebsite{https://your-website.example.com}
\VectraSetGitHub{https://github.com/your-username}
```

Optional fields:

```latex
\VectraSetTitle{}
\VectraSetLinkedIn{}
\VectraSetORCID{}
\VectraSetPhone{}
\VectraSetLocation{}
```

If a field is empty, it will not be printed in the header.

## PDF Metadata

Set PDF metadata in `cv/profile.tex`:

```latex
\VectraSetPDFTitle{Your Name's CV}
\VectraSetPDFAuthor{Your Name}
\VectraSetPDFSubject{Curriculum Vitae}
\VectraSetPDFKeywords{Your Name, CV, academic CV}
```

Good metadata helps PDF readers, indexing tools, and document management
systems.

## Settings

Use `cv/settings.tex` for simple document-level settings.

### Date Mode

```latex
\VectraSetDateMode{today}
```

Available modes:

```text
today
fixed
none
```

For a fixed date:

```latex
\VectraSetDateMode{fixed}
\VectraSetFixedDate{January 2026}
```

### Footer Mode

```latex
\VectraSetFooterMode{full}
```

Available modes:

```text
full
simple
none
```

Recommended for academic CVs:

```latex
\VectraSetFooterMode{full}
```

## Empty Optional Fields

Many VECTRA entry commands allow optional fields to be left empty.

If an optional field is empty, VECTRA will not print that field and will not
create an extra blank line.

For example, if a research experience entry does not have an advisor, leave the
advisor field empty:

```latex
\VectraResearchExperienceEntry
    {Example Robotics Lab}
    {Research Assistant}
    {Ann Arbor, MI}
    {2025 -- Present}
    {}
    {Robotic Manipulation, Planning}
    {
        \item Developed planning algorithms for tabletop manipulation tasks.
    }
```

This will omit the advisor line entirely.

Similarly, project dates, technologies, certification dates, award descriptions,
and other non-essential fields may be left empty when they are not applicable.

## Header Customization

VECTRA provides a fixed academic header style, but users may add controlled
custom contact links when needed.

### Header Width

The header content can be constrained to a narrower width:

```latex
\VectraSetHeaderWidth{0.86\textwidth}
```

Recommended values:

```text
0.90\textwidth  - wider header
0.86\textwidth  - default recommended width
0.80\textwidth  - more compact centered header
```

### Custom Header Links

Use:

```latex
\VectraAddContactLink{Display Text}{URL}
```

Example:

```latex
\VectraAddContactLink{Google Scholar}{https://scholar.google.com/}
\VectraAddContactLink{Lab}{https://example-lab.org}
```

Custom links are appended after the built-in contact fields.

### Custom Header Text

Use:

```latex
\VectraAddContactText{Text}
```

Example:

```latex
\VectraAddContactText{Ann Arbor, MI}
```

Most users should keep custom header items short. Long contact items may cause
line overflow because contact items are kept together when wrapping.

## Sections

Use:

```latex
\VectraSection{Section Name}
```

Examples:

```latex
\VectraSection{Education}
\VectraSection{Research Experience}
\VectraSection{Selected Projects}
\VectraSection{Awards \& Honors}
```

## Education

Use:

```latex
\VectraEducationEntry
    {Institution}
    {Degree or Program}
    {Location}
    {Date}
```

Example:

```latex
\VectraEducationEntry
    {Example University}
    {M.S. in Robotics}
    {Ann Arbor, MI}
    {Expected May 2027}
```

Recommended order:

- Most recent degree first
- Institution name
- Degree or program
- Location
- Graduation or expected graduation date

## Research Interests

Use:

```latex
\VectraResearchInterests{
Robotics; manipulation; perception; planning under uncertainty.
}
```

Recommended style:

- Keep it short
- Use keywords or one compact sentence
- Avoid long statement-of-purpose paragraphs

## Research Experience

Use:

```latex
\VectraResearchExperienceEntry
    {Institution}
    {Role}
    {Location}
    {Date}
    {Advisor}
    {Topics}
    {
        \item Contribution or responsibility.
    }
```

Advisor, topics, location, date, and bullet items may be left empty if they are
not applicable. Empty optional fields are omitted automatically.

Example:

```latex
\VectraResearchExperienceEntry
    {Example Robotics Laboratory}
    {Research Assistant}
    {Ann Arbor, MI}
    {Sep. 2025 -- Present}
    {Prof. Example Advisor}
    {Robotic Manipulation, Planning, Perception}
    {
        \item Developed planning pipelines for evaluating tabletop manipulation tasks.
        \item Analyzed task completion time and resource usage across planning methods.
    }
```

Guidelines:

- Use action verbs
- Focus on contribution, method, and outcome
- Keep each bullet concise
- Prefer one to three bullets per entry
- Use reverse chronological order

## General Experience

Use:

```latex
\VectraExperienceEntry
    {Organization}
    {Role}
    {Location}
    {Date}
    {Topic or Area}
    {Additional Note}
    {
        \item Contribution or responsibility.
        \item Result or impact.
    }
```

This is useful for internships, professional roles, or non-research experience.

## Project

Use:

```latex
\VectraProjectEntry
    {Project Title}
    {Date}
    {Technologies or Role}
    {
        \item Contribution or technical detail.
        \item Result, evaluation, or outcome.
    }
```

The date, technologies/role field, and bullet list may be left empty if they are
not applicable.

Guidelines:

- Select only the most relevant projects
- Mention tools or methods
- Include measurable results when available
- Avoid listing too many small class projects

## Publications

VECTRA formats publications as indexed compact academic records.

Recommended format:

```text
[C1] Authors. Title. Venue, Year. Location. [Links]
```

Use:

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

Example:

```latex
\VectraPublicationEntry
    {C1}
    {\textbf{Jordan Scholar}, Alex Researcher, and Taylor Advisor}
    {Planning for Multi-Arm Tabletop Rearrangement with Time and Buffer Optimization}
    {Robotics: Science and Systems (RSS)}
    {2026}
    {Los Angeles, CA}
    {
        \VectraPublicationLink{Preprint}{https://example.com/preprint}
        \VectraPublicationLink{Code}{https://github.com/example/project}
        \VectraPublicationLink{BibTeX}{https://example.com/bibtex}
    }
```

Recommended prefixes:

```text
P   Preprint
C   Conference paper
J   Journal article
W   Workshop paper
PT  Patent
```

Examples:

```text
[P1]
[C1]
[J1]
[W1]
[PT1]
```

The title is automatically bolded. Users may bold their own name in the authors
field:

```latex
{\textbf{Jordan Scholar}, Alex Researcher, and Taylor Advisor}
```

### Publication Links

Publication links are written inline in bracket style:

```latex
\VectraPublicationLink{Preprint}{https://example.com/preprint}
\VectraPublicationLink{Code}{https://github.com/example/project}
\VectraPublicationLink{BibTeX}{https://example.com/bibtex}
```

This renders conceptually as:

```text
[Preprint] [Code] [BibTeX]
```

If a publication has no links, leave the links field empty:

```latex
{}
```

### Publication Notes

Use publication notes for equal contribution or similar explanations:

```latex
\VectraPublicationNote{(The superscript \textsuperscript{*} indicates equal contribution.)}
```

Example author field:

```latex
{\textbf{Jordan Scholar}\textsuperscript{*}, Alex Researcher\textsuperscript{*}, and Taylor Advisor}
```

### Publication Groups

Use publication groups to organize entries:

```latex
\VectraPublicationGroup{Preprints}
\VectraPublicationGroup{Conference Papers}
\VectraPublicationGroup{Journal Articles}
```

## Talks

VECTRA formats talks as indexed two-column academic records.

Recommended format:

```text
[T1] Title. Event, Location. [Links]       Date
```

Use:

```latex
\VectraTalkEntry
    {Prefix}
    {Title}
    {Event}
    {Location}
    {Links}
    {Date}
```

Example:

```latex
\VectraTalkEntry
    {T1}
    {Planning for Multi-Arm Rearrangement under Resource Constraints}
    {Example Robotics Seminar, Example University}
    {Ann Arbor, MI}
    {
        \VectraTalkLink{Slides}{https://example.com/slides}
        \VectraTalkLink{Video}{https://example.com/video}
    }
    {Mar. 2026}
```

Talks may be grouped by type:

```latex
\VectraTalkGroup{Invited Talks}
\VectraTalkGroup{Conference Presentations}
\VectraTalkGroup{Posters}
```

Talk links are inline bracket-style links:

```latex
\VectraTalkLink{Slides}{https://example.com/slides}
\VectraTalkLink{Video}{https://example.com/video}
```

If there are no links, leave the links field empty:

```latex
{}
```

## Media

Media entries are used for interviews, press coverage, podcasts, articles, and
similar public-facing coverage. Media is separate from academic talks.

Recommended format:

```text
[M1] Title. Outlet. [Links]       Date
```

Use:

```latex
\VectraMediaEntry
    {Prefix}
    {Title}
    {Outlet}
    {Links}
    {Date}
```

Example:

```latex
\VectraMediaEntry
    {M1}
    {Interview on Multi-Robot Planning}
    {Example Robotics Podcast}
    {
        \VectraMediaLink{Interview}{https://example.com/interview}
    }
    {May 2026}
```

Media entries may be grouped:

```latex
\VectraMediaGroup{Interviews}
\VectraMediaGroup{Press Coverage}
\VectraMediaGroup{Podcasts}
```

If there are no links, leave the links field empty:

```latex
{}
```

## Teaching Experience

Teaching entries are grouped by role and use compact two-column records.

Recommended format:

```text
Role
Institution, Course Title. [Links]       Term
```

Use:

```latex
\VectraTeachingGroup{Role}

\VectraTeachingEntry
    {Institution}
    {Course Title}
    {Links}
    {Term}
```

Example:

```latex
\VectraTeachingGroup{Instructor}

\VectraTeachingEntry
    {Example University}
    {Introduction to Robotics}
    {
        \VectraTeachingLink{Course Website}{https://example.com/course}
        \VectraTeachingLink{Syllabus}{https://example.com/syllabus}
    }
    {Fall 2026}
```

Common teaching groups include:

```text
Instructor
Co-Instructor
Teaching Assistant
Guest Lecturer
Mentor
```

If there are no links, leave the links field empty:

```latex
{}
```

Teaching entries are not indexed by default because teaching is treated as an
experience record rather than a publication-like scholarly output.

## Award

Use:

```latex
\VectraAwardEntry
    {Award Name}
    {Organization or Description}
    {Year}
```

Example:

```latex
\VectraAwardEntry
    {Outstanding Graduating Undergraduate}
    {Example University}
    {2026}
```

Guidelines:

- Use official award names when available
- Use clear descriptions when award names are unfamiliar
- Put the most recent or most important awards first

## Leadership and Service

Use:

```latex
\VectraServiceEntry
    {Role}
    {Organization}
    {Date}
```

Example:

```latex
\VectraServiceEntry
    {Student Mentor}
    {Example Robotics Laboratory}
    {2025 -- Present}
```

## Skill Groups

Use:

```latex
\VectraSkillGroup
    {Category}
    {Items}
```

Example:

```latex
\VectraSkillGroup
    {Programming}
    {Python, C++, MATLAB, Java}
```

Recommended categories:

- Programming
- Machine Learning
- Robotics
- Hardware and Embedded Systems
- Tools
- Languages

## Certification

Use:

```latex
\VectraCertificationEntry
    {Certification Name}
    {Issuer}
    {Date or Note}
```

Issuer and date/note fields may be left empty when not applicable. Empty fields are omitted automatically:

```latex
\VectraCertificationEntry
    {Machine Learning Specialization}
    {DeepLearning.AI and Stanford University, Coursera}
    {}
```

## Content Writing Guidelines

Good CV entries are:

- Specific
- Concise
- Consistent
- Reverse chronological
- Focused on contribution and evidence

Avoid:

- Long paragraphs in experience entries
- Excessive bolding or manual formatting
- Manual `\vspace`
- Custom layout commands
- Decorative symbols
- Overly broad claims without evidence

## Right Metadata Columns

VECTRA automatically measures the width of right-side metadata such as dates,
terms, and short locations.

This allows entries such as:

```text
Project Title                                      2026
Talk Title                                        Mar. 2026
Course Title                                      Fall 2026
```

to use only the space needed by the right-side metadata while allowing the left
content to use the remaining width.

Users should keep right-side metadata short. Long descriptions should be placed
in the main left-side content instead.

## Date Format

Recommended date formats:

```text
Sep. 2025 -- Present
Jun. 2024 -- Aug. 2024
Expected May 2027
2023
2023, 2024, 2025
```

Be consistent across the document.

## Special Characters

In LaTeX, some characters need escaping:

```text
&  -> \&
%  -> \%
_  -> \_
```

Example:

```latex
Awards \& Honors
```

## Generated Documents

You may publish, submit, upload, print, or email your generated CV or resume PDF.

Generated CVs and resumes do not require visible attribution to VECTRA.

Template source files may not be redistributed or republished.

To share VECTRA, link to the official repository:

```text
https://github.com/yixnhuang/vectra
```