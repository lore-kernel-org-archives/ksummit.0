Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 654712F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Jul 2019 22:27:53 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EE099891
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Jul 2019 22:27:52 +0000 (UTC)
Date: Wed, 17 Jul 2019 00:27:45 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Olof Johansson <olof@lixom.net>
In-Reply-To: <CAOesGMgaw3Xq4gCkSsyHW_n8ETkpSKwe5f_oBsz_+s3c+XsnTA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1907170026200.1767@nanos.tec.linutronix.de>
References: <20190706142738.GA6893@kunai> <20190714103509.2dd72c90@archlinux>
	<alpine.DEB.2.21.1907141157410.1669@nanos.tec.linutronix.de>
	<20190716211636.GA6679@kunai>
	<CAOesGMgaw3Xq4gCkSsyHW_n8ETkpSKwe5f_oBsz_+s3c+XsnTA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
 meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 16 Jul 2019, Olof Johansson wrote:
> On Tue, Jul 16, 2019 at 2:16 PM Wolfram Sang <wsa@the-dreams.de> wrote:
> >
> >
> > > Even if we agree on a set of new tags the usage will still be based on
> > > individual interpretation, which brings us back to square one.
> >
> > I agree. New tags won't help us much.
> >
> > > So no, let's just accept that these things are subjective and apply common
> > > sense to make the best use of them.
> >
> > I meanwhile do think, though, that for "best use" it will be helpful to
> > add my Rev-by to my SoB when I really did a full review (and not just
> > trusted other reviewers). To properly document the process of a patch.
> 
> I don't see how this is bringing much value. You picked up the patch,
> and if you did so without looking closely at it, the end result is the
> same: You're likely to be on the line for dealing with issues.
> 
> The only thing a "S-o-b" without "R-b" would bring is "It's not my
> fault that stuff broke" -- but it still is since your name is on it,
> and that's not something that adds value for the project as a whole.

Right, if you commit it then you are responsible for it. It does not matter
whether you reviewed it yourself or relied on someone else review.

Thanks,

	tglx
