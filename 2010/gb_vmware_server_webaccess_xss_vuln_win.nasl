###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_vmware_server_webaccess_xss_vuln_win.nasl 9122 2018-03-17 14:01:04Z cfischer $
#
# VMware WebAccess Cross Site Scripting Vulnerability (Windows)
#
# Authors:
# Antu Sanadi <santu@secpod.com>
#
# Copyright:
# Copyright (c) 2010 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

tag_solution = "Apply workaround,
  http://www.vmware.com/resources/techresources/726

  *****
  NOTE: Ignore this warning, if above mentioned workaround is manually applied.
  *****";

tag_impact = "Successful exploitation will lets attackers to execute arbitrary web script
  or HTML.

  Impact Level: Application";
tag_affected = "VMware Server version 1.0 on Windows.";
tag_insight = "The flaw is due to error in 'Server Console' which is not properly validating
  the input data, which allows to inject arbitrary web script or HTML via the
  name of a virtual machine.";
tag_summary = "This host is installed with VMWare Server and is prone to
  Cross site scripting Vulnerability.";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.801315");
  script_version("$Revision: 9122 $");
  script_tag(name:"last_modification", value:"$Date: 2018-03-17 15:01:04 +0100 (Sat, 17 Mar 2018) $");
  script_tag(name:"creation_date", value:"2010-04-13 16:55:19 +0200 (Tue, 13 Apr 2010)");
  script_cve_id("CVE-2010-1137");
  script_bugtraq_id(39037);
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_name("VMware WebAccess Cross Site Scripting vulnerability (Windows)");

  script_xref(name : "URL" , value : "http://www.vmware.com/security/advisories/VMSA-2010-0005.html");
  script_xref(name : "URL" , value : "http://lists.vmware.com/pipermail/security-announce/2010/000086.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("General");
  script_dependencies("gb_vmware_prdts_detect_win.nasl");
  script_mandatory_keys("VMware/Server/Win/Ver", "VMware/Win/Installed");
  script_tag(name : "impact" , value : tag_impact);
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name : "summary" , value : tag_summary);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name:"qod_type", value:"registry");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("version_func.inc");

if(!get_kb_item("VMware/Win/Installed")){
  exit(0);
}

# VMware Server
vmserVer = get_kb_item("VMware/Server/Win/Ver");
if(vmserVer)
{
  if(version_is_equal(version:vmserVer, test_version:"1.0")){
    security_message(0);
  }
}
