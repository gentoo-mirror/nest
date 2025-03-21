# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="ahash@0.7.8
	aho-corasick@0.7.20
	aho-corasick@1.0.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	anyhow@1.0.71
	async-trait@0.1.68
	autocfg@1.1.0
	base64@0.13.1
	base64@0.21.2
	bcrypt@0.14.0
	bitflags@1.3.2
	bitflags@2.4.1
	block-buffer@0.10.4
	blowfish@0.9.1
	bstr@1.5.0
	bumpalo@3.14.0
	byteorder@1.4.3
	bytes@1.4.0
	cc@1.0.79
	cfg-if@1.0.0
	chrono-tz-build@0.2.1
	chrono-tz@0.8.4
	chrono@0.4.31
	cipher@0.4.4
	clap@4.5.16
	clap_builder@4.5.15
	clap_derive@4.5.13
	clap_lex@0.7.2
	colorchoice@1.0.2
	config@0.13.3
	console@0.15.7
	core-foundation-sys@0.8.4
	core-foundation@0.9.3
	cpufeatures@0.2.8
	crypto-common@0.1.6
	csv-core@0.1.10
	csv@1.2.2
	deunicode@0.4.5
	deunicode@1.4.2
	digest@0.10.7
	dlv-list@0.3.0
	encode_unicode@0.3.6
	env_logger@0.10.0
	errno-dragonfly@0.1.2
	errno@0.3.1
	fake@2.6.1
	fallible-iterator@0.2.0
	fastrand@1.9.0
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.0
	futures-channel@0.3.28
	futures-core@0.3.28
	futures-executor@0.3.28
	futures-io@0.3.28
	futures-macro@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	futures@0.3.28
	generic-array@0.14.7
	getrandom@0.1.16
	getrandom@0.2.10
	globset@0.4.10
	globwalk@0.8.1
	hashbrown@0.12.3
	heck@0.5.0
	hermit-abi@0.3.3
	hmac@0.12.1
	humansize@2.1.3
	humantime@2.1.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.58
	idna@0.4.0
	ignore@0.4.20
	indexmap@1.9.3
	indicatif@0.17.5
	inout@0.1.3
	instant@0.1.12
	io-lifetimes@1.0.11
	is-terminal@0.4.7
	is_terminal_polyfill@1.70.1
	itoa@1.0.6
	js-sys@0.3.66
	json5@0.4.1
	jsonpath_lib@0.3.0
	lazy_static@1.4.0
	libc@0.2.158
	libm@0.2.8
	linked-hash-map@0.5.6
	linux-raw-sys@0.3.8
	lock_api@0.4.10
	log@0.4.19
	md-5@0.10.5
	memchr@2.5.0
	minimal-lexical@0.2.1
	mio@0.8.11
	native-tls@0.2.11
	nom@7.1.3
	num-traits@0.2.17
	number_prefix@0.4.0
	once_cell@1.18.0
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.103
	openssl@0.10.66
	ordered-multimap@0.4.3
	parking_lot@0.12.1
	parking_lot_core@0.9.8
	parse-zoneinfo@0.3.0
	pathdiff@0.2.1
	percent-encoding@2.3.0
	pest@2.7.5
	pest_derive@2.7.5
	pest_generator@2.7.5
	pest_meta@2.7.5
	phf@0.11.1
	phf_codegen@0.11.1
	phf_generator@0.11.1
	phf_shared@0.11.1
	pin-project-lite@0.2.9
	pin-utils@0.1.0
	pkg-config@0.3.27
	portable-atomic@1.3.3
	postgres-native-tls@0.5.0
	postgres-protocol@0.6.5
	postgres-types@0.2.5
	postgres@0.19.5
	ppv-lite86@0.2.17
	proc-macro2@1.0.86
	quote@1.0.28
	rand@0.7.3
	rand@0.8.5
	rand_chacha@0.2.2
	rand_chacha@0.3.1
	rand_core@0.5.1
	rand_core@0.6.4
	rand_hc@0.2.0
	rand_pcg@0.2.1
	random_color@0.6.1
	redox_syscall@0.3.5
	regex-syntax@0.7.2
	regex@1.8.4
	ron@0.7.1
	rust-ini@0.18.0
	rustix@0.37.25
	ryu@1.0.13
	same-file@1.0.6
	schannel@0.1.21
	scopeguard@1.1.0
	security-framework-sys@2.9.0
	security-framework@2.9.1
	serde@1.0.164
	serde_derive@1.0.164
	serde_json@1.0.97
	serde_yaml@0.9.21
	sha2@0.10.7
	siphasher@0.3.10
	slab@0.4.8
	slug@0.1.4
	smallvec@1.10.0
	socket2@0.4.9
	socket2@0.5.3
	solvent@0.8.3
	stringprep@0.1.2
	strsim@0.11.1
	subtle@2.5.0
	syn@2.0.18
	tempfile@3.6.0
	tera@1.19.1
	termcolor@1.2.0
	thiserror-impl@1.0.40
	thiserror@1.0.40
	thread_local@1.1.7
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-native-tls@0.3.1
	tokio-postgres@0.7.8
	tokio-util@0.7.8
	tokio@1.28.2
	toml@0.5.11
	tracing-core@0.1.31
	tracing@0.1.37
	typenum@1.16.0
	ucd-trie@0.1.5
	unic-char-property@0.9.0
	unic-char-range@0.9.0
	unic-common@0.9.0
	unic-segment@0.9.0
	unic-ucd-segment@0.9.0
	unic-ucd-version@0.9.0
	unicode-bidi@0.3.13
	unicode-ident@1.0.9
	unicode-normalization@0.1.22
	unicode-segmentation@1.10.1
	unicode-width@0.1.10
	unidecode@0.3.0
	unsafe-libyaml@0.2.10
	url@2.4.0
	utf8parse@0.2.2
	uuid@1.3.4
	vcpkg@0.2.15
	version_check@0.9.4
	walkdir@2.3.3
	wasi@0.11.0+wasi-snapshot-preview1
	wasi@0.9.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.89
	wasm-bindgen-macro-support@0.2.89
	wasm-bindgen-macro@0.2.89
	wasm-bindgen-shared@0.2.89
	wasm-bindgen@0.2.89
	wildmatch@2.1.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.50.0
	windows-sys@0.42.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.42.2
	windows-targets@0.48.0
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.0
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.0
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.0
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.0
	windows_x86_64_msvc@0.52.6
	yaml-rust@0.4.5
	zeroize@1.6.0"

inherit cargo

DESCRIPTION="Powerful database anonymizer with flexible rules"
HOMEPAGE="https://github.com/datanymizer/datanymizer"
SRC_URI="https://github.com/datanymizer/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}"

LICENSE="Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 ISC MIT Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

DOCS=( {CHANGELOG,README}.md )

QA_FLAGS_IGNORED="usr/bin/pg_datanymizer"

src_compile() {
	cargo_src_compile --package pg_datanymizer
}

src_install() {
	einstalldocs
	cargo_src_install --path cli/pg_datanymizer
}
