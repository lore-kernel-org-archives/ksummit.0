Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 670BDA71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Oct 2017 15:27:48 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E05DE3F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Oct 2017 15:27:47 +0000 (UTC)
Message-ID: <1507303665.3104.13.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Theodore Ts'o <tytso@mit.edu>, ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 06 Oct 2017 08:27:45 -0700
In-Reply-To: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2017-10-05 at 15:20 -0400, Theodore Ts'o wrote:
> Appendix: Other topics that were brought up
> -------------------------------------------
> 
> Documentation
> Bug reporting feedback loop
> Driver and/or module versions
> Developing across multiple areas of the kernel
> ABI feature gates
> tracepoints without user space interfaces (EBPF)

I've got a couple of extra possibilities

1) git tree script alignment.  Most of us send out some type of your
patch was added and your patch was dropped email notifications.  We
usually automate it through a private tree git commit or update script.
 Should we standardise these (because if we do, we could have
kernel.org do it for us instead of running our own infrastructure).

2) Trivial patches (again). OpenStack has recently started to become
annoyed by these 

http://lists.openstack.org/pipermail/openstack-dev/2017-September/thread.html#122472

I thought about our process around the trivial tree, but it hasn't been
updated in the last few releases, so effectively we no longer use it.
 So is what we're currently doing (variable standards by tree) OK, or
should we have a more concerted trivial policy?

3) Tasteful Rebasing. We've come around (finally) to the conclusion
that rebasing isn't always bad.  My own opinion is that rebasing to fix
issues in patches (particularly those marked for stable) so they can
backport cleanly and atomically.  There's also less of a consensus that
rebasing to clean up history is a reasonably good thing (provided it's
not done just before requesting a pull).  However, we have a divergence
of opinions not just on whether we should rebase, but what constitutes
a tasteful rebase.  Just telling people, particularly would be new
maintainers, that it's a judgement call always is unhelpful, we could
do with putting together some more detailed guidance (assuming we can
agree on it).

James
