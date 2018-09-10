Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D38DB10DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 17:06:26 +0000 (UTC)
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5BF667E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 17:06:26 +0000 (UTC)
Received: by mail-it0-f51.google.com with SMTP id u13-v6so29651875iti.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 10:06:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180910164107.GA4543@chatter>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<CA+55aFwg+iP-R9=fiJ_uzggiQi39Ce7wO707rPYx7C9BGQ0-Rw@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm> <20180910154738.GA3712@chatter>
	<CAKMK7uFyW-Xfhe1mWESjrcVzPzKzKEJr8BibUPPLgBTWbTSATA@mail.gmail.com>
	<20180910161837.GA4459@chatter>
	<CAKMK7uEV-GQ=FJXDdboWbdOVxMyLYEpS2B20em5LUukjhtqBqA@mail.gmail.com>
	<20180910164107.GA4543@chatter>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 10 Sep 2018 19:06:24 +0200
Message-ID: <CAKMK7uF=VDYkKrHFjhq94ytqU8au40DVtcMy_rqWuCFGkHkweQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
	Sasha Levin <Alexander.Levin@microsoft.com>,
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

On Mon, Sep 10, 2018 at 6:41 PM, Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> On Mon, Sep 10, 2018 at 06:23:52PM +0200, Daniel Vetter wrote:
>>>
>>> Hm... For the purposes of cregit or repository hosting?
>>
>>
>> For cregit integration. Tbh I don't even know how the current mailing
>> lists hosted on freedesktop.org infrastructure are integrated into
>> cregit. But I assume they are somehow, since that's were all the drm
>> talk is happening. gitlab will also be hosted on fd.o infrastructure
>> for us.
>
>
> Cregit only considers LKML and the mainline tree -- at least right now.  So,
> as long as all patches and discussions are cc'd to LKML, they will be within
> cregit's reach. I'm not sure there are any plans to look at any other lists
> at this point (I'm only very tangentially involved in cregit's development).
> Kate Stewart would be the right person to ask this.

Hm yeah that's a bit a bummer. We don't tend to cc: lkml on anything
we do. And I think that holds true for many subsystems (but honestly I
didn't check). Can you pls pull Kate into this thread, so I have their
contact information?

>>> That shouldn't be necessary in the near future. There is work under way
>>> for
>>> patchwork to accept message-id based URLs, so using the
>>> lkml.kernel.org/r/message-id URLs in commit messages should be enough for
>>> cregit to provide a link to the relevant patchwork thread. We will also
>>> probably end up integrating lore.kernel.org/patchwork with git in a way
>>> that
>>> would associate patches with final commit-ids and auto-archive them. It's
>>> not going to be 100% accurate for various reasons, but will at lest
>>> provide
>>> more hooks for projects like cregit to provide extra details about git
>>> commits.
>>
>>
>> There's at least 4 forks of patchwork :-/ The one we have on fd.o has
>> been doing this since ages. We added the Link: stuff so you can easily
>> go from e.g. git log to the patch discussion, without a detour through
>> google.
>
>
> It's too bad that this hasn't percolated up to ozlabs, because I believe
> numeric-ID based patch links are actually harmful because they are 100%
> lossy.

We tried to upstream - it died in a bikeshed of competing approaches
and someone else won (but then took years longer to get their approach
merged). Anyway, from our experiences patchwork, even with the things
you've listed implemented, is miles away from what we actually need.
It's definitely better than old patchwork though.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
