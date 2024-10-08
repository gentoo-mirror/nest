# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PLOCALES="en it nl sv"
PLOCALE_BACKUP="en"
EGIT_REPO_URI="https://github.com/m-pilia/${PN}.git"

inherit ecm git-r3 plocale

COMMIT="ccbe62f58b72931008a7b26c3e8ab92e2bc3a52c"

DESCRIPTION="Plasma widget for play ambient noise"
HOMEPAGE="https://github.com//plasma-applet-ambientnoise"

LICENSE="GPL-3"
SLOT="6"

RDEPEND="dev-qt/qtmultimedia:6
	dev-qt/qtquickcontrols2:5
	kde-plasma/plasma-workspace:6"

src_prepare() {
	my_rm_loc() {
		rm translations/po/plasma_applet_org.kde.plasma.ambientnoise_"${1}".po \
			|| die "rm failed for ${1}"
	}
	plocale_for_each_disabled_locale my_rm_loc

	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DLOCALE_INSTALL_DIR="/usr/share/locale"
	)
	cmake_src_configure
}
