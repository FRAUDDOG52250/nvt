###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_sharepoint_server_excel_services_kb3191840.nasl 11795 2018-10-09 13:03:20Z mmartin $
#
# MS SharePoint Server Excel Services Elevation of Privilege Vulnerability (3191840)
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

CPE = "cpe:/a:microsoft:sharepoint_server";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.810857");
  script_version("$Revision: 11795 $");
  script_cve_id("CVE-2017-0195");
  script_tag(name:"cvss_base", value:"3.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:S/C:N/I:P/A:N");
  script_tag(name:"last_modification", value:"$Date: 2018-10-09 15:03:20 +0200 (Tue, 09 Oct 2018) $");
  script_tag(name:"creation_date", value:"2017-04-12 16:20:26 +0530 (Wed, 12 Apr 2017)");
  script_tag(name:"qod_type", value:"executable_version");
  script_name("MS SharePoint Server Excel Services Elevation of Privilege Vulnerability (3191840)");

  script_tag(name:"summary", value:"This host is missing an important security
  update according to Microsoft security updates KB3191840");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The flaw exists when an Office Web Apps server
  does not properly sanitize a specially crafted request.");

  script_tag(name:"impact", value:"An authenticated attacker could exploit the
  vulnerability by sending a specially crafted request to an affected Office Web
  Apps server. The attacker who successfully exploited this vulnerability could then
  perform cross-site scripting attacks on affected systems and run script in the
  security context of the current user.");

  script_tag(name:"affected", value:"Microsoft SharePoint Server 2013 Service Pack 1");

  script_tag(name:"solution", value:"Run Windows Update and update the listed
  hotfixes or download and update mentioned hotfixes in the advisory from the
  https://support.microsoft.com/en-us/help/3191840/description-of-the-security-update-for-excel-services-on-sharepoint-se");

  script_tag(name:"solution_type", value:"VendorFix");
  script_xref(name:"URL", value:"https://support.microsoft.com/en-us/help/3191840/description-of-the-security-update-for-excel-services-on-sharepoint-se");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
  script_family("Windows : Microsoft Bulletins");
  script_dependencies("gb_ms_sharepoint_sever_n_foundation_detect.nasl");
  script_require_ports(139, 445);
  script_mandatory_keys("MS/SharePoint/Server/Ver");
  exit(0);
}

include("smb_nt.inc");
include("host_details.inc");
include("version_func.inc");
include("secpod_smb_func.inc");

if( ! infos = get_app_version_and_location( cpe:CPE, exit_no_version:TRUE ) ) exit( 0 );
shareVer = infos['version'];
path = infos['location'];
if(!path || "Could not find the install location" >< path){
  exit(0);
}

## SharePoint Server 2010
if(shareVer =~ "^14\..*")
{
  path = path + "\14.0\Bin";

  dllVer = fetch_file_version(sysPath:path, file_name:"xlsrv.dll");
  if(dllVer)
  {
    if(version_in_range(version:dllVer, test_version:"14.0", test_version2:"14.0.7180.4999"))
    {
      report = 'File checked:     ' + path + "\xlsrv.dll" + '\n' +
               'File version:     ' + dllVer  + '\n' +
               'Vulnerable range: ' + "14.0 - 14.0.7180.4999" + '\n' ;
      security_message(data:report);
      exit(0);
    }
  }
}

exit(99);