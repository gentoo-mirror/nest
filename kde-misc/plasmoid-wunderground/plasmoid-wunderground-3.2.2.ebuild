# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PLOCALES="de_DE es_ES fr_FR ja_JP nl_NL ru_RU"
PLOCALE_BACKUP="en"

inherit ecm plocale

DESCRIPTION="Plasma 5/6 widget for showing data from Wunderground PWS"
HOMEPAGE="https://github.com/k-donn/plasmoid-wunderground"
SRC_URI="https://github.com/k-donn/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="kde-plasma/plasma-workspace:6"

src_prepare() {
	default

	my_rm_loc() {
		rm plasmoid/translate/"${1}".po || die "rm failed for ${1}"
	}
	plocale_for_each_disabled_locale my_rm_loc
}

src_configure() { :; }

src_compile() { :; }

src_install() {
	default

	insinto /usr/share/plasma/plasmoids/com.github.k-donn.plasmoid-wunderground
	doins plasmoid/metadata.json
	doins -r plasmoid/{contents,translate}
}
