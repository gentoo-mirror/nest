# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1

DESCRIPTION="Binding variables and refreshing multi-line output in terminal"
HOMEPAGE="https://github.com/Yinzo/reprint"
SRC_URI="https://github.com/Yinzo/${PN}/archive/${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/colorama[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
