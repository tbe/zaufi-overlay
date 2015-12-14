# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="A JSONSchema validator that uses code generation to be extremely fast"
HOMEPAGE="https://github.com/mafintosh/is-my-json-valid"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-0.10"
RDEPEND="${DEPEND}
    >=dev-nodejs/generate-function-2.0.0
    >=dev-nodejs/generate-object-property-1.1.0
    ~dev-nodejs/jsonpointer-2.0.0
    >=dev-nodejs/xtend-4.0.0
"
