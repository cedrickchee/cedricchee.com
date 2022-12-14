submodule-update:
	git submodule update --init --recursive

setup: submodule-update

clean:
	rm -rf public

serve:
	zola serve

production-build: setup clean
	zola build

update: submodule-update
	git add -A && git commit -m "Update submodule" && git push

static: production-build
	python3 -m http.server -d ./public 3000
