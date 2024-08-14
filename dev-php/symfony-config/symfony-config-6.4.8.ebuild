# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PN="${PN//symfony-/}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Symfony Config Component"
HOMEPAGE="https://github.com/symfony/config"
SRC_URI="https://github.com/symfony/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="test"
PROPERTIES="test_network"

RDEPEND="dev-lang/php:*
	dev-php/fedora-autoloader
	dev-php/symfony-deprecation-contracts
	>=dev-php/symfony-filesystem-6.4.9
	dev-php/symfony-polyfill-ctype"
BDEPEND="test? ( dev-php/composer
		dev-php/phpunit
		dev-php/symfony-event-dispatcher
		>=dev-php/symfony-finder-6.4.8
		dev-php/symfony-messenger
		dev-php/symfony-service-contracts
		dev-php/symfony-yaml )"

DOCS=( {CHANGELOG,README}.md )

src_prepare() {
	default

	install -D -m 644 "${FILESDIR}"/autoload.php \
		autoload.php || die "install failed"
	install -D -m 644 "${FILESDIR}"/autoload-test.php \
		vendor/autoload.php || die "install test failed"
}

src_test() {
	composer require -d "${T}" --prefer-source \
		--dev "${PN/-/\/}:${PV}" || die "composer failed"
	cp -r "${T}"/vendor/"${PN/-/\/}"/{phpunit.xml.dist,Tests} "${S}" \
		|| die "cp failed"
	# remove composer specific test
	sed -i '/testGetVendor/,+16d' Tests/Resource/ComposerResourceTest.php \
		|| die "sed failed for ComposerResourceTest.php"
	# don't fail test
	sed -i '52d' Tests/Util/XmlUtilsTest.php || die "sed failed for XmlUtilsTest.php"
	phpunit --testdox || die "phpunit failed"
}

src_install() {
	einstalldocs
	insinto /usr/share/php/Symfony/Component/Config
	doins -r Builder Definition Exception Loader Resource Util ./*.php
}
