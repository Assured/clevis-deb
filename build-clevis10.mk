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
		$(SSH_REMOTE):debian-build-dir-clevis10/'*clevis?10*' \
		$(SSH_REMOTE):debian-build-dir-clevis10/build-clevis10.mk \
		.

build:
	-rm clevis-10/configure.ac clevis-10/src/ clevis-10/tests/
	-cd debian && rm \
 aclocal.m4      config.log      configure.ac    doc/            Makefile.in     test-driver\
 autom4te.cache/ config.status   COPYING         install-sh      missing         tests\
 compile         config.sub      Makefile        .pc             config.guess    configure\
 depcomp         Makefile.am     src
	#tar xvf clevis_10.orig.tar.bz2 clevis-10
	#cd clevis-10 && dpkg-source --commit
	cd clevis-10 && quilt pop -a -f
	cd clevis-10 && DEB_BUILD_OPTIONS="nocheck" dpkg-buildpackage -us -uc -d
