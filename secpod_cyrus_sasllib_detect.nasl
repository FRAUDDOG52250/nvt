###############################################################################
# OpenVAS Vulnerability Test
# $Id: secpod_cyrus_sasllib_detect.nasl 11015 2018-08-17 06:31:19Z cfischer $
#
# Cyrus SASL Library Version Detection
#
# Authors:
# Antu Sanadi <santu@secpod.com>
#
# Copyright:
# Copyright (c) 2009 SecPod, http://www.secpod.com
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
  script_oid("1.3.6.1.4.1.25623.1.0.900659");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_version("$Revision: 11015 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-17 08:31:19 +0200 (Fri, 17 Aug 2018) $");
  script_tag(name:"creation_date", value:"2009-05-28 07:14:08 +0200 (Thu, 28 May 2009)");
  script_tag(name:"cvss_base", value:"0.0");
  script_name("Cyrus SASL Library Version Detection");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"qod_type", value:"executable_version");
  script_copyright("Copyright (C) 2009 SecPod");
  script_family("Product detection");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("login/SSH/success");
  script_exclude_keys("ssh/no_linux_shell");

  script_tag(name:"summary", value:"This script detects the installed version of Cyrus SASL Library and
  sets the result in KB.");
  exit(0);
}


include("ssh_func.inc");
include("version_func.inc");
include("cpe.inc");
include("host_details.inc");

SCRIPT_DESC = "Cyrus SASL Library Version Detection";

sock = ssh_login_or_reuse_connection();
if(!sock){
  exit(0);
}

paths = find_bin(prog_name:"sasldblistusers2", sock:sock);
foreach saslbin (paths)
{
  saslVer = get_bin_version(full_prog_name:chomp(saslbin), sock:sock,
                             version_argv:"-v", ver_pattern:"version ([0-9.]+)");
 if(saslVer[1] != NULL)
  {
    set_kb_item(name:"Cyrus/SASL/Ver", value:saslVer[1]);
    log_message(data:"Cyrus SASL Library version " + saslVer[1] +
            " running at location " + saslbin + " was detected on the host");
    ssh_close_connection();

    cpe = build_cpe(value:saslVer[1], exp:"^([0-9.]+)", base:"cpe:/a:cmu:cyrus-sasl:");
    if(!isnull(cpe))
       register_host_detail(name:"App", value:cpe, desc:SCRIPT_DESC);

    exit(0);
  }
}
ssh_close_connection();
