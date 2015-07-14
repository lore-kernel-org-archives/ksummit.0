Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6FDC8305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 07:47:28 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D053FF2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 07:47:27 +0000 (UTC)
Message-ID: <1436860041.6901.42.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Kees Cook <keescook@chromium.org>
Date: Tue, 14 Jul 2015 08:47:21 +0100
In-Reply-To: <CAGXu5jJdmwdKw6CYwMNUCDKai0M5UrghYn1c3tTwqudLwdbO0A@mail.gmail.com>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<CAGXu5jJdmwdKw6CYwMNUCDKai0M5UrghYn1c3tTwqudLwdbO0A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2015-07-13 at 16:25 -0700, Kees Cook wrote:
> On Sat, Jul 11, 2015 at 12:31 AM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Fri, 2015-07-10 at 15:08 -0700, Kees Cook wrote:
> >>   - personal security (keep commit credentials secure from theft)
> >
> > This second one is a bit of a red herring:  Assuming you did steal my
> > credentials, how would you use them without being detected?
> 
> Well, I meant it in a general sense. Whether that's your ssh key, or
> direct access to your entire network through backdoored network card
> firmware and SMM code, there are TONS of way to be owned without being
> detected. :)

Right, so there's no point having a huge lock on your front door if you
know there's a weak catch on the back one.

> > Security is not an absolute, it's a tradeoff.  The point of the tradeoff
> > is to make sure you address the significant threats while not impeding
> > the workflow too much.  If we start worrying about and addressing
> > insignificant threats, eventually you won't get on to kernel.org without
> > going through airport theatre style security.
> 
> We have one thing that a lot of other workflows don't: transparency,
> so we can examine commit histories, etc. This makes credential theft
> much less useful (which I think was your point).

No, that was part of my point: detection of forged commits via stolen
ssh credentials without compromising the laptop are easily detectable.

The other part is that security is a chain: it's only as strong as its
weakest link.  One consideration in making a chain is that you try to
have all the links be of roughly equal strength.  In security terms you
do this because security is a tradeoff: there's no point having onerous
security on one link if another is weak because people just bitch about
the pointless problems this causes.  That's precisely why security is a
tradeoff: you assess the threats and counter what you can in a way that
makes the least impact to usability.  What you should never do (unless
you're a government) is make an elaborate show of security to give a
false impression because clever people notice and real security suffers.

> >> - reactive security: bug fix workflow
> >>   - getting fixes _to end users_ (not the same as publishing to stable)
> >
> > Stable is our last point.  After that, it's up to the distros
> 
> I don't agree with this. Distros are just one consumer. I think it's
> worth examining how real-world devices end up running Linux. Telcos
> pushing kernel updates, for example, jumps to mind. I think it's a
> weak stance to say "well, they should update to the latest kernel". Is
> it a failing of our community that it's so much work for these vendors
> to update kernels? Is offering an LTS "good enough", or can we do
> more? It's Linux's name that gets smeared by vendors who are terrible
> at updating kernels. :(

While security fixes (and the kernel security list) aren't transparent,
I don't really see what else we can do.  Stable is our last best effort
before it gets handed off, unless you have another proposal?

> >>   - documenting impact when known (avoiding intentional obfuscation)
> >> - proactive security: stop security flaws from happening in the first place
> >>   - scope analysis (defending both userspace and kernel from attack)
> >>   - threat analysis (how are attacks being made now and in future?)
> >>   - exposure analysis (syscall interface, device firmware, etc)
> >>   - static checkers (find and eliminate bug classes in the code)
> >>   - run-time mitigation features (endless list: memory protection, CFI,
> >>     ASLR, anti-bruteforcing, etc)
> >
> > Perhaps the question here is would we be interested in making use of the
> > core infrastructure initiative to give us a security analysis of parts
> > of the kernel (and if so, which parts).
> 
> I actually think the issue is body count. We have a lot of tools
> already. We have coverity, for example, but it needs full-time work
> (by a few people, I think) to trim false-positives, improve rules, and
> extract the real bugs. Which companies are paying people to do this
> full-time? Our numbers aren't improving much in this area. We've
> actually been getting smaller... Dave Jones, come back, we all still
> love Trinity! :)

So you seem to be implying this is a funding problem?  We could easily
apply to the CII for a full time position if that's the case (and we
have a good job description).

James
