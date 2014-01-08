# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby18 ruby19 ruby20 ruby21"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_2,3_3} )

RUBY_FAKEGEM_NAME="pygments.rb"
MY_P="${RUBY_FAKEGEM_NAME}-${PV}"

RUBY_FAKEGEM_RECIPE_TEST="rake"
RUBY_FAKEGEM_RECIPE_DOC="none"
RUBY_FAKEGEM_EXTRADOC="CHANGELOG.md README.md"

inherit ruby-fakegem python-single-r1

DESCRIPTION="pygments syntax highlighting in ruby"
HOMEPAGE="https://github.com/tmm1/pygments.rb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RUBY_S="${MY_P}"

RDEPEND="dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/simplejson[${PYTHON_USEDEP}]"
DEPEND="test? ( ${RDEPEND} )"

ruby_add_rdepend "~dev-ruby/yajl-ruby-1.1.0
	>=dev-ruby/posix-spawn-0.3.6"
ruby_add_bdepend "dev-ruby/rake-compiler"

pkg_setup() {
	ruby-ng_pkg_setup
	python-single-r1_pkg_setup
}

all_ruby_prepare() {
	sed -i -e '/[Bb]undler/d' Rakefile || die "sed failed"
	python_fix_shebang lib/pygments/mentos.py
	# we are loosing a "custom github lexer here", no idea what it is,
	# but if we need it, it should go into dev-python/pygments
	rm -r vendor lexers || die "removing bundled libs failed"
}

each_ruby_compile() {
	# regenerate the lexer cache, based on the system pygments pkg
	${RUBY} cache-lexers.rb || die "regenerating lexer cache failed"
}

each_ruby_install() {
	each_fakegem_install
	ruby_fakegem_doins lexers
}
