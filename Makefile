git_version = $$(git branch 2>/dev/null | sed -e '/^[^*]/d'-e's/* \(.*\)/\1/')
npm_bin= $$(npm bin)

all: test
install:
	@npm install
test: install
	cd ./node_modules/autoresponsive_react_native_sample_android_ci && make test-android
jshint:
	@${npm_bin}/jshint .
.PHONY: test
