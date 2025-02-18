###############################################################################
# OpenVAS Vulnerability Test
#
# Ubuntu Update for linux-hwe USN-3333-1
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
  script_oid("1.3.6.1.4.1.25623.1.0.843211");
  script_version("$Revision: 11228 $");
  script_tag(name:"last_modification", value:"$Date: 2018-09-05 04:44:21 +0200 (Wed, 05 Sep 2018) $");
  script_tag(name:"creation_date", value:"2017-06-20 06:59:19 +0200 (Tue, 20 Jun 2017)");
  script_cve_id("CVE-2017-7374", "CVE-2017-1000364", "CVE-2017-1000363", "CVE-2017-5577",
                "CVE-2017-8890", "CVE-2017-9074", "CVE-2017-9075", "CVE-2017-9076",
                "CVE-2017-9077", "CVE-2017-9242");
  script_tag(name:"cvss_base", value:"7.2");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("Ubuntu Update for linux-hwe USN-3333-1");
  script_tag(name:"summary", value:"Check the version of linux-hwe");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"It was discovered that a use-after-free flaw
  existed in the filesystem encryption subsystem in the Linux kernel. A local
  attacker could use this to cause a denial of service (system crash).
  (CVE-2017-7374) It was discovered that the stack guard page for processes in the
  Linux kernel was not sufficiently large enough to prevent overlapping with the
  heap. An attacker could leverage this with another vulnerability to execute
  arbitrary code and gain administrative privileges (CVE-2017-1000364) Roee Hay
  discovered that the parallel port printer driver in the Linux kernel did not
  properly bounds check passed arguments. A local attacker with write access to
  the kernel command line arguments could use this to execute arbitrary code.
  (CVE-2017-1000363) Ingo Molnar discovered that the VideoCore DRM driver in the
  Linux kernel did not return an error after detecting certain overflows. A local
  attacker could exploit this issue to cause a denial of service (OOPS).
  (CVE-2017-5577) A double free bug was discovered in the IPv4 stack of the Linux
  kernel. An attacker could use this to cause a denial of service (system crash).
  (CVE-2017-8890) Andrey Konovalov discovered an IPv6 out-of-bounds read error in
  the Linux kernel's IPv6 stack. A local attacker could cause a denial of service
  or potentially other unspecified problems. (CVE-2017-9074) Andrey Konovalov
  discovered a flaw in the handling of inheritance in the Linux kernel's IPv6
  stack. A local user could exploit this issue to cause a denial of service or
  possibly other unspecified problems. (CVE-2017-9075) It was discovered that dccp
  v6 in the Linux kernel mishandled inheritance. A local attacker could exploit
  this issue to cause a denial of service or potentially other unspecified
  problems. (CVE-2017-9076) It was discovered that the transmission control
  protocol (tcp) v6 in the Linux kernel mishandled inheritance. A local attacker
  could exploit this issue to cause a denial of service or potentially other
  unspecified problems. (CVE-2017-9077) It was discovered that the IPv6 stack was
  doing over write consistency check after the data was actually overwritten. A
  local attacker could exploit this flaw to cause a denial of service (system
  crash). (CVE-2017-9242)");
  script_tag(name:"affected", value:"linux-hwe on Ubuntu 16.04 LTS");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");

  script_xref(name:"USN", value:"3333-1");
  script_xref(name:"URL", value:"http://www.ubuntu.com/usn/usn-3333-1/");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU16\.04 LTS");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();

res = "";
if(release == NULL){
  exit(0);
}

if(release == "UBUNTU16.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"linux-image-4.8.0-56-generic", ver:"4.8.0-56.61~16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"linux-image-4.8.0-56-generic-lpae", ver:"4.8.0-56.61~16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"linux-image-4.8.0-56-lowlatency", ver:"4.8.0-56.61~16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"linux-image-4.8.0-56-powerpc-e500mc", ver:"4.8.0-56.61~16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"linux-image-4.8.0-56-powerpc-smp", ver:"4.8.0-56.61~16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"linux-image-4.8.0-56-powerpc64-emb", ver:"4.8.0-56.61~16.04.1", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"linux-image-generic-hwe-16.04", ver:"4.8.0.56.27", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"linux-image-generic-lpae-hwe-16.04", ver:"4.8.0.56.27", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"linux-image-lowlatency-hwe-16.04", ver:"4.8.0.56.27", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"linux-image-virtual-hwe-16.04", ver:"4.8.0.56.27", rls:"UBUNTU16.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
