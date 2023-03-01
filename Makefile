dcp := docker compose run --rm pandoc

.PHONY: serve clean version html

serve:
	@python3 -m http.server

clean:
	rm outputs/*

version:
	@${dcp} --version

intermediate: metadata.json templates/resume.pandoc.md
	@${dcp} --standalone \
		--template=templates/resume.pandoc.md \
		--output=outputs/intermediate.md \
		--metadata-file=metadata.json \
		README.md

html: intermediate templates/header.yml
	@${dcp} --standalone \
		--lua-filter=filters/list-tables-html.lua \
		--output=outputs/resume.html \
		templates/header.yml \
		outputs/intermediate.md

