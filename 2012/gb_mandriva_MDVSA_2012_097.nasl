###############################################################################
# OpenVAS Vulnerability Test
#
# Mandriva Update for python MDVSA-2012:097 (python)
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2012 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
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
  script_xref(name:"URL", value:"http://www.mandriva.com/en/support/security/advisories/?name=MDVSA-2012:097");
  script_oid("1.3.6.1.4.1.25623.1.0.831685");
  script_version("$Revision: 11985 $");
  script_tag(name:"last_modification", value:"$Date: 2018-10-19 12:24:37 +0200 (Fri, 19 Oct 2018) $");
  script_tag(name:"creation_date", value:"2012-06-22 10:32:48 +0530 (Fri, 22 Jun 2012)");
  script_cve_id("CVE-2011-3389", "CVE-2011-4944", "CVE-2012-0845",
                "CVE-2012-0876", "CVE-2012-1150");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_xref(name:"MDVSA", value:"2012:097");
  script_name("Mandriva Update for python MDVSA-2012:097 (python)");

  script_tag(name:"summary", value:"Check for the Version of python");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("Mandrake Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/mandriva_mandrake_linux", "ssh/login/release", re:"ssh/login/release=MNDK_2011\.0");
  script_tag(name:"affected", value:"python on Mandriva Linux 2011.0");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");
  script_tag(name:"insight", value:"Multiple vulnerabilities has been discovered and corrected in python:

  The _ssl module would always disable the CBC IV attack countermeasure
  (CVE-2011-3389).

  A race condition was found in the way the Python distutils module
  set file permissions during the creation of the .pypirc file. If a
  local user had access to the home directory of another user who is
  running distutils, they could use this flaw to gain access to that
  user&#039;s .pypirc file, which can contain usernames and passwords for
  code repositories (CVE-2011-4944).

  A flaw was found in the way the Python SimpleXMLRPCServer module
  handled clients disconnecting prematurely. A remote attacker could
  use this flaw to cause excessive CPU consumption on a server using
  SimpleXMLRPCServer (CVE-2012-0845).

  Hash table collisions CPU usage DoS for the embedded copy of expat
  (CVE-2012-0876).

  A denial of service flaw was found in the implementation of associative
  arrays (dictionaries) in Python. An attacker able to supply a large
  number of inputs to a Python application (such as HTTP POST request
  parameters sent to a web application) that are used as keys when
  inserting data into an array could trigger multiple hash function
  collisions, making array operations take an excessive amount of
  CPU time. To mitigate this issue, randomization has been added to
  the hash function to reduce the chance of an attacker successfully
  causing intentional collisions (CVE-2012-1150).

  The updated packages have been patched to correct these issues.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "MNDK_2011.0")
{

  if ((res = isrpmvuln(pkg:"libpython2.7", rpm:"libpython2.7~2.7.2~2.2", rls:"MNDK_2011.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libpython-devel", rpm:"libpython-devel~2.7.2~2.2", rls:"MNDK_2011.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python", rpm:"python~2.7.2~2.2", rls:"MNDK_2011.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-docs", rpm:"python-docs~2.7.2~2.2", rls:"MNDK_2011.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"tkinter", rpm:"tkinter~2.7.2~2.2", rls:"MNDK_2011.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"tkinter-apps", rpm:"tkinter-apps~2.7.2~2.2", rls:"MNDK_2011.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64python2.7", rpm:"lib64python2.7~2.7.2~2.2", rls:"MNDK_2011.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64python-devel", rpm:"lib64python-devel~2.7.2~2.2", rls:"MNDK_2011.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
