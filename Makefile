clean:
	rm -rf public

serve:
	zola serve

production-build: clean
	zola build

static: production-build
	python3 -m http.server -d ./public 3000
