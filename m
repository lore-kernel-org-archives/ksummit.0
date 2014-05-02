Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C300A21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:19:02 +0000 (UTC)
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56C451FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:19:02 +0000 (UTC)
Received: by mail-oa0-f41.google.com with SMTP id m1so3333809oag.28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 May 2014 14:19:01 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <20140502210123.GA13536@redhat.com>
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
Date: Fri, 2 May 2014 17:19:01 -0400
Message-ID: <CA+5PVA6oTQy5j1XyQG_h6Vk1kW8UrA_j61ouPfm_kvZMQ9ZqEA@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: Dave Jones <davej@redhat.com>
Content-Type: text/plain; charset=ISO-8859-1
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

On Fri, May 2, 2014 at 5:01 PM, Dave Jones <davej@redhat.com> wrote:
> On Fri, May 02, 2014 at 04:41:41PM -0400, Theodore Ts'o wrote:
>
>  > And I think we can also further break this down into the classes of
>  > code which require root privs (i.e., like kexec), and those which can
>  > be used by any userid.
>
> In the brave new world of secure boot, we kind of have to care about
> even the root cases now too [*], but I agree in the general case.

Speaking of that... is it worth my time to propose a "What to do about
the secure_modules/trusted_kernel/whatever patch set that distros are
carrying to support Secure Boot?  I thought we had agreement and a
path forward at LPC last year, but things seem to have gotten derailed
again.

josh
