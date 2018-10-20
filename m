Return-Path: <SRS0=0QPY=NA=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71EAF9D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:51:54 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 117D8701
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:51:54 +0000 (UTC)
Date: Sat, 20 Oct 2018 15:49:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <20181020134908.GA32218@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mishi Choudhary <mishi@linux.com>
Subject: [Ksummit-discuss] [PATCH 0/7] Code of Conduct: Fix some wording,
 and add an interpretation document
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi all,

As everyone knows by now, we added a new Code of Conduct to the kernel
tree a few weeks ago.

When we did this, it raised a number of questions as to how this would
affect the kernel community.  To help address these issues, I, and a few
other kernel developers including the TAB, have come up with the
following patch series to be added to the tree to both modify the
existing Code of Conduct to remove a confusing paragraph as well as to
add a new document to help explain how the Code of Conduct is to be
interpreted by our community.

I originally sent the first two patches in this series to a lot of
kernel developers privately, to get their review and comments and see if
they wanted to ack them.  This is the traditional way we have always
done for policy documents or other "contentious" issues like the GPLv3
statement or the "closed kernel modules are bad" statement.  Due to the
very unexpected way that the original Code of Conduct file was added to
the tree, a number of developers asked if this series could also be
posted publicly before they were merged, and so, here they are.

This patch series adds this new document to the kernel tree, as well as
removes a paragraph from the existing Code of Conduct that was
bothersome to many maintainers.  It also does a bit of housekeeping
around these documents to get the documentation links correct as well as
fix up the email address and other links and add a MAINTAINER entry for
the files.

Also I would like to publicly thank Mishi Choudhary for being willing to
serve as a mediator for Code of Conduct issues.  She has a long history
of working in many open source communities, many much more contentious
than ours.  For more information about her, please see her wikipedia
entry:
	https://en.wikipedia.org/wiki/Mishi_Choudhary
or take the chance to talk with her at the Plumbers conference in a few
weeks, as she will be attending that along with almost everyone on the
TAB as well as many kernel developers and maintainers, myself included.

thanks,

greg k-h



Chris Mason (1):
  Code of conduct: Fix wording around maintainers enforcing the code of
    conduct

Greg Kroah-Hartman (6):
  Code of Conduct Interpretation: Add document explaining how the Code
    of Conduct is to be interpreted
  Code of Conduct Interpretation: Properly reference the TAB correctly
  Code of Conduct: Provide links between the two documents
  Code of Conduct Interpretation: Put in the proper URL for the
    committee
  Code of Conduct: Change the contact email address
  MAINTAINERS: Add an entry for the code of conduct

 .../code-of-conduct-interpretation.rst        | 156 ++++++++++++++++++
 Documentation/process/code-of-conduct.rst     |  25 +--
 Documentation/process/index.rst               |   1 +
 MAINTAINERS                                   |   6 +
 4 files changed, 178 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/process/code-of-conduct-interpretation.rst

-- 
2.19.1
