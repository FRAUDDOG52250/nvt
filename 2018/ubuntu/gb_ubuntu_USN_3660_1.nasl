###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ubuntu_USN_3660_1.nasl 11044 2018-08-18 15:12:40Z cfischer $
#
# Ubuntu Update for thunderbird USN-3660-1
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
  script_oid("1.3.6.1.4.1.25623.1.0.843537");
  script_version("$Revision: 11044 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-18 17:12:40 +0200 (Sat, 18 Aug 2018) $");
  script_tag(name:"creation_date", value:"2018-05-26 05:44:12 +0200 (Sat, 26 May 2018)");
  script_cve_id("CVE-2018-5150", "CVE-2018-5154", "CVE-2018-5155", "CVE-2018-5159",
                "CVE-2018-5168", "CVE-2018-5178", "CVE-2018-5161", "CVE-2018-5162",
                "CVE-2018-5170", "CVE-2018-5183", "CVE-2018-5184", "CVE-2018-5185");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("Ubuntu Update for thunderbird USN-3660-1");
  script_tag(name:"summary", value:"Check the version of thunderbird");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present
  on the target host.");
  script_tag(name:"insight", value:"Multiple security issues were discovered in
Thunderbird. If a user were tricked in to opening a specially crafted website in
a browsing context, an attacker could potentially exploit these to cause a denial
of service via application crash, install lightweight themes without user
interaction, or execute arbitrary code. (CVE-2018-5150, CVE-2018-5154,
CVE-2018-5155, CVE-2018-5159, CVE-2018-5168, CVE-2018-5178)

An issue was discovered when processing message headers in Thunderbird. If
a user were tricked in to opening a specially crafted message, an attacker
could potentially exploit this to cause a denial of service via
application hang. (CVE-2018-5161)

It was discovered encrypted messages could leak plaintext via the src
attribute of remote images or links. An attacker could potentially exploit
this to obtain sensitive information. (CVE-2018-5162)

It was discovered that the filename of an attachment could be spoofed. An
attacker could potentially exploit this by tricking the user in to opening
an attachment of a different type to the one expected. (CVE-2018-5170)

Multiple security issues were discovered in Skia. If a user were tricked
in to opening a specially crafted message, an attacker could potentially
exploit these to cause a denial of service via application crash, or
execute arbitrary code. (CVE-2018-5183)

It was discovered that S/MIME encrypted messages with remote content could
leak plaintext via a chosen-ciphertext attack. An attacker could
potentially exploit this to obtain sensitive information. (CVE-2018-5184)

It was discovered that plaintext of decrypted emails could leak by
submitting an embedded form. An attacker could potentially exploit this to
obtain sensitive information. (CVE-2018-5185)");
  script_tag(name:"affected", value:"thunderbird on Ubuntu 18.04 LTS,
  Ubuntu 17.10,
  Ubuntu 16.04 LTS,
  Ubuntu 14.04 LTS");
  script_tag(name:"solution", value:"Please install the updated packages.");

  script_xref(name:"USN", value:"3660-1");
  script_xref(name:"URL", value:"https://usn.ubuntu.com/3660-1");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU(14\.04 LTS|17\.10|18\.04 LTS|16\.04 LTS)");
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

  if ((res = isdpkgvuln(pkg:"thunderbird", ver:"1:52.8.0+build1-0ubuntu0.14.04.1", rls:"UBUNTU14.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU17.10")
{

  if ((res = isdpkgvuln(pkg:"thunderbird", ver:"1:52.8.0+build1-0ubuntu0.17.10.1", rls:"UBUNTU17.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU18.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"thunderbird", ver:"1:52.8.0+build1-0ubuntu0.18.04.1", rls:"UBUNTU18.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}


if(release == "UBUNTU16.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"thunderbird", ver:"1:52.8.0+build1-0ubuntu0.16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
