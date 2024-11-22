# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EDARCS_REPOSITORY="https://hub.darcs.net/hu.dwim/hu.dwim.presentation"

inherit common-lisp-3 darcs

DESCRIPTION="Common Lisp component based GUI framework"
HOMEPAGE="https://hub.darcs.net/hu.dwim/hu.dwim.presentation"

LICENSE="MIT-0"
SLOT="0"
IUSE="test"
RESTRICT="test" # HU.DWIM.DEF.NAMESPACE not found

PDEPEND="dev-lisp/hu-dwim-util"
RDEPEND="dev-lisp/cl-graph
	dev-lisp/cl-typesetting
	dev-lisp/contextl
	dev-lisp/hu-dwim-asdf
	dev-lisp/hu-dwim-def
	dev-lisp/hu-dwim-logger
	dev-lisp/hu-dwim-web-server
	dev-lisp/iolib
	dev-lisp/moptilities"
BDEPEND="dev-lisp/asdf
	test? ( dev-lisp/hu-dwim-stefil )"

src_test() {
	local -x CL_SOURCE_REGISTRY="${S}:${CLSYSTEMROOT}"
	common-lisp-export-impl-args "$(common-lisp-find-lisp-impl)"

	${CL_BINARY} "${CL_EVAL}" "(asdf:test-system :hu.dwim.presentation.test)" \
		|| die "test failed"
}