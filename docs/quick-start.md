# Quick Start

This guide explains how to quickly create a CV or resume using VECTRA.

VECTRA is designed to be simple for users: most users only need to edit profile
and section files. The template design, layout, typography, spacing, and footer
system are already defined.

## 1. Clone the Repository

Clone the official repository:

```bash
git clone https://github.com/yixnhuang/vectra.git
cd vectra
```

## 2. Install a LaTeX Distribution

You need a working LaTeX installation.

Recommended options:

- TeX Live
- MacTeX
- MiKTeX
- Overleaf

The default build uses `latexmk` with pdfLaTeX.

## 3. Edit Your Profile

Open:

```text
cv/profile.tex
```

Update your personal information:

```latex
\VectraSetName{Your Name}
\VectraSetEmail{your.email@example.edu}
\VectraSetWebsite{https://your-website.example.com}
\VectraSetGitHub{https://github.com/your-username}
```

Optional fields include:

```latex
\VectraSetLinkedIn{}
\VectraSetORCID{}
\VectraSetPhone{}
\VectraSetLocation{}
```

You may also update PDF metadata:

```latex
\VectraSetPDFTitle{Your Name's CV}
\VectraSetPDFAuthor{Your Name}
\VectraSetPDFSubject{Curriculum Vitae}
\VectraSetPDFKeywords{Your Name, CV, academic CV}
```

## 4. Edit Document Settings

Open:

```text
cv/settings.tex
```

The main setting most users may want to change is the date mode:

```latex
\VectraSetDateMode{today}
```

Available date modes:

```text
today  - use the current compile date
fixed  - use a fixed update date
none   - hide the update date
```

For a fixed date:

```latex
\VectraSetDateMode{fixed}
\VectraSetFixedDate{January 2026}
```

Footer modes:

```text
full   - left date, center name, right page number
simple - center name, right page number
none   - hide footer content
```

Default recommendation:

```latex
\VectraSetFooterMode{full}
```

## 5. Edit Your CV Sections

Edit files under:

```text
cv/sections/
```

The personal CV structure includes:

```text
education.tex
research-interests.tex
research-experience.tex
projects.tex
awards.tex
leadership-service.tex
skills.tex
certifications.tex
```

Add, remove, or revise entries inside these files.

Most entries follow this pattern:

```latex
\VectraEducationEntry
    {Institution}
    {Degree or Program}
    {Location}
    {Date}
```

or:

```latex
\VectraProjectEntry
    {Project Title}
    {Date}
    {Technologies or Role}
    {
        \item First achievement or contribution.
        \item Second achievement or contribution.
    }
```

## 6. Build the PDF

From the repository root, run:

```bash
make cv
```

The generated PDF will appear in:

```text
output/
```

## 7. Build Examples

To build all examples:

```bash
make examples
```

To build everything:

```bash
make all
```

## 8. Clean Build Files

To remove LaTeX auxiliary files:

```bash
make clean
```

To remove generated PDFs from `output/`:

```bash
make clean-output
```

To remove both:

```bash
make distclean
```

## 9. What Not to Modify

Most users should not edit:

```text
src/
cv/main.tex
Makefile
latexmkrc
```

The files in `src/` define the template design and are part of the VECTRA
Template Source.

Users should only edit their personal content files unless they are maintaining
the official VECTRA repository.

## 10. Sharing VECTRA

You may publish and share your generated CV or resume PDF.

You may not redistribute or republish the VECTRA template source.

To share the template, link to the official repository:

```text
https://github.com/yixnhuang/vectra
```