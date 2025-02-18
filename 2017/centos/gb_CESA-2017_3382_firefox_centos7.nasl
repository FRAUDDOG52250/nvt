###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_CESA-2017_3382_firefox_centos7.nasl 10868 2018-08-10 05:36:57Z ckuersteiner $
#
# CentOS Update for firefox CESA-2017:3382 centos7 
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
  script_oid("1.3.6.1.4.1.25623.1.0.882811");
  script_version("$Revision: 10868 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-10 07:36:57 +0200 (Fri, 10 Aug 2018) $");
  script_tag(name:"creation_date", value:"2017-12-07 07:39:25 +0100 (Thu, 07 Dec 2017)");
  script_cve_id("CVE-2017-7843");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"qod_type", value:"package");
  script_name("CentOS Update for firefox CESA-2017:3382 centos7 ");
  script_tag(name: "summary", value: "Check the version of firefox");
  script_tag(name: "vuldetect", value: "Get the installed version with the help 
of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "Mozilla Firefox is an open source web 
browser.

This update upgrades Firefox to version 52.5.1 ESR.

Security Fix(es):

* A privacy flaw was discovered in Firefox. In Private Browsing mode, a web
worker could write persistent data to IndexedDB, which was not cleared when
exiting and would persist across multiple sessions. A malicious website
could exploit the flaw to bypass private-browsing protections and uniquely
fingerprint visitors. (CVE-2017-7843)

Red Hat would like to thank the Mozilla project for reporting this issue.
Upstream acknowledges Konark as the original reporter.
");
  script_tag(name: "affected", value: "firefox on CentOS 7");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");

  script_xref(name: "CESA", value: "2017:3382");
  script_xref(name: "URL" , value: "http://lists.centos.org/pipermail/centos-announce/2017-December/022683.html");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
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

  if ((res = isrpmvuln(pkg:"firefox", rpm:"firefox~52.5.1~1.el7.centos", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
