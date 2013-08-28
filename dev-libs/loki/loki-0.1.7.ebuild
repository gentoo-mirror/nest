# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="C++ library of common design patterns and idioms."
HOMEPAGE="http://http://loki-lib.sourceforge.net//"
SRC_URI="mirror://sourceforge/${PN}-lib/${P}.tar.bz2"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="doc debug static-libs"
DEPEND="doc? ( app-doc/doxygen )"

src_prepare() {
	# Remove flags and make use of system ones
	sed -i 's/CXXFLAGS := $(CXXWARNFLAGS) -g -O2/CXXFLAGS += $(CXXWARNFLAGS)/' "${S}"/Makefile.common || die "sed for Makefile.common failed"
	sed -i '6d' "${S}"/test/SafeFormat/Makefile || die "sed for Makefile failed"

	# Make should consider $DESTDIR
	sed -i 's/$(prefix)/$(DESTDIR)$(prefix)/' "${S}"/include/Makefile || die "sed for include failed"
	sed -i 's/$(prefix)/$(DESTDIR)$(prefix)/' "${S}"/src/Makefile || die "sed for src failed"

	# Remove static-libs if not needed
	use static-libs || sed -i 's/install install-static/install /;24d' "${S}"/Makefile || die "sed for static-libs failed"
}

src_install() {
	# Install and copy documentation
	default

	if use doc ; then
		# Install files into docs directory
		docinto flex
		dohtml "${S}"/doc/flex/flex_string.html
		docinto yasli
		dohtml "${S}"/doc/yasli/yasli.html
		dodoc "${S}"/doc/yasli/Notes.txt

		# Install html documentation
		docinto html
		dohtml -r "${S}"/doc/html/
		# Install doxyfile
		insinto /usr/share/doc/${P}
		doins "${S}"/doc/Doxyfile
	fi
}
