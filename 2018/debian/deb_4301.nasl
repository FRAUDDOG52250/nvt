###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_4301.nasl 11563 2018-09-24 06:56:20Z cfischer $
#
# Auto-generated from advisory DSA 4301-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.704301");
  script_version("$Revision: 11563 $");
  script_cve_id("CVE-2018-0503", "CVE-2018-0504", "CVE-2018-0505");
  script_name("Debian Security Advisory DSA 4301-1 (mediawiki - security update)");
  script_tag(name:"last_modification", value:"$Date: 2018-09-24 08:56:20 +0200 (Mon, 24 Sep 2018) $");
  script_tag(name:"creation_date", value:"2018-09-22 00:00:00 +0200 (Sat, 22 Sep 2018)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://www.debian.org/security/2018/dsa-4301.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB9\.[0-9]+");
  script_tag(name:"affected", value:"mediawiki on Debian Linux");
  script_tag(name:"insight", value:"MediaWiki is a wiki engine (a program for creating a collaboratively
edited website). It is designed to handle heavy websites containing
library-like document collections, and supports user uploads of
images/sounds, multilingual content, TOC autogeneration, ISBN links,
etc.");
  script_tag(name:"solution", value:"For the stable distribution (stretch), these problems have been fixed in
version 1:1.27.5-1~deb9u1.

We recommend that you upgrade your mediawiki packages.

For the detailed security status of mediawiki please refer to
its security tracker page at:
https://security-tracker.debian.org/tracker/mediawiki");
  script_tag(name:"summary",  value:"Multiple security vulnerabilities have been discovered in MediaWiki, a
website engine for collaborative work, which result in incorrectly
configured rate limits, information disclosure in Special:Redirect/logid
and bypass of an account lock.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"mediawiki", ver:"1:1.27.5-1~deb9u1", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"mediawiki-classes", ver:"1:1.27.5-1~deb9u1", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}

if (report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}
