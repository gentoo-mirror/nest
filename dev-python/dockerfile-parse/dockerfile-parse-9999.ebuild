# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
EGIT_REPO_URI="https://github.com/containerbuildsystem/${PN}.git"
PYTHON_COMPAT=( python3_{10..13} python3_13t )

inherit distutils-r1 git-r3

DESCRIPTION="Python library for parsing Dockerfile files"
HOMEPAGE="https://github.com/containerbuildsystem/dockerfile-parse"

LICENSE="BSD"
SLOT="0"

distutils_enable_tests pytest
