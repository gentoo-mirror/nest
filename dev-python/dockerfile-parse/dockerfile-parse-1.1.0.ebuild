# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )

inherit distutils-r1

DESCRIPTION="Python library for parsing Dockerfile files"
HOMEPAGE="https://github.com/containerbuildsystem/dockerfile-parse"
SRC_URI="https://github.com/containerbuildsystem/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/six[${PYTHON_USEDEP}]"

distutils_enable_tests pytest
