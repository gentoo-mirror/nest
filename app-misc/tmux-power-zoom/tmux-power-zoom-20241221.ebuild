# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

COMMIT="3a1de2280e9b7ffcb8efd009fc87fd34ecbb14ac"

DESCRIPTION="Zoom pane to separate window, and unzoom it back"
HOMEPAGE="https://github.com/jaclu/tmux-power-zoom"
SRC_URI="https://github.com/jaclu/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${COMMIT}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="app-misc/tmux"

src_install() {
	einstalldocs
	insinto /usr/share/tmux-plugins/tmux-power-zoom
	doins -r scripts power-zoom.tmux
	fperms +x /usr/share/tmux-plugins/tmux-power-zoom/scripts/power_zoom.sh \
		/usr/share/tmux-plugins/tmux-power-zoom/power-zoom.tmux
}