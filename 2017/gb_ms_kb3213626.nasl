###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ms_kb3213626.nasl 11874 2018-10-12 11:28:04Z mmartin $
#
# Microsoft Office 2010 Service Pack 2 Remote Code Execution Vulnerability (KB3213626)
#
# Authors:
# Kashinath T <tkashinath@secpod.com>
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
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.811670");
  script_version("$Revision: 11874 $");
  script_cve_id("CVE-2017-8744");
  script_bugtraq_id(100748);
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"$Date: 2018-10-12 13:28:04 +0200 (Fri, 12 Oct 2018) $");
  script_tag(name:"creation_date", value:"2017-09-13 09:23:25 +0530 (Wed, 13 Sep 2017)");
  script_name("Microsoft Office 2010 Service Pack 2 Remote Code Execution Vulnerability (KB3213626)");

  script_tag(name:"summary", value:"This host is missing an important security
  update according to Microsoft KB3213626");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The flaw exists due to Microsoft Office software
  fails to properly handle objects in  memory. ");

  script_tag(name:"impact", value:"Successful exploitation will allow an attacker
  to use a specially crafted file to perform actions in the security context of
  the current user.");

  script_tag(name:"affected", value:"Microsoft Office 2010 Service Pack 2");

  script_tag(name:"solution", value:"Run Windows Update and update the
  listed hotfixes or download and update mentioned hotfixes in the advisory");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"executable_version");
  script_xref(name:"URL", value:"https://support.microsoft.com/en-us/help/3213626");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
  script_family("Windows : Microsoft Bulletins");
  script_dependencies("secpod_office_products_version_900032.nasl");
  script_mandatory_keys("MS/Office/Ver");
  script_require_ports(139, 445);
  exit(0);
}


include("smb_nt.inc");
include("host_details.inc");
include("version_func.inc");
include("secpod_smb_func.inc");


## MS Office
offVer = get_kb_item("MS/Office/Ver");
if(!offVer){
  exit(0);
}

path = registry_get_sz(key:"SOFTWARE\Microsoft\Windows\CurrentVersion",
                            item:"CommonFilesDir");
if(!path){
  exit(0);
}

if(offVer =~ "^(14\.)")
{
  filePath = path + "\Microsoft Shared\GRPHFLT";

  fileVer = fetch_file_version(sysPath:filePath, file_name:"pictim32.flt");
  if(fileVer && fileVer =~ "^(2010\.)")
  {
    if(version_is_less(version:fileVer, test_version:"2010.1400.4740.1000"))
    {
      report = 'File checked:     ' + filePath + "\pictim32.flt" + '\n' +
               'File version:     ' + fileVer  + '\n' +
               'Vulnerable range: ' + "2010 - 2010.1400.4740.0999" + '\n' ;
      security_message(data:report);
    }
  }
}
exit(0);
