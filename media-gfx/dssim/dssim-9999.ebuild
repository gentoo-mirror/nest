# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# shellcheck disable=SC2086

EAPI=8

EGIT_REPO_URI="https://github.com/kornelski/${PN}.git"

CRATES="
	adler-1.0.2
	ahash-0.7.6
	aom-decode-0.2.4
	arrayvec-0.7.2
	autocfg-1.1.0
	avif-parse-1.0.0
	bitreader-0.3.6
	bytemuck-1.12.1
	byteorder-1.4.3
	cc-1.0.73
	cfg-if-1.0.0
	cmake-0.1.48
	crc32fast-1.3.2
	crossbeam-channel-0.5.6
	crossbeam-deque-0.8.2
	crossbeam-epoch-0.9.10
	crossbeam-utils-0.8.11
	dunce-1.0.2
	either-1.8.0
	fallible_collections-0.4.5
	flate2-1.0.24
	foreign-types-0.5.0
	foreign-types-macros-0.2.2
	foreign-types-shared-0.3.1
	getopts-0.2.21
	getrandom-0.2.7
	hashbrown-0.12.3
	hermit-abi-0.1.19
	imgref-1.9.4
	itertools-0.10.4
	jobserver-0.1.24
	lcms2-5.4.1
	lcms2-sys-3.1.10
	libaom-sys-0.12.1
	libc-0.2.132
	libwebp-0.1.2
	libwebp-sys2-0.1.4
	load_image-2.16.4
	lodepng-3.7.0
	log-0.4.17
	memoffset-0.6.5
	miniz_oxide-0.5.4
	mozjpeg-0.9.4
	mozjpeg-sys-1.0.3
	nasm-rs-0.2.4
	num-0.4.0
	num-bigint-0.4.3
	num-complex-0.4.2
	num-integer-0.1.45
	num-iter-0.1.43
	num-rational-0.4.1
	num-traits-0.2.15
	num_cpus-1.13.1
	once_cell-1.14.0
	pkg-config-0.3.25
	proc-macro2-1.0.43
	quick-error-2.0.1
	quote-1.0.21
	rayon-1.5.3
	rayon-core-1.9.3
	rexif-0.7.3
	rgb-0.8.33
	scopeguard-1.1.0
	static_assertions-1.1.0
	syn-1.0.99
	unicode-ident-1.0.4
	unicode-width-0.1.10
	vcpkg-0.2.15
	version_check-0.9.4
	wasi-0.11.0+wasi-snapshot-preview1
	yuv-0.1.5
"

inherit cargo git-r3

DESCRIPTION="Image similarity comparison simulating human perception"
HOMEPAGE="https://github.com/kornelski/dssim"
SRC_URI="$(cargo_crate_uris ${CRATES})"

LICENSE="AGPL-3"
KEYWORDS=""
SLOT="0"
RESTRICT="mirror"

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_unpack() {
	git-r3_src_unpack
	cargo_src_unpack
}

src_install() {
	dobin target/release/dssim
}
