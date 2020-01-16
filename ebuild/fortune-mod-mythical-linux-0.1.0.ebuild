# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="A collection of various Phate-isms and Tredixions."
HOMEPAGE="https://github.com/ncdulo/fortune-mod-mythical-linux/"
SRC_URI="https://github.com/ncdulo/fortune-mod-mythical-linux/releases/download/0.1.0/fortune-mod-mythical-linux-0.1.0.tar.gz"

# Source directory; the dir where the sources can be found (automatically
# unpacked) inside ${WORKDIR}.  The default value for S is ${WORKDIR}/${P}
# If you don't need to change it, leave the S= line out of the ebuild
# to keep it tidy.
#S="${WORKDIR}/${P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="offensive"

RDEPEND="games-misc/fortune-mod"

src_compile() {
	#use offensive && cat gentoo-forums-offensive-${PV} >> gentoo-forums
	strfile mythical_linux || die
	use offensive && strfile off/mythical_linux || die
}

src_install() {
	insinto /usr/share/fortune
	doins mythical_linux mythical_linux.dat
	# TODO: Implement installation of offensive fortunes if the use flag
	# is selected. Not sure if I should use two `doinst` or another way.
}
