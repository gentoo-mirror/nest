# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

COMMIT="43ab1410a080d8abfe39078c1b3cecc32cf458f6"

DESCRIPTION="Efficient endianness conversion for SBCL"
HOMEPAGE="https://github.com/sionescu/swap-bytes"
SRC_URI="https://github.com/sionescu/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${COMMIT}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-lisp/trivial-features"
BDEPEND="dev-lisp/asdf
	test? ( dev-lisp/fiveam )"

src_test() {
	local -x CL_SOURCE_REGISTRY="${S}:${CLSYSTEMROOT}"
	common-lisp-export-impl-args "$(common-lisp-find-lisp-impl)"

	${CL_BINARY} "${CL_EVAL}" "(asdf:test-system :swap-bytes)" \
		|| die "test failed"
}

src_install() {
	common-lisp-3_src_install
	insinto /usr/share/common-lisp/source/swap-bytes
	doins version.sexp
}