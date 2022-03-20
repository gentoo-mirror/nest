# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DUNE_PKG_NAME="vorbis"
EGIT_REPO_URI="https://github.com/savonet/${PN}.git"

inherit dune git-r3

DESCRIPTION="OCaml bindings to libvorbis"
HOMEPAGE="https://github.com/savonet/ocaml-vorbis"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+ocamlopt"

RDEPEND="dev-ml/ocaml-ogg:=[ocamlopt?]
	media-libs/libvorbis"
BDEPEND="dev-ml/dune-configurator:0=
	virtual/pkgconfig"
