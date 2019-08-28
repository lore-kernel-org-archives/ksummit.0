Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4C05B2A35
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 10:53:37 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB3118A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 10:53:36 +0000 (UTC)
Date: Wed, 28 Aug 2019 12:53:33 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
In-Reply-To: <yq1a7btvc5q.fsf@oracle.com>
Message-ID: <alpine.DEB.2.21.1908281252220.1869@nanos.tec.linutronix.de>
References: <CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
	<20190828090837.GA31704@kroah.com> <yq1a7btvc5q.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
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

On Wed, 28 Aug 2019, Martin K. Petersen wrote:
> > How about this, when sending a v2, you have it be in response to the
> > v1 patch?  Same for v3, have it be in response for the v2 one.  And so
> > on.
> 
> I spend a ton of time tracking older versions of series (subjects often
> change).
> 
> However, requiring proper follow-up headers is yet another thing for me
> to manually police. Maybe we could add a line of defense and make
> patchwork complain if somebody posts a -vN without a suitable
> --in-reply-to?

That's horrible in various mail clients. Post the new series stand alone
and add

    Link://lore.kernel.org/r/$MESSAGE_ID_OF_V$N-1

to the cover letter and you have a trail.

Thanks,

	tglx
