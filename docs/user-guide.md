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

## Education Entries

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

## Research Experience Entries

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

## General Experience Entries

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

## Project Entries

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

## Publication Entries

Use:

```latex
\VectraPublicationEntry
    {Authors}
    {Title}
    {Venue or Status}
    {Year}
```

Examples of status:

```text
Manuscript in preparation
Conference submission under review
Preprint
Accepted
Published
```

Do not include a Publications section if there are no publications,
preprints, submissions, or legitimate manuscripts to list.

## Award Entries

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

## Leadership and Service Entries

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

## Certification Entries

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