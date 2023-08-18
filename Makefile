metadata ?= schema.json
dcp := docker compose run --rm pandoc

.PHONY: serve clean version intermediate html pdf all

default: all

serve:
	@python3 -m http.server -d outputs 8081

clean:
	rm outputs/*

version:
	@${dcp} --version

intermediate: templates/resume.pandoc.md
	@${dcp} --standalone \
		--template=templates/resume.pandoc.md \
		--output=outputs/intermediate.md \
		--metadata-file=${metadata} \
		README.md

html: intermediate templates/header.yml
	@${dcp} --standalone \
		--lua-filter=filters/list-tables-html.lua \
		--output=outputs/resume.html \
		templates/header.yml \
		outputs/intermediate.md

pdf: templates/resume.pandoc.tex
	@${dcp} --standalone \
		--template templates/resume.pandoc.tex \
		--output=outputs/resume.pdf \
		--metadata-file=${metadata} \
		README.md

all: html pdf
