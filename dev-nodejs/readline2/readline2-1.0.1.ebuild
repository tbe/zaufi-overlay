# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="Readline Façade fixing bugs and issues found in releases 0.8 and 0.10"
HOMEPAGE="https://github.com/sboudrias/readline2#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-0.10"
RDEPEND="${DEPEND}
    =dev-nodejs/code-point-at-1.0.0
    =dev-nodejs/is-fullwidth-code-point-1.0.0
    =dev-nodejs/mute-stream-0.0.5
"
