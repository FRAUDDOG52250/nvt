###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_4216.nasl 12004 2018-10-22 05:34:04Z cfischer $
#
# Auto-generated from advisory DSA 4216-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.704216");
  script_version("$Revision: 12004 $");
  script_cve_id("CVE-2018-10847");
  script_name("Debian Security Advisory DSA 4216-1 (prosody - security update)");
  script_tag(name:"last_modification", value:"$Date: 2018-10-22 07:34:04 +0200 (Mon, 22 Oct 2018) $");
  script_tag(name:"creation_date", value:"2018-06-02 00:00:00 +0200 (Sat, 02 Jun 2018)");
  script_tag(name:"cvss_base", value:"6.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:P/I:P/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://www.debian.org/security/2018/dsa-4216.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB[89]\.[0-9]+");
  script_tag(name:"affected", value:"prosody on Debian Linux");
  script_tag(name:"insight", value:"Prosody IM is a simple-to-use XMPP server. It is designed to be easy to
extend via plugins, and light on resources.");
  script_tag(name:"solution", value:"For the oldstable distribution (jessie), this problem has been fixed
in version 0.9.7-2+deb8u4.

For the stable distribution (stretch), this problem has been fixed in
version 0.9.12-2+deb9u2.

We recommend that you upgrade your prosody packages.

For the detailed security status of prosody please refer to its security
tracker page at:
https://security-tracker.debian.org/tracker/prosody");
  script_tag(name:"summary",  value:"It was discovered that Prosody, a lightweight Jabber/XMPP server, does
not properly validate client-provided parameters during XMPP stream
restarts, allowing authenticated users to override the realm associated
with their session, potentially bypassing security policies and allowing
impersonation.

Details can be found in the upstream advisory at
https://prosody.im/security/advisory_20180531/");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"prosody", ver:"0.9.7-2+deb8u4", rls_regex:"DEB8\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"prosody", ver:"0.9.12-2+deb9u2", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}

if (report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}
