###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ibm_websphere_info_disclose_vuln03_mar16.nasl 12051 2018-10-24 09:14:54Z asteins $
#
# IBM Websphere Application Server Information Disclosure Vulnerability-03 Mar16
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

CPE = "cpe:/a:ibm:websphere_application_server";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.807502");
  script_version("$Revision: 12051 $");
  script_cve_id("CVE-2014-3083");
  script_bugtraq_id(69298);
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"last_modification", value:"$Date: 2018-10-24 11:14:54 +0200 (Wed, 24 Oct 2018) $");
  script_tag(name:"creation_date", value:"2016-03-03 18:23:49 +0530 (Thu, 03 Mar 2016)");
  script_tag(name:"qod_type", value:"remote_banner");
  script_name("IBM Websphere Application Server Information Disclosure Vulnerability-03 Mar16");

  script_tag(name:"summary", value:"This host is installed with IBM Websphere
  application server and is prone to information-disclosure vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The flaw is due to the failure to restrict
  access to resources located within the web application.");

  script_tag(name:"impact", value:"Successful exploitation will allow
  remote authenticated attackers to obtain sensitive information.");

  script_tag(name:"affected", value:"IBM WebSphere Application Server (WAS)
  7.0.x before 7.0.0.35, 8.0.x before 8.0.0.10, and 8.5.x before 8.5.5.3");

  script_tag(name:"solution", value:"Upgrade to IBM WebSphere Application
  Server (WAS) version 7.0.0.35, or 8.0.0.10, or 8.5.5.3, or later");

  script_tag(name:"solution_type", value:"VendorFix");

  script_xref(name:"URL", value:"http://www-01.ibm.com/support/docview.wss?uid=swg21676091");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Web application abuses");
  script_dependencies("gb_ibm_websphere_detect.nasl");
  script_mandatory_keys("ibm_websphere_application_server/installed");
  script_require_ports("Services/www", 80);
  script_xref(name:"URL", value:"http://www-03.ibm.com/software/products/en/appserv-was");
  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if(!wasPort = get_app_port(cpe:CPE)){
  exit(0);
}

if(!wasVer = get_app_version(cpe:CPE, port:wasPort)){
  exit(0);
}

if(version_in_range(version:wasVer, test_version:"7.0", test_version2:"7.0.0.34"))
{
  fix = "7.0.0.35";
  VULN = TRUE;
}

else if(version_in_range(version:wasVer, test_version:"8.0", test_version2:"8.0.0.9"))
{
  fix = "8.0.0.10";
  VULN = TRUE;
}

else if(version_in_range(version:wasVer, test_version:"8.5", test_version2:"8.5.5.2"))
{
  fix = "8.5.5.3";
  VULN = TRUE;
}

if(VULN)
{
  report = report_fixed_ver(installed_version:wasVer, fixed_version:fix);
  security_message(data:report, port:wasPort);
  exit(0);
}