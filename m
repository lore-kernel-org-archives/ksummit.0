Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BAAE0FA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 06:06:55 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 246181FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 06:06:55 +0000 (UTC)
Date: Tue, 27 Aug 2019 08:06:51 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dmitry Vyukov <dvyukov@google.com>
In-Reply-To: <CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 26 Aug 2019, Dmitry Vyukov wrote:
> A somewhat related point re UUID/Change-ID.
> For syzbot (or any other bug tracking system) we want to associate
> bugs with fixes. It turned out there is no good identity of a change
> that we could use. Commit hash is an obvious first thing to consider,
> but (1) it changes in linux-next, (2) sometimes the change is not
> committed yet when we do the association, (3) it is different when
> backported to LTS (so not possible to say if a fix is in that stable
> tree or not).
> We decided to use commit subject, which works to some degree, but also
> has problems: (1) not necessary unique, (2) sometimes people change
> subject during backporting (e.g. prepend some prefix), (3) has all the
> same problems of email clients messing with text (e.g. I can't issue
> #syz fix command for loo long commit subjects with my email client).
> Some real UUID/Change-ID would solve all of these problems by giving
> us capability to refer to changes rather than a commit in a particular
> tree only.

If we adopt the Link: ..../$MSG tag widely then you have a UUID.

Thanks,

	tglx
