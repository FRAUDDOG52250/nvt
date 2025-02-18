###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ms_kb4011637.nasl 12120 2018-10-26 11:13:20Z mmartin $
#
# Microsoft Outlook 2013 Service Pack 1 Remote Code Execution Vulnerability (KB4011637)
#
# Authors:
# Rinu Kuriakose <krinu@secpod.com>
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
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.812705");
  script_version("$Revision: 12120 $");
  script_cve_id("CVE-2018-0791");
  script_bugtraq_id(102383);
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"$Date: 2018-10-26 13:13:20 +0200 (Fri, 26 Oct 2018) $");
  script_tag(name:"creation_date", value:"2018-01-10 10:34:31 +0530 (Wed, 10 Jan 2018)");
  script_name("Microsoft Outlook 2013 Service Pack 1 Remote Code Execution Vulnerability (KB4011637)");

  script_tag(name:"summary", value:"This host is missing an important security
  update according to Microsoft KB4011637");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The flaw exists due to the way that
  Microsoft Outlook parses specially crafted email messages.");

  script_tag(name:"impact", value:"Successful exploitation will allow an
  attacker who successfully exploited the vulnerability to take control
  of an affected system. An attacker could then:

  - install programs

  - view, change, or delete data

  - or create new accounts with full user rights.");

  script_tag(name:"affected", value:"Microsoft Outlook 2013 Service Pack 1");

  script_tag(name:"solution", value:"Run Windows Update and update the listed
  hotfixes or download and update mentioned hotfixes in the advisory");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"executable_version");
  script_xref(name:"URL", value:"https://support.microsoft.com/en-us/help/4011637");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("Windows : Microsoft Bulletins");
  script_dependencies("secpod_office_products_version_900032.nasl");
  script_mandatory_keys("SMB/Office/Outlook/Version");
  script_require_ports(139, 445);
  exit(0);
}


include("smb_nt.inc");
include("host_details.inc");
include("version_func.inc");
include("secpod_smb_func.inc");

outlookVer = "";
outlookFile = "";

outlookVer = get_kb_item("SMB/Office/Outlook/Version");
if(!outlookVer || !(outlookVer =~ "^15\.")){
  exit(0);
}

outlookFile = registry_get_sz(key:"SOFTWARE\Microsoft\Windows\CurrentVersion" +
                              "\App Paths\OUTLOOK.EXE", item:"Path");
if(!outlookFile){
  exit(0);
}

outlookVer = fetch_file_version(sysPath:outlookFile, file_name:"outlook.exe");
if(!outlookVer){
  exit(0);
}

if(version_in_range(version:outlookVer, test_version:"15.0", test_version2:"15.0.4997.0999"))
{
  report = report_fixed_ver(file_checked:outlookFile + "outlook.exe",
           file_version:outlookVer, vulnerable_range:"15.0 - 15.0.4997.0999");
  security_message(data:report);
  exit(0);
}
exit(0);
