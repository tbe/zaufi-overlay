# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="A better node-open. Opens stuff like websites, files, executables. Cross-platform."
HOMEPAGE="https://github.com/sindresorhus/opn"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-0.10.0"
RDEPEND="${DEPEND}
    =dev-nodejs/object-assign-4.0.1
"
