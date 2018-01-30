# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PLOCALES="en et ru"

inherit cmake-utils git-r3 l10n qmake-utils

DESCRIPTION="Estonian ID card management desktop utility"
HOMEPAGE="https://github.com/open-eid/qesteidutil http://id.ee/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/open-eid/${PN}.git"

LICENSE="LGPL-2.1"
KEYWORDS=""
SLOT="0"
IUSE="libressl"

# ToDo: dev-util/google-breakpad
RDEPEND="dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtnetwork:5
	dev-qt/qtsingleapplication
	sys-apps/pcsc-lite
	!libressl? ( dev-libs/openssl:0= )
	libressl? ( dev-libs/libressl:0= )"
DEPEND="${RDEPEND}
	dev-qt/linguist-tools:5
	virtual/pkgconfig"

DOCS=( AUTHORS README.md RELEASE-NOTES.md )

src_prepare() {
	default

	# Don't use bundled libs
	sed -i \
		-e '/add_subdirectory( qtsingleapplication )/d' \
		-e '/list( APPEND LIBRARIES/s|qtsingleapplication|Qt5Solutions_SingleApplication-2.6|' \
		common/CMakeLists.txt || die "sed failed for CMakeLists.txt"
	sed -i '/#include "/s|qtsingleapplication/src|QtSolutions|' \
		common/Common.h || die "sed failed for Common.h"

	local lr=$(qt5_get_bindir)/lrelease
	l10n_prepare() {
		$lr src/translations/${1}.ts || die "lrelease ${1} failed"
	}
	l10n_find_plocales_changes src/translations "" .ts
	l10n_for_each_locale_do l10n_prepare

	cmake-utils_src_prepare
}

src_install() {
	default

	insinto /usr/share/qt5/translations
	doins src/translations/*.qm

	cmake-utils_src_install
}
