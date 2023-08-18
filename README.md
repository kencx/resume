# Resume Automation

An automated resume generation workflow.

[Pandoc](https://pandoc.org/) is used to generate a resume in multiple formats
(pdf, html) from the [jsonresume](https://jsonresume.org/) schema.

See @ [resume.cheo.dev](https://resume.cheo.dev)

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

## How it works

The PDF is generated from an existing LaTeX template:

```bash
$ docker compose run --rm pandoc --standalone \
		--template templates/resume.pandoc.tex \
		--output=outputs/resume.pdf \
		--metadata-file=${metadata} \
		README.md
```

The HTML requires two steps:

1. An intermediate Markdown file is generated from an existing Markdown template
2. The custom `list-tables-html` filter is used to generate HTML tables:

```bash
$ docker compose run --rm pandoc --standalone \
		--template=templates/resume.pandoc.md \
		--output=outputs/intermediate.md \
		--metadata-file=${metadata} \
		README.md

$ docker compose run --rm pandoc --standalone \
		--lua-filter=filters/list-tables-html.lua \
		--output=outputs/resume.html \
		templates/header.yml \
		outputs/intermediate.md
```

## Future

- [ ] Support docx generation
- [ ] Generate HTML resume from LaTeX template

## Credits

- [latex.css](https://github.com/vincentdoerig/latex-css)
- [lua-filters](https://github.com/pandoc/lua-filters/)
- [box-icons](https://boxicons.com/)
