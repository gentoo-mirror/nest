# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/AccelerationNet/${PN}.git"

inherit common-lisp-3 git-r3

DESCRIPTION="A Common Lisp data structure representing tabular data"
HOMEPAGE="https://github.com/AccelerationNet/data-table"

LICENSE="MIT"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-lisp/alexandria
	dev-lisp/cl-interpol
	dev-lisp/clsql
	dev-lisp/clsql-helper
	dev-lisp/collectors
	dev-lisp/iterate
	dev-lisp/symbol-munger"
BDEPEND="dev-lisp/asdf
	test? ( dev-lisp/lisp-unit2 )"

src_test() {
	local -x CL_SOURCE_REGISTRY="${S}:${CLSYSTEMROOT}"
	common-lisp-export-impl-args "$(common-lisp-find-lisp-impl)"

	${CL_BINARY} "${CL_EVAL}" "(asdf:test-system :data-table)" \
		|| die "test failed"
}