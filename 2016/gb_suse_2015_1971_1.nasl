###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_suse_2015_1971_1.nasl 8047 2017-12-08 08:56:07Z santu $
#
# SuSE Update for java-1_7_0-openjdk openSUSE-SU-2015:1971-1 (java-1_7_0-openjdk)
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
  script_oid("1.3.6.1.4.1.25623.1.0.851182");
  script_version("$Revision: 8047 $");
  script_tag(name:"last_modification", value:"$Date: 2017-12-08 09:56:07 +0100 (Fri, 08 Dec 2017) $");
  script_tag(name:"creation_date", value:"2016-02-02 17:15:47 +0100 (Tue, 02 Feb 2016)");
  script_cve_id("CVE-2015-4734", "CVE-2015-4803", "CVE-2015-4805", "CVE-2015-4806", 
                "CVE-2015-4835", "CVE-2015-4840", "CVE-2015-4842", "CVE-2015-4843", 
                "CVE-2015-4844", "CVE-2015-4860", "CVE-2015-4872", "CVE-2015-4881", 
                "CVE-2015-4882", "CVE-2015-4883", "CVE-2015-4893", "CVE-2015-4903", 
                "CVE-2015-4911");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("SuSE Update for java-1_7_0-openjdk openSUSE-SU-2015:1971-1 (java-1_7_0-openjdk)");
  script_tag(name: "summary", value: "Check the version of java-1_7_0-openjdk");
  script_tag(name: "vuldetect", value: "Get the installed version with the help 
of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "
  java-1_7_0-openjdk was updated to version 7u91 to fix 17 security issues.

  These security issues were fixed:
  - CVE-2015-4843: Unspecified vulnerability in Oracle Java SE 6u101, 7u85,
  and 8u60, and Java SE Embedded 8u51, allowed remote attackers to affect
  confidentiality, integrity, and availability via unknown vectors related
  to Libraries (bsc#951376).
  - CVE-2015-4842: Unspecified vulnerability in Oracle Java SE 6u101, 7u85,
  and 8u60, and Java SE Embedded 8u51, allowed remote attackers to affect
  confidentiality via vectors related to JAXP (bsc#951376).
  - CVE-2015-4840: Unspecified vulnerability in Oracle Java SE 7u85 and
  8u60, and Java SE Embedded 8u51, allowed remote attackers to affect
  confidentiality via unknown vectors related to 2D (bsc#951376).
  - CVE-2015-4872: Unspecified vulnerability in Oracle Java SE 6u101, 7u85,
  and 8u60  Java SE Embedded 8u51  and JRockit R28.3.7 allowed remote
  attackers to affect integrity via unknown vectors related to Security
  (bsc#951376).
  - CVE-2015-4860: Unspecified vulnerability in Oracle Java SE 6u101, 7u85,
  and 8u60, and Java SE Embedded 8u51, allowed remote attackers to affect
  confidentiality, integrity, and availability via vectors related to RMI,
  a different vulnerability than CVE-2015-4883 (bsc#951376).
  - CVE-2015-4844: Unspecified vulnerability in Oracle Java SE 6u101, 7u85,
  and 8u60, and Java SE Embedded 8u51, allowed remote attackers to affect
  confidentiality, integrity, and availability via unknown vectors related
  to 2D (bsc#951376).
  - CVE-2015-4883: Unspecified vulnerability in Oracle Java SE 6u101, 7u85,
  and 8u60, and Java SE Embedded 8u51, allowed remote attackers to affect
  confidentiality, integrity, and availability via vectors related to RMI,
  a different vulnerability than CVE-2015-4860 (bsc#951376).
  - CVE-2015-4893: Unspecified vulnerability in Oracle Java SE 6u101, 7u85,
  and 8u60  Java SE Embedded 8u51  and JRockit R28.3.7 allowed remote
  attackers to affect availability via vectors related to JAXP, a
  different vulnerability than CVE-2015-4803 and CVE-2015-4911
  (bsc#951376).
  - CVE-2015-4911: Unspecified vulnerability in Oracle Java SE 6u101, 7u85,
  and 8u60  Java SE Embedded 8u51  and JRockit R28.3.7 allowed remote
  attackers to affect availability via vectors related to JAXP, a
  different vulnerability than CVE-2015-4803 and CVE-2015-4893
  (bsc#951376).
  - CVE-2015-4882: Unspecified vulnerability in Oracle Java SE 6u101, 7u85,
  and 8u60, and Java SE Embedded 8u51, allowed remote attackers to affect
  availability via vectors related to CORBA (bsc#95 ... 

  Description truncated, for more information please check the Reference URL");
  script_tag(name: "affected", value: "java-1_7_0-openjdk on openSUSE Leap 42.1");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");

  script_xref(name: "openSUSE-SU", value: "2015:1971_1");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "openSUSELeap42.1")
{

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk", rpm:"java-1_7_0-openjdk~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-accessibility", rpm:"java-1_7_0-openjdk-accessibility~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-bootstrap", rpm:"java-1_7_0-openjdk-bootstrap~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-bootstrap-debuginfo", rpm:"java-1_7_0-openjdk-bootstrap-debuginfo~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-bootstrap-debugsource", rpm:"java-1_7_0-openjdk-bootstrap-debugsource~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-bootstrap-devel", rpm:"java-1_7_0-openjdk-bootstrap-devel~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-bootstrap-devel-debuginfo", rpm:"java-1_7_0-openjdk-bootstrap-devel-debuginfo~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-bootstrap-headless", rpm:"java-1_7_0-openjdk-bootstrap-headless~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-bootstrap-headless-debuginfo", rpm:"java-1_7_0-openjdk-bootstrap-headless-debuginfo~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-debuginfo", rpm:"java-1_7_0-openjdk-debuginfo~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-debugsource", rpm:"java-1_7_0-openjdk-debugsource~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-demo", rpm:"java-1_7_0-openjdk-demo~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-demo-debuginfo", rpm:"java-1_7_0-openjdk-demo-debuginfo~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-devel", rpm:"java-1_7_0-openjdk-devel~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-devel-debuginfo", rpm:"java-1_7_0-openjdk-devel-debuginfo~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-headless", rpm:"java-1_7_0-openjdk-headless~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-headless-debuginfo", rpm:"java-1_7_0-openjdk-headless-debuginfo~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-src", rpm:"java-1_7_0-openjdk-src~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_7_0-openjdk-javadoc", rpm:"java-1_7_0-openjdk-javadoc~1.7.0.91~22.1", rls:"openSUSELeap42.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
