# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Utils for converting between date formats and calculating holidays"
HOMEPAGE="https://github.com/fitnr/convertdate"
SRC_URI="https://github.com/fitnr/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/PyMeeus[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

distutils_enable_tests unittest
