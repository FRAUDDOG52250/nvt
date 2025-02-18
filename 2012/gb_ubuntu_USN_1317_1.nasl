###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ubuntu_USN_1317_1.nasl 11037 2018-08-17 11:51:16Z cfischer $
#
# Ubuntu Update for ghostscript USN-1317-1
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
  script_xref(name:"URL", value:"http://www.ubuntu.com/usn/usn-1317-1/");
  script_oid("1.3.6.1.4.1.25623.1.0.840856");
  script_version("$Revision: 11037 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-17 13:51:16 +0200 (Fri, 17 Aug 2018) $");
  script_tag(name:"creation_date", value:"2012-01-09 13:29:45 +0530 (Mon, 09 Jan 2012)");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_xref(name:"USN", value:"1317-1");
  script_cve_id("CVE-2008-3520", "CVE-2008-3522", "CVE-2009-3743", "CVE-2010-4054",
                 "CVE-2011-4516", "CVE-2011-4517");
  script_name("Ubuntu Update for ghostscript USN-1317-1");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU(10\.04 LTS|10\.10|8\.04 LTS)");
  script_tag(name:"summary", value:"Ubuntu Update for Linux kernel vulnerabilities USN-1317-1");
  script_tag(name:"affected", value:"ghostscript on Ubuntu 10.10,
  Ubuntu 10.04 LTS,
  Ubuntu 8.04 LTS");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");
  script_tag(name:"insight", value:"It was discovered that Ghostscript did not correctly handle memory
  allocation when parsing certain malformed JPEG-2000 images. If a user or
  automated system were tricked into opening a specially crafted image, an
  attacker could cause a denial of service and possibly execute arbitrary
  code with user privileges. (CVE-2008-3520)

  It was discovered that Ghostscript did not correctly handle certain
  formatting operations when parsing JPEG-2000 images. If a user or automated
  system were tricked into opening a specially crafted image, an attacker
  could cause a denial of service and possibly execute arbitrary code with
  user privileges. (CVE-2008-3522)

  It was discovered that Ghostscript incorrectly handled certain malformed
  TrueType fonts. If a user or automated system were tricked into opening a
  document containing a specially crafted font, an attacker could cause a
  denial of service and possibly execute arbitrary code with user privileges.
  This issue only affected Ubuntu 8.04 LTS. (CVE-2009-3743)

  It was discovered that Ghostscript incorrectly handled certain malformed
  Type 2 fonts. If a user or automated system were tricked into opening a
  document containing a specially crafted font, an attacker could cause a
  denial of service and possibly execute arbitrary code with user privileges.
  This issue only affected Ubuntu 8.04 LTS. (CVE-2010-4054)

  Jonathan Foote discovered that Ghostscript incorrectly handled certain
  malformed JPEG-2000 image files. If a user or automated system were tricked
  into opening a specially crafted JPEG-2000 image file, an attacker could
  cause Ghostscript to crash or possibly execute arbitrary code with user
  privileges. (CVE-2011-4516, CVE-2011-4517)");
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

if(release == "UBUNTU10.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"libgs8", ver:"8.71.dfsg.1-0ubuntu5.4", rls:"UBUNTU10.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU10.10")
{

  if ((res = isdpkgvuln(pkg:"libgs8", ver:"8.71.dfsg.2-0ubuntu7.1", rls:"UBUNTU10.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU8.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"libgs8", ver:"8.61.dfsg.1-1ubuntu3.4", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
