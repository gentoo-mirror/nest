# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_REPO_URI="https://github.com/crazy-max/${PN}.git"

inherit git-r3 go-module systemd

DESCRIPTION="Dynamic DNS for Amazon Route 53 on a time-based schedule"
HOMEPAGE="https://github.com/crazy-max/ddns-route53"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
RESTRICT="test" # fails

RDEPEND="acct-user/ddnsr53"

DOCS=( {CHANGELOG,README}.md )

src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}

src_compile() {
	go build -o ddns-route53 ./cmd/... || die "build failed"
}

src_test() {
	go test -work ./... || die "test failed"
}

src_install() {
	dobin ddns-route53
	newinitd "${FILESDIR}"/ddns-route53.initd ddns-route53
	newconfd "${FILESDIR}"/ddns-route53.confd ddns-route53
	systemd_dounit "${FILESDIR}"/ddns-route53.service

	# Generate sample config
	insopts -o ddnsr53 -g ddnsr53 -m 0644
	insinto /etc/ddns-route53
	newins - ddns-route53.yml < <(grep -m1 -A16 '```yaml' docs/config/index.md | tail -n +2 \
		|| die "grep failed for ddns-route53.yml" )
}
