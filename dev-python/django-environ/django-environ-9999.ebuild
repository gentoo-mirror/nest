# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )
EGIT_REPO_URI="https://github.com/joke2k/${PN}.git"

inherit distutils-r1 git-r3

DESCRIPTION="An environment variables to configure Django"
HOMEPAGE="https://github.com/joke2k/django-environ"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

RDEPEND="dev-python/django[${PYTHON_USEDEP}]"

distutils_enable_tests unittest

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name 'test*' -delete || die "tests removing failed"
}
