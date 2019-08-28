Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 31F192EC0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 12:47:11 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3473113A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 12:47:09 +0000 (UTC)
To: Thomas Gleixner <tglx@linutronix.de>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
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
	<alpine.DEB.2.21.1908281252220.1869@nanos.tec.linutronix.de>
Date: Wed, 28 Aug 2019 08:46:47 -0400
In-Reply-To: <alpine.DEB.2.21.1908281252220.1869@nanos.tec.linutronix.de>
	(Thomas Gleixner's message of "Wed, 28 Aug 2019 12:53:33 +0200
	(CEST)")
Message-ID: <yq15zmhv4nc.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain
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


Thomas,

>> However, requiring proper follow-up headers is yet another thing for me
>> to manually police. Maybe we could add a line of defense and make
>> patchwork complain if somebody posts a -vN without a suitable
>> --in-reply-to?
>
> That's horrible in various mail clients. Post the new series stand alone
> and add
>
>     Link://lore.kernel.org/r/$MESSAGE_ID_OF_V$N-1
>
> to the cover letter and you have a trail.

I'm not sure why it would get messed up if the patches are clearly
tagged as vN?

As far as I'm concerned, the more we automate, the better. Both in terms
of producing the links, but also in terms of verifying that they are
present and correct when patches are applied.

-- 
Martin K. Petersen	Oracle Linux Engineering
