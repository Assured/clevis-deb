-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: clevis
Binary: clevis, clevis-dracut, clevis-luks, clevis-systemd, clevis-udisks2
Architecture: linux-any all
Version: 8-1
Maintainer: Christoph Biedl <debian.axhn@manchmal.in-ulm.de>
Homepage: https://github.com/latchset/clevis
Standards-Version: 4.1.1
Build-Depends: debhelper (>= 10~), curl, dracut, jose, libaudit-dev (>= 1:2.7.8), libglib2.0-dev, libjansson4 (>= 2.10), libjose-dev, libluksmeta-dev (>= 8), libpwquality-tools, libssl-dev, libudisks2-dev, pkg-config, systemd, tang
Package-List:
 clevis deb net optional arch=linux-any
 clevis-dracut deb net optional arch=all
 clevis-luks deb net optional arch=all
 clevis-systemd deb net optional arch=linux-any
 clevis-udisks2 deb net optional arch=linux-any
Checksums-Sha1:
 b27edda3e20c62ec3dad7048dd020c6bf9e2dc6a 133831 clevis_8.orig.tar.bz2
 93029bd20d59a97bcbf7def6fcf96da5ae9157f2 4064 clevis_8-1.debian.tar.xz
Checksums-Sha256:
 540f72d8fd9a6f8889f4c8f4e54a9872a2d3a55c337736217c44c49f925964a0 133831 clevis_8.orig.tar.bz2
 6613673e0936b2d01001577af247c912bd1057c3e70333f215648b3254e6241b 4064 clevis_8-1.debian.tar.xz
Files:
 453b43c071ea5fe76ea54a60e77ee875 133831 clevis_8.orig.tar.bz2
 c8f3d98fb58236788ced72f81b73ddc4 4064 clevis_8-1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJaHlzGAAoJEMQsWOtZFJL99uIP/iIWn+DC4kWG29X9+Y/8B7hc
54aTeD3hSlEupxxoYLrOOUGvJZdEV4lKkqu4sWKYputXwyFvtOQpKZUFSrO1pdy5
gl9KMpAMn7wfnjphmdP0x02nnMmgam2nbJ+9Obbz+FrUiuDu1l9atfZoXqrqj0C3
wi/SvBuUoxqgUU9pp9A2Y587lCpHCmgJH7gjac43pZPsYWEAqSpWllCfCg02Fdc4
4RkQ2ufeWGymTzQnSCvlfnS57Q9o2Eo8YEzkHYmmN8EBGFmkHWrBGaSYy1EKLP9q
90FrSXP5TLqtU/tGKVwG/1nKq+AhD1Jkvnuwg4cr9JzO+VKHuLpJVueWw9tJyoih
eaMi5M1Hsqyb8iDkezn+zt69LYLnvrwrI7YkG0GX2ga31BdP7q8boS1fKd5RQFyB
hK/Yiu9bX020k7+EmMJ40AuDabR29+bA0auoyL1LAzp9sxMHr+A4a281jC/15RVx
4P8f4BDol5fe1cN9HhIrZoWMcjb2jfN2soqzBaRnmbLSZ5QYzbfJJLbW2tQH4WfS
7U3ZQi6VsoZrtvnTd6w1tcVGdCWPmOWrF05C0V6cysPMKshH15zi2ioRFSdLeyjJ
ijDZ4SARkepK1dpk8QSnb3MGjk9DXUYdTRTJetnmoa6z2Dw/9kiOs+QK+TXE5/3L
pvm8kUKGGYGj4WU1nGiu
=zv3I
-----END PGP SIGNATURE-----
