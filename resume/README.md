# Typst resume

## Compile locally

Install Typst, then run:

```bash
typst compile resume.typ An_Nguyen_Resume.pdf
```

For automatic recompilation while editing:

```bash
typst watch resume.typ An_Nguyen_Resume.pdf
```

## VS Code

Install a Typst extension such as Tinymist for preview, formatting, and diagnostics.

## Before publishing

Replace the placeholder LinkedIn and Google Scholar URLs in `resume.typ`.

## Suggested repository location

```text
resume/resume.typ
assets/documents/An_Nguyen_Resume.pdf
```

Then link the PDF from your webpage:

```html
<a href="/assets/documents/An_Nguyen_Resume.pdf" target="_blank">
  Download resume
</a>
```
