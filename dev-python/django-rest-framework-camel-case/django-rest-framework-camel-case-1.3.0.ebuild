# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )

MY_PN="djangorestframework-camel-case"
MY_P="${MY_PN}-${PV}"

inherit distutils-r1

DESCRIPTION="Camel case JSON support for Django REST framework"
HOMEPAGE="https://github.com/vbabiy/djangorestframework-camel-case"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="test" # no tests

RDEPEND="dev-python/djangorestframework[${PYTHON_USEDEP}]"

S="${WORKDIR}/${MY_P}"

distutils_enable_tests unittest
