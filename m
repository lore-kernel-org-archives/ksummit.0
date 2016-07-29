Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8888F71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:11:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 07FCD1B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:11:29 +0000 (UTC)
Date: Fri, 29 Jul 2016 10:11:27 -0700
From: Darren Hart <dvhart@infradead.org>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20160729171127.GA3062@f23x64.localdomain>
References: <20160727044631.GA75806@f23x64.localdomain>
	<CACRpkdZmXsYGBTP=AntbHts=ZfuG_HuPMi=5s+bQHZuLmQK10Q@mail.gmail.com>
	<20160727134602.GO4541@io.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160727134602.GO4541@io.lakedaemon.net>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Nicolas Pitre <nico@fluxnic.net>
Subject: Re: [Ksummit-discuss] Linux and Safety Industry reviews,
	was: Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 27, 2016 at 01:46:02PM +0000, Jason Cooper wrote:
> Linus, Darren,
> 
> I'm also tangentially interested in this discussion from a security point
> of view.  Failing in a deterministic way is a desirable trait in both
> the security and safety industries.
> 
> On Wed, Jul 27, 2016 at 11:25:52AM +0200, Linus Walleij wrote:
> > On Wed, Jul 27, 2016 at 6:46 AM, Darren Hart <dvhart@infradead.org> wrote:
> > 
> > >   - Developing a "safety culture" and any overlap that may have with security
> ...
> > My loose thoughts on the issue is twofold:
> > 
> > - We will have an influx of professional safety reviewers that do not
> >   share their review comments with us, instead apply fixes locally and
> >   not upstream. This is potentially dangerous if the next reviewer for
> >   a safety-critical system misses the same bug. 
> 
> I thought the safety reviewers were an independent third party?  Wouldn't
> the company attempting to get the product certified be the one making
> the changes?
> 
> Regardless, identifying these third party reviewers and asking them to
> 'Cc linux-safety@v.k.o' or similar on bugs they find may be a good place
> to start.  The trick is increasing our awareness of bugs with the least
> impact to their workflow.
> 
> We would also need to anticipate that a significant number of those
> reports would be located in non-upstreamed vendor drivers/features.
> 
> > - Can we record external inspection-only code reviews done by these
> >   independent code reviewers (post-minimization) into the kernel (etc) git?
> >   That I guess is pretty useful for building formal trust for the code,
> >   but I never heard of git annotations to some random code lines like
> >   that.
> 
> How do they mark up $codebase currently?  It would be helpful to hear a
> walk through of their typical workflow.

A response from Nicholas McGuire (SIL2LinuxMP Safety Coordinator) responded
with:

"
We are feeding all findings back as much as we can - regarding the
cert data package its a lot on the process we run and the evidence
we gather - so most of that will not go into the kernel documentation
in any resonable form - but it could help to cleanup the DLC a bit
mostly small things like
"

He also said he would be willing to join us in Santa Fe for a TECH topic. I'll
write one up quickly to get it in today.


> 
> > - Should minimization be a part of the kernel standard tooling for use
> >   cases like this?
> 
> I think so.  This also has other benefits.  I've been putting some
> thought towards "how to make the engineers job easier when justifying a
> kernel update"  If a vendor has a minimal config for their current
> version, I could imagine a 'git diff v4.6..v4.7 | ./scripts/configdiff
> ...' that would trim the diff between two kernel versions down to only
> the config-enabled code.  Bonus points for taking 'git log --oneline
> v4.6..v4.7' output and trimming to relevant commits.
> 
> This would reduce hours needed to review the changes, help focus QA
> testing, and quantify the benefits of upgrading.  All of which makes it
> easier for vendors to update kernels instead of getting 'stuck'.
> 
> thx,
> 
> Jason.
> 

-- 
Darren Hart
Intel Open Source Technology Center
