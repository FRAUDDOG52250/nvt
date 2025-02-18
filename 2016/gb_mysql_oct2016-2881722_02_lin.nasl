###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_mysql_oct2016-2881722_02_lin.nasl 11989 2018-10-19 11:25:26Z cfischer $
#
# Oracle MySQL Security Updates (oct2016-2881722) 02 - Linux
#
# Authors:
# Kashinath T <tkashinath@secpod.com>
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
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

CPE = "cpe:/a:oracle:mysql";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.809373");
  script_version("$Revision: 11989 $");
  script_cve_id("CVE-2016-3492", "CVE-2016-5626", "CVE-2016-5629", "CVE-2016-5616",
                "CVE-2016-5617", "CVE-2016-8283");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:N/I:N/A:C");
  script_tag(name:"last_modification", value:"$Date: 2018-10-19 13:25:26 +0200 (Fri, 19 Oct 2018) $");
  script_tag(name:"creation_date", value:"2016-10-19 15:46:24 +0530 (Wed, 19 Oct 2016)");
  script_name("Oracle MySQL Security Updates (oct2016-2881722) 02 - Linux");

  script_tag(name:"summary", value:"This host is running Oracle MySQL and is
  prone to multiple vulnerabilities.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"Multiple flaws exist due to multiple
  unspecified errors in 'Server:GIS', 'Server:Federated', 'Server:Optimizer',
  'Server:Types', 'Server:Error Handling' and 'Server:MyISAM' components.");

  script_tag(name:"impact", value:"Successful exploitation of these
  vulnerabilities will allow remote authenticated to cause denial of service
  conditions and gain elevated privileges.");

  script_tag(name:"affected", value:"Oracle Mysql version 5.5.51 and earlier,
  5.6.32 and earlier, 5.7.14 and earlier on Linux");

  script_tag(name:"solution", value:"Apply the patch from the referenced advisory.");

  script_tag(name:"solution_type", value:"VendorFix");

  script_tag(name:"qod_type", value:"remote_banner_unreliable");

  script_xref(name:"URL", value:"http://www.oracle.com/technetwork/security-advisory/cpuoct2016-2881722.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Databases");
  script_dependencies("mysql_version.nasl", "os_detection.nasl");
  script_mandatory_keys("MySQL/installed", "Host/runs_unixoide");
  script_require_ports("Services/mysql", 3306);
  exit(0);
}

include("version_func.inc");
include("host_details.inc");

if(!sqlPort = get_app_port(cpe:CPE)){
  CPE = "cpe:/a:mysql:mysql";
  if(!sqlPort = get_app_port(cpe:CPE)){
    exit(0);
  }
}

if(!mysqlVer = get_app_version(cpe:CPE, port:sqlPort)){
  exit(0);
}

if(version_in_range(version:mysqlVer, test_version:"5.5", test_version2:"5.5.51") ||
   version_in_range(version:mysqlVer, test_version:"5.6", test_version2:"5.6.32") ||
   version_in_range(version:mysqlVer, test_version:"5.7", test_version2:"5.7.14"))
{
  report = report_fixed_ver(installed_version:mysqlVer, fixed_version: "Apply the patch");
  security_message(data:report, port:sqlPort);
  exit(0);
}
