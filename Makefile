ifndef TMPDIR
	TMPDIR = "/tmp"
endif

push:
	for pkg in $(shell find dist/ -name *.deb); do \
		package_cloud push sr/packages/ubuntu/wily $$pkg; \
	done

packages:
	for recipe in $(shell find . -name recipe.rb); do \
		fpm-cook package --pkg-dir "dist/" --tmp-root "$(TMPDIR)" \
			--cache-dir "$(TMPDIR)" "$$recipe"; \
	done

.PHONY: \
	packages \
	push
