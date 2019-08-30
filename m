Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2E82154AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 03:17:24 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AABC2F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 03:17:23 +0000 (UTC)
Date: Thu, 29 Aug 2019 23:17:20 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190830031720.GA7490@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The following topics have been proposed for the maintainer's summit on
this list:

* Squashing Bugs!   (Shuah Kahn)
    How do we deal with the high volume of bugs reported (especially
    by automated systems like syzbot)

* Depth of the "pull network"	     (James Bottomley)
    Should we be encouraging more people to send pull requests
    to maintainers and sub-maintainers (and sub-sub-maintainers),
    versus a more "flat tree" model where people send pull requests
    directly to Linus?

* Stable Kernel Process Automation and Improvement (Sasha Levin)
    What remaining pain points are there?  How can we make it better?

* Talking in Code or talking Code (Shuah Kahn)
    This was a suggestion about a specific LPC proposal; the core
    suggestion was talkinig about our e-mail conversation styles
    on the mailing list.   We have a similar KS track talk:
    "The list is our process: An analysis of the kernel's
    email-based development process"

* Patch version changes in commit logs?   (Shuah Kahn)
    How to make information about how commit has changed while being
    developed.  (A solution which has already been adopted by some
    maintainers is to use the Link: tag in the commit discussion).
    There have been a more recent discussion in this past week under
    subject line "Allowing something Change-Id (or something like it)
    in kernel commits".
    
Some of these topics have already been mostly resolved via e-mail
discussion.  Which topics do people deserves more discussion?

Are there some additional topics that you'd like to suggest that we
discuss at the maintainer's summit?

					- Ted
