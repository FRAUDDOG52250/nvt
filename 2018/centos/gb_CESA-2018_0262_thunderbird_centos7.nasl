###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_CESA-2018_0262_thunderbird_centos7.nasl 10909 2018-08-10 15:03:01Z cfischer $
#
# CentOS Update for thunderbird CESA-2018:0262 centos7 
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
  script_oid("1.3.6.1.4.1.25623.1.0.882842");
  script_version("$Revision: 10909 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-10 17:03:01 +0200 (Fri, 10 Aug 2018) $");
  script_tag(name:"creation_date", value:"2018-02-02 06:30:21 +0100 (Fri, 02 Feb 2018)");
  script_cve_id("CVE-2018-5089", "CVE-2018-5095", "CVE-2018-5096", "CVE-2018-5097", 
                "CVE-2018-5098", "CVE-2018-5099", "CVE-2018-5102", "CVE-2018-5103", 
                "CVE-2018-5104", "CVE-2018-5117");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("CentOS Update for thunderbird CESA-2018:0262 centos7 ");
  script_tag(name: "summary", value: "Check the version of thunderbird");
  script_tag(name: "vuldetect", value: "Get the installed version with the help 
of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "Mozilla Thunderbird is a standalone mail 
and newsgroup client.

This update upgrades Thunderbird to version 52.6.0.

Security Fix(es):

* Multiple flaws were found in the processing of malformed web content. A
web page containing malicious content could cause Thunderbird to crash or,
potentially, execute arbitrary code with the privileges of the user running
Thunderbird. (CVE-2018-5089, CVE-2018-5095, CVE-2018-5096, CVE-2018-5097,
CVE-2018-5098, CVE-2018-5099, CVE-2018-5102, CVE-2018-5103, CVE-2018-5104,
CVE-2018-5117)

Red Hat would like to thank the Mozilla project for reporting these issues.
Upstream acknowledges Christian Holler, Jason Kratzer, Marcia Knous, Nathan
Froyd, Oriol Brufau, Ronald Crane, Randell Jesup, Tyson Smith, Cobos
Alvarez, Ryan VanderMeulen, Sebastian Hengst, Karl Tomlinson, Xidorn Quan,
Ludovic Hirlimann, Jason Orendorff, Anonymous, Nils, and Xisigr as the
original reporters.
");
  script_tag(name: "affected", value: "thunderbird on CentOS 7");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");

  script_xref(name: "CESA", value: "2018:0262");
  script_xref(name: "URL" , value: "http://lists.centos.org/pipermail/centos-announce/2018-February/022761.html");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "CentOS7")
{

  if ((res = isrpmvuln(pkg:"thunderbird", rpm:"thunderbird~52.6.0~1.el7.centos", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
