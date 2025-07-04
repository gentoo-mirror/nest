# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake git-r3

DESCRIPTION="VCard standard format manipulation library"
HOMEPAGE="https://gitlab.linphone.org/BC/public/belcard"
EGIT_REPO_URI="https://gitlab.linphone.org/BC/public/${PN}.git"

LICENSE="GPL-3"
SLOT="0"
IUSE="test tools"
RESTRICT="!test? ( test )"

RDEPEND="dev-cpp/belr
	net-libs/bctoolbox[test?]"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"

src_configure() {
	local mycmakeargs=(
		-DENABLE_TOOLS="$(usex tools)"
		-DENABLE_UNIT_TESTS="$(usex test)"
	)
	cmake_src_configure
}

src_test() {
	"${S}"_build/tester/belcard-tester \
		--resource-dir "${S}"/tester/ \
		|| die "tests failed"
	cmake_src_test
}
