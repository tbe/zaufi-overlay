# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="A low-level utility library delivering consistency, customization,
performace and extra features."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=net-libs/nodejs-0.8.10"
DEPEND=""

NPM_EXTRA_FILES="build.js build dist vendor"