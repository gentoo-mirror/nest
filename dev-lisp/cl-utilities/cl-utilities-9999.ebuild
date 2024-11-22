# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://gitlab.common-lisp.net/cl-utilities/${PN}.git"

inherit common-lisp-3 git-r3

DESCRIPTION="A library of semi-standard utilities"
HOMEPAGE="https://cl-utilities.common-lisp.dev"

LICENSE="public-domain"
SLOT="0"

src_test() {
	local -x CL_SOURCE_REGISTRY="${S}:${CLSYSTEMROOT}"
	common-lisp-export-impl-args "$(common-lisp-find-lisp-impl)"

	${CL_BINARY} "${CL_EVAL}" "(asdf:test-system :cl-utilities)" \
		|| die "test failed"
}