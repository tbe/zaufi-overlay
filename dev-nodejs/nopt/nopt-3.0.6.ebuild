# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="Option parsing for Node, supporting types, shorthands, etc. Used by npm."
HOMEPAGE="https://github.com/npm/nopt#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-0.10"
RDEPEND="${DEPEND}
    dev-nodejs/abbrev
"

src_install() {
        npm_src_install

        exeinto "$(get_nodemoduledir)"/bin
        doexe ./bin/nopt.js
        dosym "$(get_nodemoduledir)"/./bin/nopt.js /usr/bin/nopt
}
