# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DUNE_PKG_NAME="pulseaudio"
EGIT_REPO_URI="https://github.com/savonet/${PN}.git"

inherit dune git-r3

DESCRIPTION="OCaml bindings to pulseaudio"
HOMEPAGE="https://github.com/savonet/ocaml-pulseaudio"
SRC_URI=""

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+ocamlopt"

RDEPEND="media-sound/pulseaudio"
BDEPEND="dev-ml/dune-configurator:0=
	virtual/pkgconfig"
