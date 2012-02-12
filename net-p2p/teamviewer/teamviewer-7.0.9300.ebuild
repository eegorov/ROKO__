# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Remote Desktop Viewer"
HOMEPAGE="http://teamviewer.com/"
SRC_URI="ftp://calculate.linuxmaniac.net/pub/downloads/teamviewer-7.0.9300.tar.bz2"

LICENSE=""
SLOT="unstable"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=x11-base/xorg-server-1.10"
RDEPEND="${DEPEND}"

src_install() {
	cd "${WORKDIR}"
	cp -R * "${D}/" || die "install failed"
}