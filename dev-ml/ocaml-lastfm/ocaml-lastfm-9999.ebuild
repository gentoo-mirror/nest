# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DUNE_PKG_NAME="lastfm"
EGIT_REPO_URI="https://github.com/savonet/${PN}.git"

inherit dune git-r3

DESCRIPTION="OCaml interface for Lastfm"
HOMEPAGE="https://github.com/savonet/ocaml-lastfm"
SRC_URI=""

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+ocamlopt"

RDEPEND="dev-ml/ocamlnet:=[ocamlopt?]
	dev-ml/ocaml-xmlplaylist:=[ocamlopt?]
	dev-ml/pcre-ocaml:=[ocamlopt?]"
