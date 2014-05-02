Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0196E21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:23:38 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7E09C1F8D1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:23:37 +0000 (UTC)
Date: Fri, 2 May 2014 23:23:34 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Josh Boyer <jwboyer@fedoraproject.org>
In-Reply-To: <CA+5PVA6oTQy5j1XyQG_h6Vk1kW8UrA_j61ouPfm_kvZMQ9ZqEA@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1405022321250.29834@pobox.suse.cz>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org>
	<20140502194935.GA9766@redhat.com>
	<20140502204141.GB24108@thunk.org>
	<20140502210123.GA13536@redhat.com>
	<CA+5PVA6oTQy5j1XyQG_h6Vk1kW8UrA_j61ouPfm_kvZMQ9ZqEA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2 May 2014, Josh Boyer wrote:

> >  > And I think we can also further break this down into the classes of
> >  > code which require root privs (i.e., like kexec), and those which can
> >  > be used by any userid.
> >
> > In the brave new world of secure boot, we kind of have to care about
> > even the root cases now too [*], but I agree in the general case.
> 
> Speaking of that... is it worth my time to propose a "What to do about
> the secure_modules/trusted_kernel/whatever patch set that distros are
> carrying to support Secure Boot?  I thought we had agreement and a
> path forward at LPC last year, but things seem to have gotten derailed
> again.

I believe the biggest remaining thing on the plate is basically just 
kexec/kdump ... is there anything else comparably major?

-- 
Jiri Kosina
SUSE Labs
