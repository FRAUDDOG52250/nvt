###############################################################################
# OpenVAS Vulnerability Test
#
# Fedora Update for kernel FEDORA-2014-5235
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
  script_oid("1.3.6.1.4.1.25623.1.0.804551");
  script_version("$Revision: 9373 $");
  script_tag(name:"last_modification", value:"$Date: 2018-04-06 10:57:18 +0200 (Fri, 06 Apr 2018) $");
  script_tag(name:"creation_date", value:"2014-04-21 11:58:15 +0530 (Mon, 21 Apr 2014)");
  script_cve_id("CVE-2014-2851", "CVE-2014-0155", "CVE-2014-2678", "CVE-2014-2580",
                "CVE-2014-0077", "CVE-2014-0055", "CVE-2014-2568", "CVE-2014-0131",
                "CVE-2014-2523", "CVE-2014-2309", "CVE-2014-0100", "CVE-2014-0101",
                "CVE-2014-0049", "CVE-2014-0102", "CVE-2014-2039", "CVE-2014-0069",
                "CVE-2014-1874", "CVE-2014-1446", "CVE-2014-1438", "CVE-2013-4579",
                "CVE-2013-4587", "CVE-2013-6376", "CVE-2013-6368", "CVE-2013-6367");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_name("Fedora Update for kernel FEDORA-2014-5235");

  tag_insight = "The kernel package contains the Linux kernel (vmlinuz), the core of any
Linux operating system.  The kernel handles the basic functions
of the operating system: memory allocation, process allocation, device
input and output, etc.
";

  tag_affected = "kernel on Fedora 20";

  tag_solution = "Please Install the Updated Packages.";


  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  script_xref(name: "FEDORA", value: "2014-5235");
  script_xref(name: "URL" , value: "https://lists.fedoraproject.org/pipermail/package-announce/2014-April/131859.html");
  script_tag(name:"summary", value:"Check for the Version of kernel");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2014 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms");
  exit(0);
}


include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "FC20")
{

  if ((res = isrpmvuln(pkg:"kernel", rpm:"kernel~3.13.10~200.fc20", rls:"FC20")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
