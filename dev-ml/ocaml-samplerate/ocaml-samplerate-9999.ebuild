# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DUNE_PKG_NAME="samplerate"
EGIT_REPO_URI="https://github.com/savonet/${PN}.git"

inherit dune git-r3

DESCRIPTION="OCaml bindings to libsamplerate"
HOMEPAGE="https://github.com/savonet/ocaml-samplerate"
SRC_URI=""

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+ocamlopt"

RDEPEND="media-libs/libsamplerate"
BDEPEND="dev-ml/dune-configurator:0=
	virtual/pkgconfig"
