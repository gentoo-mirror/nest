# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 git-r3

DESCRIPTION="Python port of GraphQL.js"
HOMEPAGE="https://github.com/graphql-python/graphql-core"
EGIT_REPO_URI="https://github.com/graphql-python/${PN}.git"

LICENSE="MIT"
SLOT="0"

BDEPEND="test? ( dev-python/pytest-asyncio[${PYTHON_USEDEP}]
		dev-python/pytest-benchmark[${PYTHON_USEDEP}] )"

EPYTEST_TIMEOUT=1
distutils_enable_tests pytest
