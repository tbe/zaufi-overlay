# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="The Bower config reader and writer."
HOMEPAGE="http://bower.io"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-0.8.0"
RDEPEND="${DEPEND}
    =dev-nodejs/graceful-fs-4.0.0
    >=dev-nodejs/mout-0.9.0
    =dev-nodejs/optimist-0.6.1
    =dev-nodejs/osenv-0.1.3
    =dev-nodejs/untildify-2.1.0
"
