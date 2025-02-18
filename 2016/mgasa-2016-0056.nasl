###############################################################################
# OpenVAS Vulnerability Test
# $Id: mgasa-2016-0056.nasl 11692 2018-09-28 16:55:19Z cfischer $
#
# Mageia Linux security check
#
# Authors:
# Eero Volotinen <eero.volotinen@solinor.com>
#
# Copyright:
# Copyright (c) 2015 Eero Volotinen, http://www.solinor.com
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
  script_oid("1.3.6.1.4.1.25623.1.0.131222");
  script_version("$Revision: 11692 $");
  script_tag(name:"creation_date", value:"2016-02-11 07:22:20 +0200 (Thu, 11 Feb 2016)");
  script_tag(name:"last_modification", value:"$Date: 2018-09-28 18:55:19 +0200 (Fri, 28 Sep 2018) $");
  script_name("Mageia Linux Local Check: mgasa-2016-0056");
  script_tag(name:"insight", value:"Updated openssl packages fix security vulnerability: OpenSSL before 1.0.2f would allow for a process to re-use the same private Diffie-Hellman exponent repeatedly during its entire lifetime, which, given that it also allows to use custom DH parameters which may be based on unsafe primes, could enable an attack that could discover the DH exponent, compromising the security of DH symmetric key negotiation (CVE-2016-0701). In OpenSSL before 1.0.2f, A malicious client can negotiate SSLv2 ciphers that have been disabled on the server and complete SSLv2 handshakes even if all SSLv2 ciphers have been disabled, provided that the SSLv2 protocol was not also disabled via SSL_OP_NO_SSLv2 (CVE-2015-3197).");
  script_tag(name:"solution", value:"Update the affected packages to the latest available version.");
  script_tag(name:"solution_type", value:"VendorFix");
  script_xref(name:"URL", value:"https://advisories.mageia.org/MGASA-2016-0056.html");
  script_cve_id("CVE-2016-0701", "CVE-2015-3197");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_tag(name:"qod_type", value:"package");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/mageia_linux", "ssh/login/release", re:"ssh/login/release=MAGEIA5");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"summary", value:"Mageia Linux Local Security Checks mgasa-2016-0056");
  script_copyright("Eero Volotinen");
  script_family("Mageia Linux Local Security Checks");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "MAGEIA5")
{
if ((res = isrpmvuln(pkg:"openssl", rpm:"openssl~1.0.2f~1.mga5", rls:"MAGEIA5")) != NULL) {
  security_message(data:res);
  exit(0);
}
if (__pkg_match) exit(99);
  exit(0);
}
