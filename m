Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 490C8ED9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:07:38 +0000 (UTC)
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3E8BC71C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:07:37 +0000 (UTC)
Received: by mail-io0-f194.google.com with SMTP id y10-v6so1068821ioa.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:07:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180910154738.GA3712@chatter>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<CA+55aFwg+iP-R9=fiJ_uzggiQi39Ce7wO707rPYx7C9BGQ0-Rw@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm> <20180910154738.GA3712@chatter>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 10 Sep 2018 18:07:35 +0200
Message-ID: <CAKMK7uFyW-Xfhe1mWESjrcVzPzKzKEJr8BibUPPLgBTWbTSATA@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 5:47 PM, Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> On Mon, Sep 10, 2018 at 03:38:07PM +0000, Sasha Levin via Ksummit-discuss
> wrote:
>>
>> Yes, some maintainers started adding links to lkml archives, but those
>> are very inconsistent and often just point to the patch submission
>> rather than relevant discussions.
>>
>> I'm not sure what's a good way to solve this, but I'd really like to
>> stop losing this valuable information as a result of the current
>> process.
>
>
> This is partly the goal behind cregit:
>
> https://cregit.linuxsources.org/
>
> The plan is that the next version of cregit will become an official
> kernel.org resource some time mid-next year, and will aggregate as much
> information about the kernel code as it can from various places, including
> patchwork.

Assuming we do indeed switch some parts of the drm process over to
gitlab (very big assumption here), whom would we need to chat with to
do that?

Atm what we're doing with patchwork is automatically add a Link: with
the https:// patchwork url for that patch. Which then has links to the
overall series, with CI results and discussions and all that. Plan for
gitlab is to do something similar, if we start using it for real for
anything. Would that be good enough?

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
