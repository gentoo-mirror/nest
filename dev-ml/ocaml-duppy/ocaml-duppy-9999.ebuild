# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_REPO_URI="https://github.com/savonet/${PN}.git"
EGIT_SUBMODULES=()

inherit autotools findlib git-r3

DESCRIPTION="OCaml advanced scheduler"
HOMEPAGE="https://github.com/savonet/ocaml-duppy"
SRC_URI=""

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="debug +ocamlopt profiling ssl"

RDEPEND="dev-lang/ocaml:=[ocamlopt?]
	dev-ml/pcre-ocaml:=
	ssl? ( dev-ml/ocaml-ssl:= )"
DEPEND="${RDEPEND}
	dev-ml/findlib"

DOCS=( CHANGES README )

PATCHES=( "${FILESDIR}"/"${PN}"-0.6.0-configure.patch )

src_prepare() {
	default

	m4/bootstrap || die "bootstrap failed"
	sed -i 's/AC_CHECK_TOOL_STRICT/AC_CHECK_TOOL/g' m4/ocaml.m4 \
		|| die "Failed editing m4/ocaml.m4!"
	AT_M4DIR="m4" eautoreconf
}

src_configure() {
	econf "$(use_enable debug debugging)" \
		"$(use_enable ocamlopt nativecode)" \
		"$(use_enable profiling)" \
		"$(use_enable ssl)"
}

src_install() {
	einstalldocs
	findlib_src_install
}
