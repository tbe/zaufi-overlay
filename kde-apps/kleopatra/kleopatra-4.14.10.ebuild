# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

KDE_HANDBOOK="optional"
KMNAME="kdepim"
EGIT_BRANCH="KDE/4.14"
inherit kde4-meta

DESCRIPTION="Kleopatra - KDE X.509 key manager"
HOMEPAGE="http://www.kde.org/applications/utilities/kleopatra/"
KEYWORDS="~amd64 ~arm ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	>=app-crypt/gpgme-1.3.2
	dev-libs/boost:=
	dev-libs/libassuan
	dev-libs/libgpg-error
	$(add_kdeapps_dep kdepimlibs 'akonadi(+)')
	$(add_kdeapps_dep kdepim-common-libs)
"
RDEPEND="${DEPEND}
	app-crypt/gnupg
"

KMEXTRACTONLY="
	libkleo/
"

PATCHES=( "${FILESDIR}/${PN}-install-headers.patch" )

src_unpack() {
	if use handbook; then
		KMEXTRA="
			doc/kwatchgnupg
		"
	fi

	kde4-meta_src_unpack
}

src_prepare() {
	# Wrap all boost #include due a bug:
	# https://bugreports.qt.io/browse/QTBUG-22829
	ebegin "Wrapping #include <boost/...> into #ifndef Q_MOC_RUN/#endif"
	for i in `find . -name '*.h' -o -name '*.cpp'`; do
		sed -f "${FILESDIR}/wrap-boost-headers.sed" -i "${i}"
	done
	eend $?
	kde4-meta_src_prepare
}
