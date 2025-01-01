# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A plugin that enhances tmux search"
HOMEPAGE="https://github.com/tmux-plugins/tmux-copycat"
SRC_URI="https://github.com/tmux-plugins/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="app-misc/tmux
	dev-vcs/git"

DOCS=( {CHANGELOG,README}.md docs/. )

src_install() {
	einstalldocs
	insinto /usr/share/tmux-plugins/tmux-copycat
	doins -r scripts copycat.tmux
	fperms +x /usr/share/tmux-plugins/tmux-copycat/scripts/check_tmux_version.sh \
			/usr/share/tmux-plugins/tmux-copycat/scripts/copycat_g{it_special,enerate_results}.sh \
			/usr/share/tmux-plugins/tmux-copycat/scripts/copycat_{jump,search}.sh \
			/usr/share/tmux-plugins/tmux-copycat/scripts/copycat_mode_{bindings,quit,start}.sh \
			/usr/share/tmux-plugins/tmux-copycat/copycat.tmux
}