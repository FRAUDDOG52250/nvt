###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_4277.nasl 11416 2018-09-17 03:39:26Z ckuersteiner $
#
# Auto-generated from advisory DSA 4277-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.704277");
  script_version("$Revision: 11416 $");
  script_cve_id("CVE-2018-14349", "CVE-2018-14350", "CVE-2018-14351", "CVE-2018-14352", "CVE-2018-14353",
  "CVE-2018-14354", "CVE-2018-14355", "CVE-2018-14356", "CVE-2018-14357", "CVE-2018-14358",
  "CVE-2018-14359", "CVE-2018-14360", "CVE-2018-14361", "CVE-2018-14362", "CVE-2018-14363");
  script_name("Debian Security Advisory DSA 4277-1 (mutt - security update)");
  script_tag(name:"last_modification", value:"$Date: 2018-09-17 05:39:26 +0200 (Mon, 17 Sep 2018) $");
  script_tag(name:"creation_date", value:"2018-08-17 00:00:00 +0200 (Fri, 17 Aug 2018)");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://www.debian.org/security/2018/dsa-4277.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB9\.[0-9]+");
  script_tag(name:"affected", value:"mutt on Debian Linux");
  script_tag(name:"insight", value:"Mutt is a sophisticated text-based Mail User Agent. Some highlights:");
  script_tag(name:"solution", value:"For the stable distribution (stretch), these problems have been fixed in
version 1.7.2-1+deb9u1.

We recommend that you upgrade your mutt packages.

For the detailed security status of mutt please refer to its security
tracker page at:
https://security-tracker.debian.org/tracker/mutt");
  script_tag(name:"summary",  value:"Several vulnerabilities were discovered in Mutt, a text-based mailreader
supporting MIME, GPG, PGP and threading, potentially leading to code
execution, denial of service or information disclosure when connecting
to a malicious mail/NNTP server.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"mutt", ver:"1.7.2-1+deb9u1", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}

if (report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}
