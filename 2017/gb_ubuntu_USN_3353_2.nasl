###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ubuntu_USN_3353_2.nasl 11037 2018-08-17 11:51:16Z cfischer $
#
# Ubuntu Update for samba USN-3353-2
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2017 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.843243");
  script_version("$Revision: 11037 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-17 13:51:16 +0200 (Fri, 17 Aug 2018) $");
  script_tag(name:"creation_date", value:"2017-07-16 07:22:40 +0200 (Sun, 16 Jul 2017)");
  script_cve_id("CVE-2017-11103");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("Ubuntu Update for samba USN-3353-2");
  script_tag(name:"summary", value:"Check the version of samba");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"USN-3353-1 fixed a vulnerability in
Heimdal. This update provides the corresponding update for Samba.

Jeffrey Altman, Viktor Dukhovni, and Nicolas Williams discovered
that Samba clients incorrectly trusted unauthenticated portions of
Kerberos tickets. A remote attacker could use this to impersonate
trusted network servers or perform other attacks.");
  script_tag(name:"affected", value:"samba on Ubuntu 17.04,
  Ubuntu 16.10,
  Ubuntu 16.04 LTS,
  Ubuntu 14.04 LTS");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");

  script_xref(name:"USN", value:"3353-2");
  script_xref(name:"URL", value:"https://www.ubuntu.com/usn/usn-3353-2");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU(14\.04 LTS|17\.04|16\.10|16\.04 LTS)");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();

res = "";
if(release == NULL){
  exit(0);
}

if(release == "UBUNTU14.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"samba-libs:amd64", ver:"2:4.3.11+dfsg-0ubuntu0.14.04.10", rls:"UBUNTU14.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"samba-libs:i386", ver:"2:4.3.11+dfsg-0ubuntu0.14.04.10", rls:"UBUNTU14.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU17.04")
{

  if ((res = isdpkgvuln(pkg:"samba-libs:amd64", ver:"2:4.5.8+dfsg-0ubuntu0.17.04.4", rls:"UBUNTU17.04")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"samba-libs:i386", ver:"2:4.5.8+dfsg-0ubuntu0.17.04.4", rls:"UBUNTU17.04")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU16.10")
{

  if ((res = isdpkgvuln(pkg:"samba-libs:amd64", ver:"2:4.4.5+dfsg-2ubuntu5.8", rls:"UBUNTU16.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"samba-libs:i386", ver:"2:4.4.5+dfsg-2ubuntu5.8", rls:"UBUNTU16.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU16.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"samba-libs:amd64", ver:"2:4.3.11+dfsg-0ubuntu0.16.04.9", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"samba-libs:i386", ver:"2:4.3.11+dfsg-0ubuntu0.16.04.9", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
