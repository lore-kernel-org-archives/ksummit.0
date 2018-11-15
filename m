Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4D1A3723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 05:05:04 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D6E028B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 05:05:03 +0000 (UTC)
From: Dan Williams <dan.j.williams@intel.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 14 Nov 2018 20:53:13 -0800
Message-ID: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Ross Zwisler <zwisler@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-nvdimm@lists.01.org, Steve French <stfrench@microsoft.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: [Ksummit-discuss] [RFC PATCH 0/3] Maintainer Handbook: Subsystem
	Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

At a recently concluded session at the Linux Plumbers Conference I
proposed a "Subsystem Profile" as a document that a maintainer can
provide to set contributor expectations and provide fodder for a
discussion between maintainers about the merits of different maintainer
policies.

For those that did not attend, the goal of the Subsystem Profile, and the
Maintainer Handbook more generally, is to provide a desk reference for
maintainers both new and experienced. The session introduction was:

    The first rule of kernel maintenance is that there are no hard and
    fast rules. That state of affairs is both a blessing and a curse. It
    has served the community well to be adaptable to the different
    people and different problem spaces that inhabit the kernel
    community. However, that variability also leads to inconsistent
    experiences for contributors, little to no guidance for new
    contributors, and unnecessary stress on current maintainers. There
    are quite a few of people who have been around long enough to make
    enough mistakes that they have gained some hard earned proficiency.
    However if the kernel community expects to keep growing it needs to
    be able both scale the maintainers it has and ramp new ones without
    necessarily let them make a decades worth of mistakes to learn the
    ropes. 

To be clear, the proposed document does not impose or suggest new
rules. Instead it provides an outlet to document the unwritten rules
and policies in effect for each subsystem, and that each subsystem
might decide differently for whatever reason.

---

Dan Williams (3):
      MAINTAINERS: Reclaim the P: tag for Subsystem Profile
      MAINTAINERS, Handbook: Subsystem Profile
      libnvdimm, MAINTAINERS: Subsystem Profile


 Documentation/maintainer/index.rst             |    1 
 Documentation/maintainer/subsystem-profile.rst |  145 ++++++++++++++++++++++++
 Documentation/nvdimm/subsystem-profile.rst     |   86 ++++++++++++++
 MAINTAINERS                                    |   26 +++-
 4 files changed, 249 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/maintainer/subsystem-profile.rst
 create mode 100644 Documentation/nvdimm/subsystem-profile.rst
