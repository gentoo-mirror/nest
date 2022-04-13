# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# shellcheck disable=SC2086

EAPI=8

CRATES="
	aho-corasick-0.7.18
	anyhow-1.0.52
	askama-0.11.0
	askama_derive-0.11.0
	askama_escape-0.10.2
	askama_shared-0.12.0
	assert_cmd-2.0.2
	atty-0.2.14
	autocfg-1.0.1
	bincode-1.3.3
	bitflags-1.3.2
	bstr-0.2.17
	cfg-if-1.0.0
	clap-3.0.0-rc.8
	clap_derive-3.0.0-rc.8
	clap_generate-3.0.0-rc.8
	clap_generate_fig-3.0.0-rc.8
	crossbeam-utils-0.8.5
	difflib-0.4.0
	dirs-4.0.0
	dirs-sys-0.3.6
	doc-comment-0.3.3
	dunce-1.0.2
	either-1.6.1
	fnv-1.0.7
	getrandom-0.2.3
	glob-0.3.0
	globset-0.4.8
	hashbrown-0.11.2
	heck-0.3.3
	hermit-abi-0.1.19
	ignore-0.4.18
	indexmap-1.7.0
	itertools-0.10.3
	lazy_static-1.4.0
	libc-0.2.112
	log-0.4.14
	memchr-2.4.1
	minimal-lexical-0.2.1
	nom-7.1.0
	num-traits-0.2.14
	once_cell-1.9.0
	ordered-float-2.8.0
	os_str_bytes-6.0.0
	ppv-lite86-0.2.15
	predicates-2.1.0
	predicates-core-1.0.2
	predicates-tree-1.0.4
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.34
	quote-1.0.10
	rand-0.8.4
	rand_chacha-0.3.1
	rand_core-0.6.3
	rand_hc-0.3.1
	redox_syscall-0.2.10
	redox_users-0.4.0
	regex-1.5.4
	regex-automata-0.1.10
	regex-syntax-0.6.25
	remove_dir_all-0.5.3
	rstest-0.12.0
	rustc_version-0.4.0
	same-file-1.0.6
	semver-1.0.4
	serde-1.0.132
	serde_derive-1.0.132
	shell-words-1.0.0
	strsim-0.10.0
	syn-1.0.83
	tempfile-3.2.0
	termcolor-1.1.2
	termtree-0.2.3
	textwrap-0.14.2
	thiserror-1.0.30
	thiserror-impl-1.0.30
	thread_local-1.1.3
	unicode-segmentation-1.8.0
	unicode-xid-0.2.2
	version_check-0.9.3
	wait-timeout-0.2.0
	walkdir-2.3.2
	wasi-0.10.2+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit bash-completion-r1 cargo

DESCRIPTION="A smarter cd command with supports of all major shells"
HOMEPAGE="https://github.com/ajeetdsouza/zoxide"
SRC_URI="https://github.com/ajeetdsouza/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"

LICENSE="Apache-2.0 MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DOCS=( {CHANGELOG,README}.md )

QA_FLAGS_IGNORED="usr/bin/zoxide"

src_install() {
	einstalldocs
	cargo_src_install

	doman man/zoxide{,-add,-import,-init,-query,-remove}.1
	newbashcomp contrib/completions/zoxide.bash zoxide
	insinto /usr/share/zsh/site-functions
	doins contrib/completions/_zoxide
	insinto /usr/share/fish/vendor_completions.d
	doins contrib/completions/zoxide.fish
}
