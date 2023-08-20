.PHONY: serve clean build pdf html all

default: all

serve:
	@python3 -m http.server 8081

clean:
	rm outputs/*

build:
	docker compose build

pdf:
	docker compose run --rm pandoc --pdf outputs/resume.pdf

html:
	docker compose run --rm pandoc --html outputs/resume.html

all:
	docker compose run --rm pandoc
