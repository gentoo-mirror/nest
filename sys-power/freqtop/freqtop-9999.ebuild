# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 toolchain-funcs

DESCRIPTION="Monitor for the CPU Frequency Scaling under Linux"
HOMEPAGE="https://github.com/stolk/freqtop"
EGIT_REPO_URI="https://github.com/stolk/${PN}.git"

LICENSE="MIT"
SLOT="0"

src_prepare() {
	default

	sed -i  -e "s/-lm/-lm \$(LDFLAGS)/" \
		-e "s/(CC)/(CC) \$(CFLAGS)/" Makefile \
		|| die "sed failed for Makefile"
}

src_compile() {
	emake CC="$(tc-getCC)"
}

src_install() {
	einstalldocs
	doman freqtop.1
	dobin freqtop
}
