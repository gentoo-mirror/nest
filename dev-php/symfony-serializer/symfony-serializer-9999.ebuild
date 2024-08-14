# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/symfony/serializer.git"

inherit git-r3

DESCRIPTION="Symfony Serializer Component"
HOMEPAGE="https://github.com/symfony/serializer"

LICENSE="MIT"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-lang/php:*
	dev-php/fedora-autoloader
	dev-php/symfony-deprecation-contracts
	dev-php/symfony-polyfill-ctype"
BDEPEND="test? ( dev-php/doctrine-annotations
		dev-php/jsonlint
		dev-php/phpdocumentor-reflection-docblock
		dev-php/phpunit
		dev-php/symfony-cache
		dev-php/symfony-config
		dev-php/symfony-console
		dev-php/symfony-dependency-injection
		dev-php/symfony-http-kernel
		>=dev-php/symfony-filesystem-6.4.9
		dev-php/symfony-form
		dev-php/symfony-messenger
		dev-php/symfony-mime
		dev-php/symfony-phpunit-bridge
		dev-php/symfony-property-access
		dev-php/symfony-property-info
		dev-php/symfony-translation-contracts
		dev-php/symfony-validator
		dev-php/symfony-var-dumper
		dev-php/symfony-uid
		dev-php/symfony-yaml )"

DOCS=( {CHANGELOG,README}.md )

src_prepare() {
	default

	install -D -m 644 "${FILESDIR}"/autoload.php \
		autoload.php || die "install failed"
	install -D -m 644 "${FILESDIR}"/autoload-test.php \
		vendor/autoload.php || die "install test failed"
	# ignore risky tests
	sed -i '/failOnRisky/s|true|false|' phpunit.xml.dist \
		|| die "sed failed for phpunit.xml.dist"
}

src_test() {
	phpunit --testdox || die "phpunit failed"
}

src_install() {
	einstalldocs
	insinto /usr/share/php/Symfony/Component/Serializer
	doins -r Annotation Attribute CacheWarmer Command Context \
		DataCollector Debug DependencyInjection Encoder \
		Exception Mapping NameConverter Normalizer ./*.php
}
