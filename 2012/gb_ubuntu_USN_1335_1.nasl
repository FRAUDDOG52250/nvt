###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ubuntu_USN_1335_1.nasl 11037 2018-08-17 11:51:16Z cfischer $
#
# Ubuntu Update for t1lib USN-1335-1
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2012 Greenbone Networks GmbH, http://www.greenbone.net
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

include("revisions-lib.inc");



if(description)
{
  script_xref(name:"URL", value:"http://www.ubuntu.com/usn/usn-1335-1/");
  script_oid("1.3.6.1.4.1.25623.1.0.840866");
  script_version("$Revision: 11037 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-17 13:51:16 +0200 (Fri, 17 Aug 2018) $");
  script_tag(name:"creation_date", value:"2012-01-20 11:00:04 +0530 (Fri, 20 Jan 2012)");
  script_cve_id("CVE-2010-2642", "CVE-2011-0433", "CVE-2011-1552", "CVE-2011-1553", "CVE-2011-1554");
  script_tag(name:"cvss_base", value:"7.6");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:H/Au:N/C:C/I:C/A:C");
  script_xref(name:"USN", value:"1335-1");
  script_name("Ubuntu Update for t1lib USN-1335-1");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU(10\.10|10\.04 LTS|11\.04)");
  script_tag(name:"summary", value:"Ubuntu Update for Linux kernel vulnerabilities USN-1335-1");
  script_tag(name:"affected", value:"t1lib on Ubuntu 11.04,
  Ubuntu 10.10,
  Ubuntu 10.04 LTS");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");
  script_tag(name:"insight", value:"Jon Larimer discovered that t1lib did not properly parse AFM fonts. If a
  user were tricked into using a specially crafted font file, a remote
  attacker could cause t1lib to crash or possibly execute arbitrary code with
  user privileges. (CVE-2010-2642, CVE-2011-0433)

  Jonathan Brossard discovered that t1lib did not correctly handle certain
  malformed font files. If a user were tricked into using a specially crafted
  font file, a remote attacker could cause t1lib to crash. (CVE-2011-1552,
  CVE-2011-1553, CVE-2011-1554)");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();

res = "";
if(release == NULL){
  exit(0);
}

if(release == "UBUNTU10.10")
{

  if ((res = isdpkgvuln(pkg:"libt1-5", ver:"5.1.2-3ubuntu0.10.10.2", rls:"UBUNTU10.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU10.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"libt1-5", ver:"5.1.2-3ubuntu0.10.04.2", rls:"UBUNTU10.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU11.04")
{

  if ((res = isdpkgvuln(pkg:"libt1-5", ver:"5.1.2-3ubuntu0.11.04.2", rls:"UBUNTU11.04")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
