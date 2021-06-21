# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )
EGIT_REPO_URI="https://github.com/mfogel/${PN}.git"

inherit distutils-r1 git-r3

DESCRIPTION="Django application for database and form fields for pytz objects"
HOMEPAGE="https://github.com/mfogel/django-timezone-field"
SRC_URI=""

LICENSE="BSD-2"
SLOT="0"
KEYWORDS=""

RDEPEND="dev-python/django[${PYTHON_USEDEP}]
	dev-python/django-rest-framework[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
BDEPEND="test? ( $(python_gen_impl_dep sqlite) )"

distutils_enable_tests pytest

python_test() {
	PYTHONPATH=. django-admin.py test --settings=tests.settings \
		tests --verbosity 2 || die "tests failed with ${EPYTHON}"
}
