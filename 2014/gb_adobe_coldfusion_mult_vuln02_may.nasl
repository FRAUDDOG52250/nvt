###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_adobe_coldfusion_mult_vuln02_may.nasl 11867 2018-10-12 10:48:11Z cfischer $
#
# Adobe ColdFusion Multiple Vulnerabilities-02 May-2014
#
# Authors:
# Antu Sanadi <santu@secpod.com>
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
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################
CPE = "cpe:/a:adobe:coldfusion";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.804444");
  script_version("$Revision: 11867 $");
  script_cve_id("CVE-2013-1387", "CVE-2013-1388");
  script_bugtraq_id(58974, 58975);
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"last_modification", value:"$Date: 2018-10-12 12:48:11 +0200 (Fri, 12 Oct 2018) $");
  script_tag(name:"creation_date", value:"2014-05-06 15:52:29 +0530 (Tue, 06 May 2014)");
  script_name("Adobe ColdFusion Multiple Vulnerabilities-02 May-2014");


  script_tag(name:"summary", value:"This host is running Adobe ColdFusion and is prone to multiple
vulnerabilities");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"Multiple flaws are due to,

  - An unspecified error can be exploited to disclose certain data in certain
  multi-threaded use cases.

  - An unspecified error can be exploited to gain access to the ColdFusion
  administrator console.");
  script_tag(name:"impact", value:"Successful exploitation will allow attackers to disclose certain sensitive
information and bypass certain security restrictions.");
  script_tag(name:"affected", value:"Adobe ColdFusion 10 before Update 9");
  script_tag(name:"solution", value:"Upgrade to Adobe ColdFusion 10 Update 9 or later,
https://www.adobe.com/cfusion/tdrc/index.cfm?product=coldfusion");
  script_tag(name:"solution_type", value:"VendorFix");

  script_xref(name:"URL", value:"http://www.adobe.com/support/security/bulletins/apsb13-10.html");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"qod_type", value:"remote_banner");
  script_family("Web application abuses");
  script_copyright("Copyright (C) 2014 Greenbone Networks GmbH");
  script_dependencies("gb_coldfusion_detect.nasl");
  script_mandatory_keys("coldfusion/installed");
  script_require_ports("Services/www", 80);
  exit(0);
}


include("version_func.inc");
include("host_details.inc");

if(!smgPort = get_app_port(cpe:CPE)){
  exit(0);
}

smgVer = get_app_version(cpe:CPE, port:smgPort);
if(!smgVer || "unknown" >< smgVer){
  exit(0);
}

if(version_in_range(version:smgVer, test_version:"10.0", test_version2:"10.0.9.284567"))
{
  security_message(port:smgPort);
  exit(0);
}
