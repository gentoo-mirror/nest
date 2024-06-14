# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# shellcheck disable=SC2086

EAPI=8

CRATES="addr2line@0.17.0
	adler@1.0.2
	aead@0.4.3
	ahash@0.7.8
	anyhow@1.0.81
	anymap@0.12.1
	argon2@0.4.1
	arrayvec@0.7.4
	atty@0.2.14
	autocfg@0.1.8
	autocfg@1.2.0
	base64@0.9.3
	base64@0.10.1
	base64ct@1.6.0
	bincode@1.3.3
	bitflags@1.3.2
	bitflags@2.5.0
	blake2@0.10.6
	block-buffer@0.7.3
	block-buffer@0.10.4
	block-padding@0.1.5
	bumpalo@3.15.4
	byte-tools@0.3.1
	byteorder@1.5.0
	bytes@0.4.12
	cc@1.0.90
	cfg-if@0.1.10
	cfg-if@1.0.0
	chacha20@0.8.2
	chacha20poly1305@0.9.1
	cipher@0.3.0
	clap@2.34.0
	cloudabi@0.0.3
	core-foundation@0.9.4
	core-foundation-sys@0.8.6
	cpp_demangle@0.3.5
	cpufeatures@0.2.12
	cranelift-bforest@0.88.2
	cranelift-codegen@0.88.2
	cranelift-codegen-meta@0.88.2
	cranelift-codegen-shared@0.88.2
	cranelift-entity@0.88.2
	cranelift-frontend@0.88.2
	cranelift-isle@0.88.2
	cranelift-native@0.88.2
	cranelift-wasm@0.88.2
	crc32fast@1.4.0
	crossbeam-deque@0.7.4
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.8.2
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.1.2
	crossbeam-queue@0.2.3
	crossbeam-utils@0.6.6
	crossbeam-utils@0.7.2
	crossbeam-utils@0.8.19
	crypto-common@0.1.6
	derivative@1.0.4
	digest@0.8.1
	digest@0.10.7
	either@1.10.0
	env_logger@0.6.2
	errno@0.2.8
	errno@0.3.8
	errno-dragonfly@0.1.2
	fake-simd@0.1.2
	fallible-iterator@0.2.0
	fastrand@2.0.2
	flate2@1.0.28
	fnv@1.0.7
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	fuchsia-cprng@0.1.1
	fuchsia-zircon@0.3.3
	fuchsia-zircon-sys@0.3.3
	futures@0.1.31
	fxhash@0.2.1
	generic-array@0.12.4
	generic-array@0.14.7
	getrandom@0.2.12
	gimli@0.26.2
	hashbrown@0.12.3
	heck@0.3.3
	hermit-abi@0.1.19
	hermit-abi@0.3.9
	hex@0.4.3
	http@0.1.21
	http-bytes@0.1.0
	httparse@1.8.0
	hyper@0.10.16
	idna@0.1.5
	indexmap@1.9.3
	io-lifetimes@0.7.5
	iovec@0.1.4
	itertools@0.10.5
	itoa@0.4.8
	kernel32-sys@0.2.2
	language-tags@0.2.2
	lazy_static@1.4.0
	libc@0.2.153
	libloading@0.7.4
	linux-raw-sys@0.0.46
	linux-raw-sys@0.4.13
	lock_api@0.3.4
	lock_api@0.4.11
	log@0.3.9
	log@0.4.21
	mach@0.3.2
	matches@0.1.10
	maybe-uninit@2.0.0
	memchr@2.7.2
	memfd@0.6.4
	memoffset@0.5.6
	memoffset@0.6.5
	mime@0.2.6
	miniz_oxide@0.7.2
	mio@0.6.23
	mio-named-pipes@0.1.7
	mio-uds@0.6.8
	miow@0.2.2
	miow@0.3.7
	native-tls@0.2.11
	net2@0.2.39
	num_cpus@1.16.0
	object@0.29.0
	once_cell@1.19.0
	opaque-debug@0.2.3
	opaque-debug@0.3.1
	openssl@0.10.64
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-src@300.2.3+3.2.1
	openssl-sys@0.9.102
	parking_lot@0.9.0
	parking_lot@0.12.1
	parking_lot_core@0.6.3
	parking_lot_core@0.9.9
	password-hash@0.4.2
	paste@1.0.14
	percent-encoding@1.0.1
	pkg-config@0.3.30
	poly1305@0.7.2
	ppv-lite86@0.2.17
	proc-macro2@0.4.30
	proc-macro2@1.0.79
	prometheus@0.13.3
	prometheus-metric-storage@0.5.0
	prometheus-metric-storage-derive@0.5.0
	psm@0.1.21
	quote@0.6.13
	quote@1.0.35
	rand@0.6.5
	rand@0.8.5
	rand_chacha@0.1.1
	rand_chacha@0.3.1
	rand_core@0.3.1
	rand_core@0.4.2
	rand_core@0.6.4
	rand_hc@0.1.0
	rand_isaac@0.1.1
	rand_jitter@0.1.4
	rand_os@0.1.3
	rand_pcg@0.1.2
	rand_xorshift@0.1.1
	rayon@1.10.0
	rayon-core@1.12.1
	rdrand@0.4.0
	readwrite@0.1.2
	redox_syscall@0.1.57
	redox_syscall@0.4.1
	regalloc2@0.3.2
	rustc-demangle@0.1.23
	rustc_version@0.2.3
	rustix@0.35.16
	rustix@0.38.32
	safemem@0.3.3
	schannel@0.1.23
	scopeguard@1.2.0
	security-framework@2.10.0
	security-framework-sys@2.10.0
	semver@0.9.0
	semver-parser@0.7.0
	serde@1.0.197
	serde_derive@1.0.197
	sha-1@0.8.2
	signal-hook-registry@1.4.1
	slab@0.4.9
	slab_typesafe@0.1.3
	slice-group-by@0.3.1
	smallvec@0.6.14
	smallvec@1.13.2
	smart-default@0.3.0
	stable_deref_trait@1.2.0
	structopt@0.2.16
	structopt-derive@0.2.16
	subtle@2.4.1
	syn@0.15.44
	syn@1.0.109
	syn@2.0.57
	target-lexicon@0.12.14
	tempfile@3.10.1
	textwrap@0.11.0
	thiserror@1.0.58
	thiserror-impl@1.0.58
	time@0.1.45
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tk-listen@0.2.1
	tokio@0.1.22
	tokio-codec@0.1.2
	tokio-current-thread@0.1.7
	tokio-executor@0.1.10
	tokio-file-unix@0.5.1
	tokio-fs@0.1.7
	tokio-io@0.1.13
	tokio-named-pipes@0.1.0
	tokio-process@0.2.5
	tokio-reactor@0.1.12
	tokio-signal@0.2.9
	tokio-stdin-stdout@0.1.5
	tokio-sync@0.1.8
	tokio-tcp@0.1.4
	tokio-threadpool@0.1.18
	tokio-timer@0.2.13
	tokio-tls@0.2.1
	tokio-udp@0.1.6
	tokio-uds@0.2.7
	traitobject@0.1.0
	typeable@0.1.2
	typenum@1.17.0
	unicase@1.4.2
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.23
	unicode-segmentation@1.11.0
	unicode-width@0.1.11
	unicode-xid@0.1.0
	universal-hash@0.4.1
	url@1.7.2
	vcpkg@0.2.15
	version_check@0.1.5
	version_check@0.9.4
	wasi@0.10.0+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wasmparser@0.89.1
	wasmtime@1.0.2
	wasmtime-asm-macros@1.0.2
	wasmtime-cranelift@1.0.2
	wasmtime-environ@1.0.2
	wasmtime-jit@1.0.2
	wasmtime-jit-debug@1.0.2
	wasmtime-runtime@1.0.2
	wasmtime-types@1.0.2
	websocat@1.13.0
	websocket@0.27.1
	websocket-base@0.26.5
	winapi@0.2.8
	winapi@0.3.9
	winapi-build@0.1.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.36.1
	windows-sys@0.42.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.4
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.4
	windows_aarch64_msvc@0.36.1
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.4
	windows_i686_gnu@0.36.1
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.4
	windows_i686_msvc@0.36.1
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.4
	windows_x86_64_gnu@0.36.1
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.4
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.4
	windows_x86_64_msvc@0.36.1
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.4
	ws2_32-sys@0.2.1
	zeroize@1.7.0"

inherit cargo

DESCRIPTION="Netcat, curl and socat for WebSockets"
HOMEPAGE="https://github.com/vi/websocat"
SRC_URI="${CARGO_CRATE_URIS}"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 ISC MIT Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ssl"

RDEPEND="ssl? ( dev-libs/openssl:0= )"
DEPEND="${RUST_DEPEND}
	${RDEPEND}"

QA_FLAGS_IGNORED="usr/bin/websocat"

src_configure() {
	local myfeatures=(
		"$(usex ssl ssl '')"
		seqpacket
		signal_handler
		tokio-process
		unix_stdio
	)
	cargo_src_configure --no-default-features
}

src_install() {
	einstalldocs
	cargo_src_install
}