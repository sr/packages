TODAY = $(shell date +"%Y%m%d")

clean:
	@ rm -rf dist

dist/docker-gc_0.1.0-$(TODAY)_all.deb:
	bin/pkg-docker-gc $@ "dist"

.PHONY: \
	clean
