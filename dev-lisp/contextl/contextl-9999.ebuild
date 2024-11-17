# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/pcostanza/${PN}.git"

inherit common-lisp-3 git-r3

DESCRIPTION="CLOS extension for Context-oriented Programming"
HOMEPAGE="https://github.com/pcostanza/contextl"

LICENSE="MIT"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-lisp/closer-mop
	dev-lisp/lw-compat"
BDEPEND="dev-lisp/asdf
	test? ( dev-lisp/sbcl:* )"

src_test() {
	pushd test || die "pushd failed"
	./sbcl-runall || die "test failed"
	popd || die "popd failed"
}
