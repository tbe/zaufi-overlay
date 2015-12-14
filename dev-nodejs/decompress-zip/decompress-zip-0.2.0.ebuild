# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="Extract files from a ZIP archive"
HOMEPAGE="https://github.com/bower/decompress-zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-0.10.0"
RDEPEND="${DEPEND}
    =dev-nodejs/binary-0.3.0
    =dev-nodejs/graceful-fs-3.0.0
    =dev-nodejs/mkpath-0.1.0
    =dev-nodejs/nopt-3.0.1
    =dev-nodejs/q-1.1.2
    =dev-nodejs/readable-stream-1.1.8
    =dev-nodejs/touch-0.0.3
"

src_install() {
        npm_src_install

        exeinto "$(get_nodemoduledir)"/bin
        doexe bin/decompress-zip
        dosym "$(get_nodemoduledir)"/bin/decompress-zip /usr/bin/decompress-zip
}
