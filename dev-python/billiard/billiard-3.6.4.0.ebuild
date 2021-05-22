# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )

inherit distutils-r1

DESCRIPTION="Multiprocessing Pool Extensions"
HOMEPAGE="https://github.com/celery/billiard"
SRC_URI="https://github.com/celery/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

BDEPEND="test? ( dev-python/case[${PYTHON_USEDEP}]
		dev-python/psutil[${PYTHON_USEDEP}] )"

distutils_enable_tests pytest