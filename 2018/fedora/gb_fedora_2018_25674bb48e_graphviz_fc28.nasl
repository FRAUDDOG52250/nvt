###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_fedora_2018_25674bb48e_graphviz_fc28.nasl 10430 2018-07-06 05:26:03Z cfischer $
#
# Fedora Update for graphviz FEDORA-2018-25674bb48e
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
  script_oid("1.3.6.1.4.1.25623.1.0.874621");
  script_version("$Revision: 10430 $");
  script_tag(name:"last_modification", value:"$Date: 2018-07-06 07:26:03 +0200 (Fri, 06 Jul 2018) $");
  script_tag(name:"creation_date", value:"2018-05-30 06:01:47 +0200 (Wed, 30 May 2018)");
  script_cve_id("CVE-2018-10196");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("Fedora Update for graphviz FEDORA-2018-25674bb48e");
  script_tag(name:"summary", value:"Check the version of graphviz");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present 
on the target host.");
  script_tag(name:"insight", value:"A collection of tools for the manipulation 
and layout of graphs (as in nodes and edges, not as in barcharts).
");
  script_tag(name:"affected", value:"graphviz on Fedora 28");
  script_tag(name:"solution", value:"Please install the updated packages.");

  script_xref(name:"FEDORA", value:"2018-25674bb48e");
  script_xref(name:"URL" , value:"https://lists.fedoraproject.org/archives/list/package-announce%40lists.fedoraproject.org/message/N6VR2CT3LD52GWAQUZAOSEXSYE3O7HGN");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "FC28")
{

  if ((res = isrpmvuln(pkg:"graphviz", rpm:"graphviz~2.40.1~22.fc28", rls:"FC28")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
