###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_oracle_java_jan2018-3236628_01_win.nasl 12047 2018-10-24 07:38:41Z cfischer $
#
# Oracle Java SE Security Updates (jan2018-3236628) 01 - Windows
#
# Authors:
# Shakeel <bshakeel@secpod.com>
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

CPE = "cpe:/a:oracle:jre";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.812637");
  script_version("$Revision: 12047 $");
  script_cve_id("CVE-2018-2657");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"last_modification", value:"$Date: 2018-10-24 09:38:41 +0200 (Wed, 24 Oct 2018) $");
  script_tag(name:"creation_date", value:"2018-01-17 11:38:48 +0530 (Wed, 17 Jan 2018)");
  script_name("Oracle Java SE Security Updates (jan2018-3236628) 01 - Windows");

  script_tag(name:"summary", value:"The host is installed with Oracle Java SE
  and is prone to a denial-of-service vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The flaw exists due to error in the
  'Serialization' sub-component of the application.");

  script_tag(name:"impact", value:"Successful exploitation of this
  vulnerability will allow remote attackers to conduct a denial-of-service
  condition.");

  script_tag(name:"affected", value:"Oracle Java SE version 1.6.0.171 and
  earlier, 1.7.0.161 and earlier on Windows");

  script_tag(name:"solution", value:"Apply the patch from the referenced advisory.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"registry");
  script_xref(name:"URL", value:"http://www.oracle.com/technetwork/security-advisory/cpujan2018-3236628.html");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("General");
  script_dependencies("gb_java_prdts_detect_portable_win.nasl");
  script_mandatory_keys("Sun/Java/JRE/Win/Ver");
  exit(0);
}


include("host_details.inc");
include("version_func.inc");

jreVer = "";

infos = get_app_version_and_location( cpe:CPE );
jreVer = infos['version'];
if( ! jreVer )
{
  CPE = "cpe:/a:sun:jre";
  infos = get_app_version_and_location( cpe:CPE, exit_no_version:TRUE );
  jreVer = infos['version'];
}
path = infos['location'];

if(jreVer =~ "^(1\.(6|7))")
{
  if((version_in_range(version:jreVer, test_version:"1.6.0", test_version2:"1.6.0.171"))||
     (version_in_range(version:jreVer, test_version:"1.7.0", test_version2:"1.7.0.161")))
  {
    report = report_fixed_ver(installed_version:jreVer, fixed_version: "Apply the patch", install_path:path);
    security_message(data:report);
    exit(0);
  }
}
exit(0);
