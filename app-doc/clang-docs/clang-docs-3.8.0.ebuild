# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="clang API documentation"
HOMEPAGE="http://clang.llvm.org/"
SRC_URI="http://llvm.org/releases/${PV}/cfe-${PV}.src.tar.xz"

LICENSE="UoI-NCSA"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~x86 ~amd64-fbsd ~x86-fbsd ~x64-freebsd ~amd64-linux ~arm-linux ~x86-linux ~ppc-macos ~x64-macos"
IUSE=""

DEPEND="app-doc/doxygen[dot]"
RDEPEND=""

S=${WORKDIR}/cfe-${PV}.src

src_configure() {
    # Render `preconfigured' doxygen configuration file
    sed -e "s,@S@,${S}," \
        -e "s,@DST@,${D}/usr/share/doc/${PF}," \
        -e "s,@PV@,${PV}," \
        "${FILESDIR}"/doxygen.cfg.in > "${S}"/docs/doxygen.cfg || die
    # Make destination dir before "compile"
    mkdir -p ${D}/usr/share/doc/${PF} || die
}

src_compile() {
    /usr/bin/doxygen "${S}"/docs/doxygen.cfg
}

src_install() {
    rm ${D}/usr/share/doc/${PF}/html/*.{md5,map}
}
