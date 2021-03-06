# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )
EGIT_REPO_URI="https://github.com/ottoyiu/${PN}.git"

inherit distutils-r1 git-r3

DESCRIPTION="Django application for Cross-Origin Resource Sharing (CORS)"
HOMEPAGE="https://github.com/ottoyiu/django-cors-headers"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

RDEPEND="dev-python/django[${PYTHON_USEDEP}]"
BDEPEND="test? ( $(python_gen_impl_dep sqlite)
		dev-python/pytest-django[${PYTHON_USEDEP}] )"

distutils_enable_tests pytest

python_test() {
	DJANGO_SETTINGS_MODULE=tests.settings PYTHONPATH=. \
		py.test -v || die "tests failed with ${EPYTHON}"
}
