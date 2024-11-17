# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/phmarek/${PN}.git"

inherit common-lisp-3 git-r3

DESCRIPTION="Common Lisp JSON serializer written with simplicity in mind"
HOMEPAGE="https://github.com/phmarek/yason"

LICENSE="BSD"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-lisp/alexandria
	dev-lisp/trivial-gray-streams"
BDEPEND="dev-lisp/asdf
	test? ( dev-lisp/unit-test )"

src_test() {
	local -x CL_SOURCE_REGISTRY="${S}:${CLSYSTEMROOT}"
	common-lisp-export-impl-args "$(common-lisp-find-lisp-impl)"

	${CL_BINARY} "${CL_EVAL}" "(asdf:test-system :yason)" \
		|| die "test failed"
}
