Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D9BE91BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Aug 2016 20:20:06 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 4B08F243
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Aug 2016 20:20:06 +0000 (UTC)
Message-ID: <1472156400.2448.7.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dave Airlie <airlied@gmail.com>, Josh Triplett <josh@joshtriplett.org>
Date: Thu, 25 Aug 2016 16:20:00 -0400
In-Reply-To: <CAPM=9txYCC1wh6m-fNt9XSNA-JOmDGoE0qXchQyiip7+TG+D6Q@mail.gmail.com>
References: <e315013e77cc851b040b5b5f4fe9f0bf@motives.com>
	<20160824130832.GA28564@kroah.com>
	<1472052583.61594.577.camel@infradead.org>
	<20160824174724.GE30853@kroah.com> <20160824205011.GA31615@ebb.org>
	<20160824215447.GA5368@kroah.com> <20160825040619.GA32072@ebb.org>
	<20160825063707.fcgu3ogqqcun2vmy@thunk.org>
	<20160825070338.i5g5obwgjamaq7fk@x>
	<CAPM=9txYCC1wh6m-fNt9XSNA-JOmDGoE0qXchQyiip7+TG+D6Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2016-08-26 at 06:03 +1000, Dave Airlie wrote:
> On 25 August 2016 at 17:03, Josh Triplett <josh@joshtriplett.org>
> > - EXPORT_SYMBOL_GPL and MODULE_LICENSE.  I know that some history 
> > exists   suggesting that they've helped with some cases.  Do they
> > potentially make enforcement more difficult, though?  (This also 
> > includes informal or internal enforcement/compliance efforts; for 
> > instance, EXPORT_SYMBOL_GPL may provide a supporting argument for 
> > such efforts, but conversely EXPORT_SYMBOL may then hinder such
> > efforts.)
> 
> Oh I really wish someone could answer that. I hate _GPL as I believe 
> it makes it legal to create GPL modules with MODULE_LICENSE, when 
> really they violate the license just as much if not more. If 
> something isn't a derivate work for MODULE_LICENSE, but using one 
> _GPL work somehow makes it one, is insane.

Well, having talked to some corporations who are fast and loose with
kernel modules: They fear accessing the GPL symbols (by lying about
their module licence) because, in the US, their lawyers have advised
them that this could be construed as circumventing a technological
protection mechanism under the DMCA.

I'm not sure I believe that pushing symbols to become GPL only helps
because the lawyers now seem to think that open source shims which give
access to the symbols are generally OK.

> Although I can't attend this year, I think there should be less stop 
> energy from the senior developers, and more discussion in the only 
> place it's probably safe to discuss this, in a closed room with no 
> press, I'm nearly sure this is one of the reasons KS existed in the 
> first place to have unreportable discussions.
> 
> Everyone who stays in the room can later drink heavily and deny any 
> knowledge of having been there.

That's about what we did last year.

Just on that, I would like to remind everyone that last year, we did
something fairly similar to what's being proposed and the sky didn't
fall ... there may have been a few irritated corporations, but there
weren't huge consequences.

What I think last year demonstrated was that we could use the forum of
the KS to have a useful dissemination of information and I think it's
got to be better than simply refusing to talk about it.

James
