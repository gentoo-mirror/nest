# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN="${PN/-bin/}"

inherit desktop multilib-build pax-utils xdg

DESCRIPTION="Editor for building and debugging modern web and cloud applications"
HOMEPAGE="https://code.visualstudio.com"
SRC_URI="amd64? ( https://update.code.visualstudio.com/${PV}/linux-x64/stable -> ${P}-amd64.tar.gz )
	arm? ( https://update.code.visualstudio.com/${PV}/linux-armhf/stable -> ${P}-arm.tar.gz )
	arm64? ( https://update.code.visualstudio.com/${PV}/linux-arm64/stable -> ${P}-arm64.tar.gz )"

LICENSE="MIT Microsoft-VSCode"
SLOT="0"
KEYWORDS="-* ~amd64 ~arm ~arm64"
IUSE="gnome-keyring qt5"
RESTRICT="bindist mirror"

RDEPEND="app-accessibility/at-spi2-atk:2[${MULTILIB_USEDEP}]
	dev-libs/atk:0[${MULTILIB_USEDEP}]
	dev-libs/expat:0[${MULTILIB_USEDEP}]
	dev-libs/glib:2[${MULTILIB_USEDEP}]
	dev-libs/nspr:0[${MULTILIB_USEDEP}]
	dev-libs/nss:0[${MULTILIB_USEDEP}]
	media-libs/alsa-lib:0[${MULTILIB_USEDEP}]
	media-libs/fontconfig:1.0[${MULTILIB_USEDEP}]
	net-print/cups:0[${MULTILIB_USEDEP}]
	sys-apps/dbus:0[${MULTILIB_USEDEP}]
	x11-libs/cairo:0[${MULTILIB_USEDEP}]
	x11-libs/gdk-pixbuf:2[${MULTILIB_USEDEP}]
	x11-libs/gtk+:3[${MULTILIB_USEDEP}]
	x11-libs/libX11:0[${MULTILIB_USEDEP}]
	x11-libs/libxcb:0/1.12[${MULTILIB_USEDEP}]
	x11-libs/libXcomposite:0[${MULTILIB_USEDEP}]
	x11-libs/libXcursor:0[${MULTILIB_USEDEP}]
	x11-libs/libXdamage:0[${MULTILIB_USEDEP}]
	x11-libs/libXext:0[${MULTILIB_USEDEP}]
	x11-libs/libXfixes:0[${MULTILIB_USEDEP}]
	x11-libs/libXi:0[${MULTILIB_USEDEP}]
	x11-libs/libxkbfile:0[${MULTILIB_USEDEP}]
	x11-libs/libXrandr:0[${MULTILIB_USEDEP}]
	x11-libs/libXrender:0[${MULTILIB_USEDEP}]
	x11-libs/libXScrnSaver:0[${MULTILIB_USEDEP}]
	x11-libs/libXtst:0[${MULTILIB_USEDEP}]
	x11-libs/pango:0[${MULTILIB_USEDEP}]
	gnome-keyring? ( app-crypt/libsecret:0[${MULTILIB_USEDEP}] )
	qt5? ( dev-libs/libdbusmenu-qt )"

QA_PREBUILT="opt/visual-studio-code/resources/app/node_modules.asar.unpacked/vscode-ripgrep/bin/rg
	opt/visual-studio-code/resources/app/node_modules.asar.unpacked/vsda/build/Release/vsda.node
	opt/visual-studio-code/resources/app/node_modules.asar.unpacked/vscode-sqlite3/build/Release/sqlite.node
	opt/visual-studio-code/resources/app/node_modules.asar.unpacked/node-pty/build/Release/pty.node
	opt/visual-studio-code/resources/app/node_modules.asar.unpacked/spdlog/build/Release/spdlog.node
	opt/visual-studio-code/resources/app/node_modules.asar.unpacked/native-is-elevated/build/Release/iselevated.node
	opt/visual-studio-code/resources/app/node_modules.asar.unpacked/native-keymap/build/Release/keymapping.node
	opt/visual-studio-code/resources/app/node_modules.asar.unpacked/native-watchdog/build/Release/watchdog.node
	opt/visual-studio-code/resources/app/extensions/node_modules/esbuild/bin/esbuild
	opt/visual-studio-code/code
	opt/visual-studio-code/libffmpeg.so
	opt/visual-studio-code/libGLESv2.so
	opt/visual-studio-code/libEGL.so
	opt/visual-studio-code/libvk_swiftshader.so
	opt/visual-studio-code/swiftshader/libGLESv2.so
	opt/visual-studio-code/swiftshader/libEGL.so"

pkg_setup() {
	use amd64 && S="${WORKDIR}/VSCode-linux-x64"
	use arm && S="${WORKDIR}/VSCode-linux-armhf"
	use arm64 && S="${WORKDIR}/VSCode-linux-arm64"
}

src_install() {
	newicon resources/app/resources/linux/code.png visual-studio-code.png
	newicon -s 512 resources/app/resources/linux/code.png visual-studio-code.png
	domenu "${FILESDIR}"/{code,code-url-handler}.desktop

	insinto /opt/visual-studio-code
	doins -r .
	fperms +x /opt/visual-studio-code/{code,bin/code} \
		/opt/visual-studio-code/resources/app/node_modules.asar.unpacked/vscode-ripgrep/bin/rg \
		/opt/visual-studio-code/resources/app/extensions/git/dist/{askpass.sh,askpass-empty.sh}
	dodir /opt/bin
	dosym ../visual-studio-code/bin/code opt/bin/code

	insinto /usr/share/metainfo
	doins "${FILESDIR}"/code.appdata.xml

	pax-mark -m "${ED}"/opt/visual-studio-code/code
}
