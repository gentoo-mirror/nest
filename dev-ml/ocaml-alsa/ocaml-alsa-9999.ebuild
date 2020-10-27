# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_REPO_URI="https://github.com/savonet/${PN}.git"

inherit dune git-r3

DESCRIPTION="OCaml bindings to alsa-lib"
HOMEPAGE="https://github.com/savonet/ocaml-alsa"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+ocamlopt"

RDEPEND="dev-lang/ocaml:=[ocamlopt?]
	media-libs/alsa-lib"
BDEPEND="${RDEPEND}
	dev-ml/dune:=
	dev-ml/dune-configurator:=[ocamlopt?]"

DOCS=( CHANGES README )

src_install() {
	dune_src_install alsa
}
