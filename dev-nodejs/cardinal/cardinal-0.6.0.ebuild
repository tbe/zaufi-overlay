# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="Syntax highlights JavaScript code with ANSI colors to be printed to the terminal."
HOMEPAGE="https://github.com/thlorenz/cardinal"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-0.10"
RDEPEND="${DEPEND}
    >=dev-nodejs/ansicolors-0.2.1
    >=dev-nodejs/redeyed-0.6.0
"

src_install() {
        npm_src_install

        exeinto "$(get_nodemoduledir)"/bin
        doexe ./bin/cdl.js
        dosym "$(get_nodemoduledir)"/./bin/cdl.js /usr/bin/cdl
}
