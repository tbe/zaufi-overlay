# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="Streams3, a user-land copy of the stream library from iojs v2.x"
HOMEPAGE="https://github.com/nodejs/readable-stream#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-0.10"
RDEPEND="${DEPEND}
    >=dev-nodejs/core-util-is-1.0.0
    >=dev-nodejs/inherits-2.0.1
    ~dev-nodejs/isarray-0.0.1
    >=dev-nodejs/process-nextick-args-1.0.0
    =dev-nodejs/string_decoder-0.10.*
    >=dev-nodejs/util-deprecate-1.0.1
"