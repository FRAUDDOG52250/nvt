###############################################################################
# OpenVAS Vulnerability Test
#
# Ubuntu Update for openjdk-6 USN-3077-1
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2016 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.842881");
  script_version("$Revision: 11037 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-17 13:51:16 +0200 (Fri, 17 Aug 2018) $");
  script_tag(name:"creation_date", value:"2016-09-13 05:46:37 +0200 (Tue, 13 Sep 2016)");
  script_cve_id("CVE-2016-3458", "CVE-2016-3500", "CVE-2016-3508", "CVE-2016-3550",
 		"CVE-2016-3606");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("Ubuntu Update for openjdk-6 USN-3077-1");
  script_tag(name:"summary", value:"Check the version of openjdk-6");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"A vulnerability was discovered in the OpenJDK
  JRE related to data integrity. An attacker could exploit this to expose sensitive
  data over the network or possibly execute arbitrary code. (CVE-2016-3458)

Multiple vulnerabilities were discovered in the OpenJDK JRE related
to availability.  An attacker could exploit these to cause a denial
of service. (CVE-2016-3500, CVE-2016-3508)

A vulnerability was discovered in the OpenJDK JRE related to information
disclosure. An attacker could exploit this to expose sensitive data over
the network. (CVE-2016-3550)

A vulnerability was discovered in the OpenJDK JRE related to information
disclosure, data integrity, and availability. An attacker could exploit
this to cause a denial of service, expose sensitive data over the network,
or possibly execute arbitrary code. (CVE-2016-3606)");
  script_tag(name:"affected", value:"openjdk-6 on Ubuntu 12.04 LTS");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");

  script_xref(name:"USN", value:"3077-1");
  script_xref(name:"URL", value:"http://www.ubuntu.com/usn/usn-3077-1/");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU12\.04 LTS");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();

res = "";
if(release == NULL){
  exit(0);
}

if(release == "UBUNTU12.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"icedtea-6-jre-cacao:i386", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if ((res = isdpkgvuln(pkg:"icedtea-6-jre-cacao:amd64", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if ((res = isdpkgvuln(pkg:"icedtea-6-jre-jamvm:i386", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if ((res = isdpkgvuln(pkg:"icedtea-6-jre-jamvm:amd64", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre:i386", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre:amd64", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre-headless:i386", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre-headless:amd64", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre-lib", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre-zero:i386", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre-zero:amd64", ver:"6b40-1.13.12-0ubuntu0.12.04.1", rls:"UBUNTU12.04 LTS")) != NULL)
  {
     security_message(data:res);
     exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}