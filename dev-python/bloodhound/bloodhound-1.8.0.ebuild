# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..14} )

inherit distutils-r1 pypi

DESCRIPTION="Python based ingestor for BloodHound"
HOMEPAGE="https://github.com/dirkjanm/bloodhound.py"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="test" # no tests

RDEPEND="dev-python/dnspython[${PYTHON_USEDEP}]
	dev-python/impacket[${PYTHON_USEDEP}]
	dev-python/ldap3[${PYTHON_USEDEP}]
	dev-python/pyasn1[${PYTHON_USEDEP}]
	dev-python/pycryptodome[${PYTHON_USEDEP}]"
