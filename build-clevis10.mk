.PHONY: check-env scp_to_build_server

check-env:
ifndef SSH_REMOTE
	$(error SSH_REMOTE is undefined)
endif

BUILD_DIR=debian-build-dir-clevis10

scp_to_build_server: check-env
	scp -r build-clevis10.mk clevis_10.orig.tar.bz2 clevis-10 $(SSH_REMOTE):debian-build-dir-clevis10

scp_back_to_git: check-env
	scp -r \
		$(SSH_REMOTE):debian-build-dir-clevis10/'*clevis-10*' \
		$(SSH_REMOTE):debian-build-dir-clevis10/'*clevis_10*' \
		.

build:
	-rm clevis-10/configure.ac clevis-10/src/Makefile.am clevis-10/src/clevis\
 clevis-10/src/clevis-decrypt-http clevis-10/src/systemd/clevis-luks-askpass clevis-10/tests/pin-http
	tar xvf clevis_10.orig.tar.bz2 clevis-10
	cd clevis-10 && dpkg-source --commit
	cd clevis-10 && DEB_BUILD_OPTIONS="nocheck" dpkg-buildpackage -us -uc -d
