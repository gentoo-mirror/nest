# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools findlib git-r3

DESCRIPTION="OCaml bindings to liblo"
HOMEPAGE="https://github.com/savonet/ocaml-lo"
EGIT_REPO_URI="https://github.com/savonet/${PN}.git"
SRC_URI=""
LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+camlp4 debug +ocamlopt profiling"
RDEPEND="dev-lang/ocaml:=[ocamlopt?]
	media-libs/liblo
	camlp4? ( dev-ml/camlp4:= )"
DEPEND="${RDEPEND}
	dev-ml/findlib
	virtual/pkgconfig"
DOCS=( CHANGES )

src_prepare() {
	default

	sed -i 's/AC_CHECK_TOOL_STRICT/AC_CHECK_TOOL/g' m4/ocaml.m4 \
		|| die "Failed editing m4/ocaml.m4!"
	AT_M4DIR="m4" eautoreconf
}

src_configure() {
	econf $(use_enable camlp4) \
		$(use_enable debug debugging) \
		$(use_enable ocamlopt nativecode) \
		$(use_enable profiling)
}

src_install() {
	findlib_src_install
	einstalldocs
}
