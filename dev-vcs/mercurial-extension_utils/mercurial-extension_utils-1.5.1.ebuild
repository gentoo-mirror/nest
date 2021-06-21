# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Mercurial Extension Utils"
HOMEPAGE="https://foss.heptapod.net/mercurial/mercurial-extension_utils"
SRC_URI="https://foss.heptapod.net/mercurial/${PN}/-/archive/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

BDEPEND="test? ( dev-vcs/mercurial[${PYTHON_USEDEP}] )"

DOCS=( {HISTORY,README}.rst )

distutils_enable_tests unittest

python_prepare_all() {
	# Remove tests need access to filesystem
	rm tests/test_doctest.py || die "rm failed"

	distutils-r1_python_prepare_all
}

python_test() {
	"${PYTHON}" -m unittest discover -v tests || die "tests failed with ${EPYTHON}"
}
