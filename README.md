# Resume Automation

An automated resume generation workflow.

[Pandoc](https://pandoc.org/) is used to generate a resume in multiple formats
(pdf, html) from the [jsonresume](https://jsonresume.org/) schema.

[Demo](https://kencx.github.io/resume) | [Actual Resume](https://resume.cheo.dev)

## Manual Usage

```bash
# clone the repo
$ git clone git@github.com/kencx/resume

# edit schema with details
$ vim schema.json

# generate the files in outputs/
$ make
```

`make` will do the following:

- Build the custom Docker image for Pandoc
- Use the built Pandoc image to generate the PDF and HTML resume in `outputs/`

To build with a different metadata file:

```bash
$ cp schema.json custom.json

# make changes
$ vim custom.json

$ docker compose run --rm pandoc --metadata custom.json
```

## How it works

All commands listed below are the raw `pandoc` commands that will be run in the
Python `build` script.

- All templates are stored in `templates/`
- All filters are stored in `filters/`
- All static files (fonts, CSS) are stored in `static/`
- See `defaults.yml` for default flags

The PDF is generated from an existing LaTeX template:

```bash
$ pandoc --defaults defaults.yml \
    --template templates/resume.pandoc.tex \
    --output=outputs/resume.pdf \
    README.md
```

The HTML requires two steps:

1. An intermediate Markdown file is generated from an existing Markdown template
2. The intermediate Markdown is turned into HTML with a custom stylesheet and
   lua-filter

```bash
$ pandoc --defaults defaults.yml \
    --template=templates/resume.pandoc.md \
    --output=outputs/intermediate.md \
    README.md

$ pandoc --defaults defaults.yml \
    --output=outputs/resume.html \
    --css static/latex.css \
    outputs/intermediate.md
```

## Future

- [ ] Support docx generation
- [ ] Generate HTML resume from LaTeX template

## Credits

- [latex.css](https://github.com/vincentdoerig/latex-css)
- [list-table](https://github.com/pandoc-ext/list-table)
- [pypandoc](https://github.com/JessicaTegner/pypandoc)
- [box-icons](https://boxicons.com/)
