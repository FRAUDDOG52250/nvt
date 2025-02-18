###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ubuntu_USN_3551_1.nasl 11037 2018-08-17 11:51:16Z cfischer $
#
# Ubuntu Update for webkit2gtk USN-3551-1
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2018 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.843437");
  script_version("$Revision: 11037 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-17 13:51:16 +0200 (Fri, 17 Aug 2018) $");
  script_tag(name:"creation_date", value:"2018-01-31 07:54:47 +0100 (Wed, 31 Jan 2018)");
  script_cve_id("CVE-2018-4088", "CVE-2018-4096", "CVE-2017-7153", "CVE-2017-7160",
                "CVE-2017-7161", "CVE-2017-7165", "CVE-2017-13884", "CVE-2017-13885");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("Ubuntu Update for webkit2gtk USN-3551-1");
  script_tag(name:"summary", value:"Check the version of webkit2gtk");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"Multiple security issues were discovered in
  the WebKitGTK+ Web and JavaScript engines. If a user were tricked in to opening
  a specially crafted website, an attacker could potentially exploit these to
  cause a denial of service, spoof the user interface, or execute arbitrary code.
  (CVE-2018-4088, CVE-2018-4096, CVE-2017-7153, CVE-2017-7160, CVE-2017-7161,
  CVE-2017-7165, CVE-2017-13884, CVE-2017-13885)");
  script_tag(name:"affected", value:"webkit2gtk on Ubuntu 17.10,
  Ubuntu 16.04 LTS");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");

  script_xref(name:"USN", value:"3551-1");
  script_xref(name:"URL", value:"http://www.ubuntu.com/usn/usn-3551-1/");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU(17\.10|16\.04 LTS)");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();

res = "";
if(release == NULL){
  exit(0);
}

if(release == "UBUNTU17.10")
{

  if ((res = isdpkgvuln(pkg:"libjavascriptcoregtk-4.0-18:amd64", ver:"2.18.6-0ubuntu0.17.10.1", rls:"UBUNTU17.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"libjavascriptcoregtk-4.0-18:i386", ver:"2.18.6-0ubuntu0.17.10.1", rls:"UBUNTU17.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"libwebkit2gtk-4.0-37:amd64", ver:"2.18.6-0ubuntu0.17.10.1", rls:"UBUNTU17.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"libwebkit2gtk-4.0-37:i386", ver:"2.18.6-0ubuntu0.17.10.1", rls:"UBUNTU17.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU16.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"libjavascriptcoregtk-4.0-18:amd64", ver:"2.18.6-0ubuntu0.16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"libjavascriptcoregtk-4.0-18:i386", ver:"2.18.6-0ubuntu0.16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"libwebkit2gtk-4.0-37:amd64", ver:"2.18.6-0ubuntu0.16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"libwebkit2gtk-4.0-37:i386", ver:"2.18.6-0ubuntu0.16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
