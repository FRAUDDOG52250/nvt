###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for gnupg CESA-2014:0016 centos5 
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2014 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.881858");
  script_version("$Revision: 9373 $");
  script_tag(name:"last_modification", value:"$Date: 2018-04-06 10:57:18 +0200 (Fri, 06 Apr 2018) $");
  script_tag(name:"creation_date", value:"2014-01-10 11:51:24 +0530 (Fri, 10 Jan 2014)");
  script_cve_id("CVE-2013-4576");
  script_tag(name:"cvss_base", value:"2.1");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:P/I:N/A:N");
  script_name("CentOS Update for gnupg CESA-2014:0016 centos5 ");

  tag_insight = "The GNU Privacy Guard (GnuPG or GPG) is a tool for encrypting data and
creating digital signatures, compliant with the proposed OpenPGP Internet
standard and the S/MIME standard.

It was found that GnuPG was vulnerable to side-channel attacks via acoustic
cryptanalysis. An attacker in close range to a target system that is
decrypting ciphertexts could possibly use this flaw to recover the RSA
secret key from that system. (CVE-2013-4576)

Red Hat would like to thank Werner Koch of GnuPG upstream for reporting
this issue. Upstream acknowledges Genkin, Shamir, and Tromer as the
original reporters.

All gnupg users are advised to upgrade to this updated package, which
contains a backported patch to correct this issue.
";

  tag_affected = "gnupg on CentOS 5";

  tag_solution = "Please Install the Updated Packages.";


  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  script_xref(name: "CESA", value: "2014:0016");
  script_xref(name: "URL" , value: "http://lists.centos.org/pipermail/centos-announce/2014-January/020101.html");
  script_tag(name:"summary", value:"Check for the Version of gnupg");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2014 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms");
  exit(0);
}


include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "CentOS5")
{

  if ((res = isrpmvuln(pkg:"gnupg", rpm:"gnupg~1.4.5~18.el5_10.1", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}