Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1E8A4EAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:23:54 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BA577F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:23:53 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id f14-v6so30296356ita.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:23:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180910161837.GA4459@chatter>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<CA+55aFwg+iP-R9=fiJ_uzggiQi39Ce7wO707rPYx7C9BGQ0-Rw@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm> <20180910154738.GA3712@chatter>
	<CAKMK7uFyW-Xfhe1mWESjrcVzPzKzKEJr8BibUPPLgBTWbTSATA@mail.gmail.com>
	<20180910161837.GA4459@chatter>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 10 Sep 2018 18:23:52 +0200
Message-ID: <CAKMK7uEV-GQ=FJXDdboWbdOVxMyLYEpS2B20em5LUukjhtqBqA@mail.gmail.com>
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

On Mon, Sep 10, 2018 at 6:18 PM, Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> On Mon, Sep 10, 2018 at 06:07:35PM +0200, Daniel Vetter wrote:
>>
>> Assuming we do indeed switch some parts of the drm process over to
>> gitlab (very big assumption here), whom would we need to chat with to
>> do that?
>
>
> Hm... For the purposes of cregit or repository hosting?

For cregit integration. Tbh I don't even know how the current mailing
lists hosted on freedesktop.org infrastructure are integrated into
cregit. But I assume they are somehow, since that's were all the drm
talk is happening. gitlab will also be hosted on fd.o infrastructure
for us.

>> Atm what we're doing with patchwork is automatically add a Link: with
>> the https:// patchwork url for that patch. Which then has links to the
>> overall series, with CI results and discussions and all that. Plan for
>> gitlab is to do something similar, if we start using it for real for
>> anything. Would that be good enough?
>
>
> That shouldn't be necessary in the near future. There is work under way for
> patchwork to accept message-id based URLs, so using the
> lkml.kernel.org/r/message-id URLs in commit messages should be enough for
> cregit to provide a link to the relevant patchwork thread. We will also
> probably end up integrating lore.kernel.org/patchwork with git in a way that
> would associate patches with final commit-ids and auto-archive them. It's
> not going to be 100% accurate for various reasons, but will at lest provide
> more hooks for projects like cregit to provide extra details about git
> commits.

There's at least 4 forks of patchwork :-/ The one we have on fd.o has
been doing this since ages. We added the Link: stuff so you can easily
go from e.g. git log to the patch discussion, without a detour through
google.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
