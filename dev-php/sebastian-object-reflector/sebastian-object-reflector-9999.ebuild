# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/sebastianbergmann/object-reflector.git"

inherit git-r3

DESCRIPTION="Allows reflection of object attributes"
HOMEPAGE="https://github.com/sebastianbergmann/object-reflector"

LICENSE="BSD"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-lang/php:*
	dev-php/fedora-autoloader"
BDEPEND="dev-php/theseer-Autoload
	test? ( dev-php/phpunit )"

DOCS=( {ChangeLog,README}.md )

src_prepare() {
	default

	phpab -q -o src/autoload.php -t fedora2 src || die "phpab failed"
	phpab -q -o tests/autoload.php -t fedora2 tests || die "phpab test failed"
	install -D -m 644 "${FILESDIR}"/autoload.php \
		vendor/autoload.php || die "install failed"
}

src_test() {
	phpunit --testdox || die "phpunit failed"
}

src_install() {
	einstalldocs
	insinto /usr/share/php/SebastianBergmann/ObjectReflector
	doins -r src/.
}
