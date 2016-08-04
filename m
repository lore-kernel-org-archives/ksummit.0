Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 91A0371
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 13:34:05 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0057.hostedemail.com
	[216.40.44.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6AFCECD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 13:34:04 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave03.hostedemail.com (Postfix) with ESMTP id D6B5F290A7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 13:34:01 +0000 (UTC)
Date: Thu, 4 Aug 2016 09:33:55 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20160804093355.30096bbe@gandalf.local.home>
In-Reply-To: <20160804082018.GA27204@kroah.com>
References: <3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Thu, 4 Aug 2016 10:20:18 +0200
Greg KH <greg@kroah.com> wrote:

> On Wed, Aug 03, 2016 at 09:23:32PM -0400, Steven Rostedt wrote:
> > On Wed, 03 Aug 2016 10:04:55 -0400
> > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> > 
> >   
> > > OK, so how about you only apply stable patches with a cc stable and a
> > > fixes tag?  
> > 
> > While reading this thread, I thought about replying and suggesting
> > exactly this. But you did it before I could.
> > 
> > I try to make it a habit to find the commit that a fix is for, and add
> > that as a Fixes tag and even add a # v<stable-version>+ to the Cc tag.
> > 
> > Maybe we ask that all cc stable commits have this, otherwise it should
> > only be applied to the previous stable and nothing earlier.  
> 
> No, again, that would put more burden on the maintainer and developer
> than I want to "enforce".  I don't even want to do that extra work for
> the trees I maintain, I just couldn't scale that way.

Note, this isn't just good practice for sending patches to stable, it's
general good practice maintaining code. It gives a nice history of a
change. If you look at the change log of code that one might see that
looks "interesting" it may be very educational to see that it was done
as a fix for something else. And a new developer may understand why
code was added in the first place.

I don't buy this as burden on a maintainer. This should be part of the
maintenance procedure, regardless of sending to stable or not. Yes it
does take extra time, but I don't think that time is wasted.

> 
> > IIUC, Greg et.al. will apply a stable tagged commit to all previous
> > stable trees as long as they apply cleaning. Greg, is that correct?
> > Perhaps we shouldn't apply them if they don't have a fixes tag or a
> > label that states what versions they are for.  
> 
> I apply them to older kernels based on my best judgement.  That includes
> reading the patch, seeing how "cleanly" they apply, and judging the
> severity of the patch.  I only notify developers if their patch doesn't
> apply to an older kernel tree IF they have marked it as explicitly being
> needed for an older kernel tree.
> 
> Now I greatly appreciate the use of fixes: and other hints to show how
> old a patch should be backported to, don't get me wrong.  But I'm not
> going to require that it be present in order to have a patch backported,
> again, too much work for maintainers.

I was saying that it be required for backporting beyond the previous
stable. But also may be a hint for other stable maintainers to look at
the patch. Just no guarantee that it goes any farther back than one
release.

> 
> It's up to anyone who wants to maintain a "longterm" stable tree to do
> this extra work on their own.  It's not easy, and it is work, but that's
> just part of the job.  We can't force maintainers to care about older
> kernel versions if they don't want to, as maintainers are our most
> limited resource right now.

I agree. But my suggestion about the Fixes tag was more of trying to
get maintainers into a good practice for the maintenance of the code
itself.
 
> 
> Remember, we _still_ have whole subsystems that never mark anything for
> stable, let's focus on them please, that's the biggest issue for stable
> trees that I can see right now.

I'd be more interested in getting all subsystems to just add Fixes
tags ;-)

-- Steve
