###############################################################################
# OpenVAS Vulnerability Test
#
# Ubuntu Update for openjdk-6 USN-2706-1
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2015 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.842404");
  script_version("$Revision: 11037 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-17 13:51:16 +0200 (Fri, 17 Aug 2018) $");
  script_tag(name:"creation_date", value:"2015-08-07 07:27:38 +0200 (Fri, 07 Aug 2015)");
  script_cve_id("CVE-2015-2590", "CVE-2015-2628", "CVE-2015-4731", "CVE-2015-4732",
                "CVE-2015-4733", "CVE-2015-4760", "CVE-2015-4748", "CVE-2015-2601",
                "CVE-2015-2808", "CVE-2015-4000", "CVE-2015-2625", "CVE-2015-2613",
                "CVE-2015-2621", "CVE-2015-2632", "CVE-2015-4749");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("Ubuntu Update for openjdk-6 USN-2706-1");
  script_tag(name:"summary", value:"Check the version of openjdk-6");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"Several vulnerabilities were discovered in
the OpenJDK JRE related to information disclosure, data integrity, and availability.
An attacker could exploit these to cause a denial of service or expose sensitive
data over the network. (CVE-2015-2590, CVE-2015-2628, CVE-2015-4731,
CVE-2015-4732, CVE-2015-4733, CVE-2015-4760, CVE-2015-4748)

Several vulnerabilities were discovered in the cryptographic components
of the OpenJDK JRE. An attacker could exploit these to expose sensitive
data over the network. (CVE-2015-2601, CVE-2015-2808, CVE-2015-4000,
CVE-2015-2625, CVE-2015-2613)

As a security improvement, this update modifies OpenJDK behavior to
disable RC4 TLS/SSL cipher suites by default.

As a security improvement, this update modifies OpenJDK behavior to
reject DH key sizes below 768 bits by default, preventing a possible
downgrade attack.

Several vulnerabilities were discovered in the OpenJDK JRE related
to information disclosure. An attacker could exploit these to expose
sensitive data over the network. (CVE-2015-2621, CVE-2015-2632)

A vulnerability was discovered with how the JNDI component of the
OpenJDK JRE handles DNS resolutions. A remote attacker could exploit
this to cause a denial of service. (CVE-2015-4749)");
  script_tag(name:"affected", value:"openjdk-6 on Ubuntu 12.04 LTS");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");
  script_xref(name:"USN", value:"2706-1");
  script_xref(name:"URL", value:"http://www.ubuntu.com/usn/usn-2706-1/");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
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

  if ((res = isdpkgvuln(pkg:"icedtea-6-jre-cacao", ver:"6b36-1.13.8-0ubuntu1~12.04", rls:"UBUNTU12.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"icedtea-6-jre-jamvm", ver:"6b36-1.13.8-0ubuntu1~12.04", rls:"UBUNTU12.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jdk", ver:"6b36-1.13.8-0ubuntu1~12.04", rls:"UBUNTU12.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre", ver:"6b36-1.13.8-0ubuntu1~12.04", rls:"UBUNTU12.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre-headless", ver:"6b36-1.13.8-0ubuntu1~12.04", rls:"UBUNTU12.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre-lib", ver:"6b36-1.13.8-0ubuntu1~12.04", rls:"UBUNTU12.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-jre-zero", ver:"6b36-1.13.8-0ubuntu1~12.04", rls:"UBUNTU12.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"openjdk-6-source", ver:"6b36-1.13.8-0ubuntu1~12.04", rls:"UBUNTU12.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
