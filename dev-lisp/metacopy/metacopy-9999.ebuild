# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/hraban/${PN}.git"

inherit common-lisp-3 git-r3

DESCRIPTION="Flexible Common Lisp shallow/deep copy mechanism"
HOMEPAGE="https://github.com/hraban/metacopy"

LICENSE="MIT"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-lisp/contextl
	dev-lisp/moptilities"
BDEPEND="dev-lisp/asdf
	test? ( dev-lisp/lift )"

src_test() {
	local -x CL_SOURCE_REGISTRY="${S}:${CLSYSTEMROOT}"
	common-lisp-export-impl-args "$(common-lisp-find-lisp-impl)"

	${CL_BINARY} "${CL_EVAL}" "(asdf:test-system :metacopy)" \
		|| die "test failed"
}