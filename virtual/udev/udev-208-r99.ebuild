# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/udev/udev-208-r1.ebuild,v 1.1 2014/02/25 16:21:32 mgorny Exp $

EAPI=5
inherit multilib-build

DESCRIPTION="Virtual to select between sys-fs/udev and sys-fs/eudev"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86"
# These default enabled IUSE flags should follow defaults of sys-fs/udev.
IUSE="gudev introspection -kmod selinux static-libs"

DEPEND=""
RDEPEND="|| ( >=sys-fs/udev-208[${MULTILIB_USEDEP},gudev?,introspection?,kmod?,selinux?,static-libs?]
	>=sys-apps/systemd-208:0/2[${MULTILIB_USEDEP},gudev?,introspection?,kmod?,selinux?,static-libs(-)?]
	>=sys-apps/systemd-208:0/1[${MULTILIB_USEDEP},gudev?,introspection?,kmod?,selinux?,static-libs(-)?]
	>=sys-apps/systemd-208:0/0[${MULTILIB_USEDEP},gudev?,introspection?,kmod?,selinux?,static-libs(-)?]
	kmod? ( || (
		>=sys-fs/eudev-1.3[${MULTILIB_USEDEP},modutils,gudev?,introspection?,selinux?,static-libs?]
		>=sys-fs/eudev-1.3[${MULTILIB_USEDEP},kmod,gudev?,introspection?,selinux?,static-libs?]
	) )
	!kmod? ( >=sys-fs/eudev-1.3[${MULTILIB_USEDEP},gudev?,introspection?,selinux?,static-libs?] )
	)"
