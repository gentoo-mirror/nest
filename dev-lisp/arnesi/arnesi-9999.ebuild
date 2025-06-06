# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/AccelerationNet/${PN}.git"

inherit common-lisp-3 git-r3

DESCRIPTION="A bag-of-tools utilities library"
HOMEPAGE="https://github.com/AccelerationNet/arnesi"

LICENSE="BSD"
SLOT="0"
IUSE="test"
RESTRICT="test" # https://github.com/AccelerationNet/arnesi/issues/2

RDEPEND="dev-lisp/cl-ppcre
	dev-lisp/collectors
	dev-lisp/slime"
BDEPEND="dev-lisp/asdf
	test? ( dev-lisp/fiveam )"

src_test() {
	local -x CL_SOURCE_REGISTRY="${S}:${CLSYSTEMROOT}"
	common-lisp-export-impl-args "$(common-lisp-find-lisp-impl)"

	${CL_BINARY} "${CL_EVAL}" "(asdf:test-system :arnesi)" \
		|| die "test failed"
}
