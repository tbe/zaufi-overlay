# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="General purpose crypto utilities"
HOMEPAGE="https://github.com/hapijs/cryptiles#readme"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-4.0.0"
RDEPEND="${DEPEND}
    =dev-nodejs/boom-3*
"
