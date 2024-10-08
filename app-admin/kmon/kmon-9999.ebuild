# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/orhun/${PN}.git"

inherit cargo git-r3

DESCRIPTION="Linux Kernel Manager and Activity Monitor"
HOMEPAGE="https://github.com/orhun/kmon"

LICENSE="Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 Boost-1.0 GPL-3 ISC MIT Unicode-DFS-2016"
SLOT="0"

DOCS=( {CHANGELOG,README}.md )

QA_PREBUILT="usr/bin/kmon"

src_unpack() {
	git-r3_src_unpack
	cargo_live_src_unpack
}

src_install() {
	einstalldocs
	cargo_src_install
}
