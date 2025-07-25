# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 go-module

DESCRIPTION="Simplistic interactive filtering tool"
HOMEPAGE="https://github.com/peco/peco"
EGIT_REPO_URI="https://github.com/peco/${PN}.git"

LICENSE="Apache-2.0 BSD BSD-2 MIT"
SLOT="0"

DOCS=( {Changes,README.md} )

src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}

src_compile() {
	ego build ./cmd/...
}

src_test() {
	ego test ./...
}

src_install() {
	einstalldocs
	dobin peco
}
