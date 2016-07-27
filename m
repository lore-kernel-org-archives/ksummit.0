Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5D5EB8FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:52:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B8693244
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:52:45 +0000 (UTC)
Date: Wed, 27 Jul 2016 09:52:42 -0700
From: Darren Hart <dvhart@infradead.org>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20160727165242.GB2565@f23x64.localdomain>
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

I'm considering proposing a tech topic, sounds like there may be sufficient
interest.

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

Yes, the various German and Switzerland TUeV organizations for example.

> the company attempting to get the product certified be the one making
> the changes?

That's the traditional approach, but that is impractical for something as
complex as Linux. Like most arguments for open source software, it behooves the
industry to collaborate on the common needs, such as a compliance route, data
package, evidences, and argumentation for the Linux kernel, glibc, and basic
runtime environment. This is the goal of the OSADL SIL2LinuxMP project:

http://www.osadl.org/SIL2LinuxMP.sil2-linux-project.0.html

> 
> Regardless, identifying these third party reviewers and asking them to
> 'Cc linux-safety@v.k.o' or similar on bugs they find may be a good place
> to start.  The trick is increasing our awareness of bugs with the least
> impact to their workflow.

This sounds like a good idea to me, I'll discuss with the OSADL safety
coordinator and see if he has any concerns.

> 
> We would also need to anticipate that a significant number of those
> reports would be located in non-upstreamed vendor drivers/features.

Like bug against non-upstream drivers, there isn't anything we can really do
there. Also, the compliance route for Linux will depend heavily on code that is
upstream as the development process and requisite code review, static analysis,
etc. is part of the evidence that will be used to complete the data package for
qualification. Non-upstream code will not be able to use the same compliance
route, and will most likely have to take a more traditional route.

> 
> > - Can we record external inspection-only code reviews done by these
> >   independent code reviewers (post-minimization) into the kernel (etc) git?
> >   That I guess is pretty useful for building formal trust for the code,
> >   but I never heard of git annotations to some random code lines like
> >   that.
> 
> How do they mark up $codebase currently?  It would be helpful to hear a
> walk through of their typical workflow.

I'll follow up.

> 
> > - Should minimization be a part of the kernel standard tooling for use
> >   cases like this?
> 

Yes. A team at Hitachi is also working tooling which performs some preprocessing
of the code to further minimize and remove used code. They are an active
contributor to the SIL2LinuxMP project and presented their work at the
Automotive Linux Summit in Japan earlier this month.

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
