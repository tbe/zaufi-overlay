# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
# Initially this file was autogenerated by [npm2ebuild](https://github.com/zaufi/npm2ebuild)
#

EAPI=5

inherit npm

DESCRIPTION="Understand how your tool is being used by anonymously reporting usage metrics to an analtyics vendor, e.g. Google Analytics."
HOMEPAGE="https://github.com/yeoman/insight#readme"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=net-libs/nodejs-0.10.0"
RDEPEND="${DEPEND}
    =dev-nodejs/async-1.4.2
    =dev-nodejs/chalk-1.0.0
    =dev-nodejs/configstore-1.0.0
    =dev-nodejs/inquirer-0.10.0
    =dev-nodejs/lodash-debounce-3.0.1
    =dev-nodejs/object-assign-4.0.1
    =dev-nodejs/os-name-1.0.0
    =dev-nodejs/request-2.40.0
    =dev-nodejs/tough-cookie-2.0.0
"
