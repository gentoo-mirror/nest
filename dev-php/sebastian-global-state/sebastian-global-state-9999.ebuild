# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGIT_REPO_URI="https://github.com/sebastianbergmann/global-state.git"

inherit git-r3

DESCRIPTION="Snapshotting of global state"
HOMEPAGE="https://github.com/sebastianbergmann/global-state"

LICENSE="BSD"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-lang/php:*[xml]
	dev-php/fedora-autoloader
	dev-php/sebastian-object-reflector
	dev-php/sebastian-recursion-context"
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
	insinto /usr/share/php/SebastianBergmann/GlobalState
	doins -r src/.
}