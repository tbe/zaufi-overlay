# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="Brace expansion as known from sh&#x2F;bash"
HOMEPAGE="https://github.com/juliangruber/brace-expansion"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-0.10"
RDEPEND="${DEPEND}
    >=dev-nodejs/balanced-match-0.3.0
    ~dev-nodejs/concat-map-0.0.1
"
