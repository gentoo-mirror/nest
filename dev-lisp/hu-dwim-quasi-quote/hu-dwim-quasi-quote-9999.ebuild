# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/hu-dwim/hu.dwim.quasi-quote.git"

inherit common-lisp-3 git-r3

DESCRIPTION="Quasi quoted domain specific languages and transformations"
HOMEPAGE="https://github.com/hu-dwim/hu.dwim.quasi-quote"

LICENSE="MIT-0"
SLOT="0"
IUSE="doc test"
REQUIRED_USE="doc? ( test )"
RESTRICT="!test? ( test )"

PDEPEND="dev-lisp/hu-dwim-util"
RDEPEND="dev-lisp/babel
	dev-lisp/cffi
	dev-lisp/cl-ppcre
	dev-lisp/cxml
	dev-lisp/hu-dwim-asdf
	dev-lisp/hu-dwim-common
	dev-lisp/hu-dwim-defclass-star
	dev-lisp/hu-dwim-syntax-sugar
	dev-lisp/hu-dwim-walker
	doc? ( dev-lisp/hu-dwim-presentation )"
BDEPEND="test? ( dev-lisp/sbcl:*
		dev-lang/spidermonkey:115
		dev-lisp/hu-dwim-stefil
		dev-lisp/parse-number
		dev-lisp/uiop )"

PATCHES=( "${FILESDIR}/${PN}"-20220821-test-xml.patch )

src_prepare() {
	default

	sed -i '/js-executable-name/s|24|115|' test/js.lisp \
		|| die "sed failed for js.lisp"

	# remove js tests
	sed -i '/"js" :depends-on/d' hu.dwim.quasi-quote.test.asd \
		|| die "sed failed for js"
	rm test/js.lisp || die "rm failed"
}

src_test() {
	einfo "Running test suite:"
	sbcl --script "${FILESDIR}"/run-tests.lisp \
		|| die "test failed"
}