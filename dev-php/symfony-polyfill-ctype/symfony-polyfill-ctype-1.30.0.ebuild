# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PN="${PN//symfony-/}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Symfony polyfill for ctype functions"
HOMEPAGE="https://github.com/symfony/polyfill-ctype"
SRC_URI="https://github.com/symfony/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test" # no tests

RDEPEND="dev-lang/php:*
	dev-php/fedora-autoloader"
BDEPEND="dev-php/theseer-Autoload"

src_prepare() {
	default

	phpab --quiet --output autoload.php \
		--template fedora2 --basedir . . \
		|| die "phpab failed"

	echo "\Fedora\Autoloader\Dependencies::required([__DIR__ . '/bootstrap.php']);" \
		>> autoload.php || die "echo failed"
}

src_install() {
	einstalldocs
	insinto /usr/share/php/Symfony/Component/PolyfillCtype
	doins -r *.php
}
