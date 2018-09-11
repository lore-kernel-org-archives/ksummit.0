Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 43BB914B5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 20:15:19 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A97B87E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 20:15:18 +0000 (UTC)
Date: Tue, 11 Sep 2018 22:15:14 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <CAKMK7uEhoQ_bq9u3fJu-9PrpEH1iJWqBHbDDS9_LJ0tg8mmA_g@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1809112131540.1427@nanos.tec.linutronix.de>
References: <20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net>
	<20180911144538.3ceecd8d@vmware.local.home>
	<CAKMK7uEhoQ_bq9u3fJu-9PrpEH1iJWqBHbDDS9_LJ0tg8mmA_g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 11 Sep 2018, Daniel Vetter wrote:
> and yelling the report will cause. Note: There's also other reasons we
> have patches in our local fixup tree, so don't go looking there now
> and shredding the involved subsystem maintainers, pls.

I nevertheless went to look just to see what touches my areas of
interest. And interestingly I found two patches which I looked at before
and both were discussed on the mailing list in civilized ways. Both ended
up with recommendations and requests for change from reviewers and then
nada.

One is an enhancement and the other is a bug fix. I dont care about the
former too much other than having wasted time for reviewing it and thinking
about a cleaner solution. That happens and I know that everyone is
overworked.

But for the bug fix I really have to ask _WHY_ this is carried in some
random drm branch and not followed up for more than 18 month. The
maintainer in question was obviously putting it aside and waiting for the
review comment to be addressed and then forgot about it, but you cannot
have forgotten about it because you or whoever is in charge of that tree
rebased it a gazillion of times.

There is another fix which has a similar fate, which has a bugzilla entry
updated a few days ago telling the world that the fix is not upstreamed
yet, but now documented in the BZ so everyone can find it.

Nothing of this has to do with the 'oh I gave up on talking to those people
because they are so hard to work with' AFAICT. So what are you trying to
tell us here?

Thanks,

	tglx
