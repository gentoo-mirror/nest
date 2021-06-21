# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )
EGIT_REPO_URI="https://github.com/ssato/python-m9dicts.git"

inherit distutils-r1 git-r3

DESCRIPTION="A dict-like object supports recursive merge operation"
HOMEPAGE="https://github.com/ssato/python-m9dicts https://pypi.python.org/pypi/m9dicts"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

distutils_enable_tests unittest

python_test() {
	"${PYTHON}" -m unittest discover -v test || die "tests failed with ${EPYTHON}"
}

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -type d -name "tests" -exec rm -rv {} + || die "test removing failed"
}
