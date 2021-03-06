# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )
EGIT_REPO_URI="https://github.com/codeinthehole/${PN}.git"

inherit distutils-r1 git-r3

DESCRIPTION="Simple Python URL class"
HOMEPAGE="https://github.com/codeinthehole/purl"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

distutils_enable_tests pytest
