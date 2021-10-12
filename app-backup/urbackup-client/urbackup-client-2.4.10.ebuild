# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

WX_GTK_VER="3.0"

inherit autotools readme.gentoo-r1 systemd wxwidgets

DESCRIPTION="Client Server backup system"
HOMEPAGE="https://urbackup.org"
SRC_URI="https://hndl.urbackup.org/Client/${PV}/${P}.tar.gz"

LICENSE="AGPL-3+"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE="debug hardened nls X"

RDEPEND="acct-user/urbackup
	app-arch/zstd:=
	dev-db/sqlite:3
	dev-libs/crypto++:0=
	dev-libs/icu:0=
	sys-libs/zlib:0=
	X? ( x11-libs/wxGTK:${WX_GTK_VER} )"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig
	nls? ( sys-devel/gettext )"

S="${WORKDIR}/${P}.0"

src_prepare() {
	default

	# Remove key, version for client autoupdate and info.txt
	sed -i  -e '/\/client\/data\/urbackup_ecdsa409k1.pub/d' \
		-e 's|client/data/urbackup_ecdsa409k1.pub ||' \
		-e '/\/client\/version.txt/d' \
		-e 's|client/version.txt ||' \
		-e '/\/client\/info.txt/d' \
		-e 's|client/info.txt ||' \
		Makefile.am || die "sed failed for Makefile.am"

	eautoreconf
}

src_configure() {
	econf "$(usex hardened --enable-fortify "")" \
		"$(use_enable debug assertions)" \
		"$(use_enable !X headless)" \
		--without-embedded-sqlite3 \
		--disable-clientupdate
}

src_install() {
	default

	doman docs/urbackupclientbackend.1

	keepdir /var/lib/urbackup/data

	insinto /etc/logrotate.d
	newins "${FILESDIR}"/urbackup-client.logrotate urbackup-client

	newinitd "${FILESDIR}"/urbackup-client.initd urbackup-client
	newconfd "${FILESDIR}"/urbackup-client.confd urbackup-client
	systemd_dounit "${FILESDIR}"/urbackup-client.service

	insinto /etc/urbackup
	doins "${FILESDIR}"/urbackup-client
}
