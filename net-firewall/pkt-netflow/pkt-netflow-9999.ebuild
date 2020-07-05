# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_REPO_URI="https://github.com/aabc/ipt-netflow.git"

inherit git-r3 linux-info linux-mod toolchain-funcs

DESCRIPTION="NetFlow v5, v9, IPFIX flow data exporter"
HOMEPAGE="https://github.com/aabc/pkt-netflow"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="natevents snmp"

RDEPEND="net-firewall/iptables:0="
DEPEND="${RDEPEND}
	snmp? ( net-analyzer/net-snmp )"
BDEPEND="virtual/linux-sources
	virtual/pkgconfig"

DOCS=( NEWS README{,.promisc} )

PATCHES=( "${FILESDIR}/${PN}-2.0-configure.patch"
	"${FILESDIR}/${PN}-9999-gentoo.patch" )

pkg_setup() {
	linux-info_pkg_setup

	local CONFIG_CHECK="BRIDGE_NETFILTER ~IP_NF_IPTABLES VLAN_8021Q"
	if use natevents; then
		CONFIG_CHECK+=" NF_CONNTRACK_EVENTS"
		if kernel_is lt 5 2; then
			CONFIG_CHECK+=" NF_NAT_NEEDED"
		else
			CONFIG_CHECK+=" NF_NAT"
		fi
	fi

	BUILD_TARGETS="all"
	MODULE_NAMES="ipt_NETFLOW(ipt_netflow:${S})"
	IPT_LIB="/usr/$(get_libdir)/xtables"

	linux-mod_pkg_setup
}

do_conf() {
	tc-export CC
	echo ./configure $*
	./configure $* "${EXTRA_ECONF}" || die "configure failed"
}

src_configure() {
	local IPT_VERSION="$($(tc-getPKG_CONFIG) --modversion xtables)"
	# this configure script is not based on autotools
	# ipt-src need to be defined, see bug #455984
	do_conf \
		--disable-dkms \
		--enable-aggregation \
		--enable-direction \
		--enable-macaddress \
		--enable-physdev \
		--enable-physdev-override \
		--enable-promisc \
		--promisc-mpls \
		--promisc-mpls=3 \
		--enable-sampler \
		--enable-sampler=hash \
		--enable-vlan \
		--ipt-bin=/sbin/iptables \
		--ipt-lib="${IPT_LIB}" \
		--ipt-src="/usr/" \
		--ipt-ver="${IPT_VERSION}" \
		--kdir="${KV_OUT_DIR}" \
		--kver="${KV_FULL}" \
		$(use natevents && echo '--enable-natevents') \
		$(use snmp && echo '--enable-snmp-rules' || echo '--disable-snmp-agent')
}

src_compile() {
	emake ARCH="$(tc-arch-kernel)" CC="$(tc-getCC)" all
}

src_install() {
	einstalldocs
	linux-mod_src_install
	exeinto "${IPT_LIB}"
	doexe libipt_NETFLOW.so
	use snmp && emake DESTDIR="${D}" SNMPTGSO="/usr/$(get_libdir)/snmp/dlmod/snmp_NETFLOW.so" sinstall
	doheader ipt_NETFLOW.h
}