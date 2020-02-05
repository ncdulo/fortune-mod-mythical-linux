# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="A collection of various Phate-isms and Tredixions."
HOMEPAGE="https://github.com/ncdulo/fortune-mod-mythical-linux/"
SRC_URI="https://github.com/ncdulo/fortune-mod-mythical-linux/releases/download/0.2.0/fortune-mod-mythical-linux-0.2.0.tar.gz"

S="${WORKDIR}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="offensive"
RESTRICT="mirror"

RDEPEND="games-misc/fortune-mod"

src_compile() {
	strfile mythical_linux || die
	use offensive && strfile off/mythical_linux || die
}

src_install() {
	insinto /usr/share/fortune
	doins mythical_linux mythical_linux.dat
	use offensive && insinto /usr/share/fortune/off
	use offensive && doins off/mythical_linux off/mythical_linux.dat
}
