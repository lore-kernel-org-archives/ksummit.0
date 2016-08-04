Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55D85413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 08:20:05 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B29EF142
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 08:20:04 +0000 (UTC)
Date: Thu, 4 Aug 2016 10:20:18 +0200
From: Greg KH <greg@kroah.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160804082018.GA27204@kroah.com>
References: <3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160803212332.576bb718@grimm.local.home>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 03, 2016 at 09:23:32PM -0400, Steven Rostedt wrote:
> On Wed, 03 Aug 2016 10:04:55 -0400
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> 
> > OK, so how about you only apply stable patches with a cc stable and a
> > fixes tag?
> 
> While reading this thread, I thought about replying and suggesting
> exactly this. But you did it before I could.
> 
> I try to make it a habit to find the commit that a fix is for, and add
> that as a Fixes tag and even add a # v<stable-version>+ to the Cc tag.
> 
> Maybe we ask that all cc stable commits have this, otherwise it should
> only be applied to the previous stable and nothing earlier.

No, again, that would put more burden on the maintainer and developer
than I want to "enforce".  I don't even want to do that extra work for
the trees I maintain, I just couldn't scale that way.

> IIUC, Greg et.al. will apply a stable tagged commit to all previous
> stable trees as long as they apply cleaning. Greg, is that correct?
> Perhaps we shouldn't apply them if they don't have a fixes tag or a
> label that states what versions they are for.

I apply them to older kernels based on my best judgement.  That includes
reading the patch, seeing how "cleanly" they apply, and judging the
severity of the patch.  I only notify developers if their patch doesn't
apply to an older kernel tree IF they have marked it as explicitly being
needed for an older kernel tree.

Now I greatly appreciate the use of fixes: and other hints to show how
old a patch should be backported to, don't get me wrong.  But I'm not
going to require that it be present in order to have a patch backported,
again, too much work for maintainers.

It's up to anyone who wants to maintain a "longterm" stable tree to do
this extra work on their own.  It's not easy, and it is work, but that's
just part of the job.  We can't force maintainers to care about older
kernel versions if they don't want to, as maintainers are our most
limited resource right now.

Remember, we _still_ have whole subsystems that never mark anything for
stable, let's focus on them please, that's the biggest issue for stable
trees that I can see right now.

thanks,

greg k-h
