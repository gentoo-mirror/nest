# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit ecm

DESCRIPTION="KDE theme style with aim to be visually modern and minimalistic"
HOMEPAGE="https://github.com/Luwx/Lightly"
SRC_URI="https://github.com/Luwx/${PN^}/archive/v${PV}.tar.gz -> ${P^}.tar.gz"

LICENSE="GPL-2"
SLOT="5"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-qt/qtdbus:5
	dev-qt/qtdeclarative:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtx11extras:5
	kde-frameworks/frameworkintegration:5
	kde-frameworks/kcmutils:5
	kde-frameworks/kcoreaddons:5
	kde-frameworks/kconfigwidgets:5
	kde-frameworks/ki18n:5
	kde-frameworks/kiconthemes:5
	kde-frameworks/kguiaddons:5
	kde-frameworks/kwindowsystem:5
	kde-plasma/kdecoration:5
	kde-plasma/kwayland:5
	kde-plasma/plasma-workspace:5
	x11-libs/libxcb:0="

S="${WORKDIR}/${PN^}-${PV}"
