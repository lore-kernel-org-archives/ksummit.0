Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6A8F11027
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:33:14 +0000 (UTC)
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A18BC716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:33:13 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id f8-v6so18492158ljk.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:33:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180910153806.GR16300@sasha-vm>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<CA+55aFwg+iP-R9=fiJ_uzggiQi39Ce7wO707rPYx7C9BGQ0-Rw@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 10 Sep 2018 09:33:09 -0700
Message-ID: <CAOesGMjoe3XGeAoLhVpY2a-8q0Pgvc2bt9Dt58MYx=ZTuKHZTQ@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

Hi,

On Mon, Sep 10, 2018 at 8:38 AM, Sasha Levin via Ksummit-discuss
<ksummit-discuss@lists.linuxfoundation.org> wrote:
> On Mon, Sep 10, 2018 at 05:10:48AM -1000, Linus Torvalds wrote:
>>On Mon, Sep 10, 2018 at 5:08 AM James Bottomley
>><James.Bottomley@hansenpartnership.com> wrote:
>>>
>>> On Mon, 2018-09-10 at 04:53 -1000, Linus Torvalds wrote:
>>> >   "Live without email - possible?"
>>>
>>> Can I propose one small alteration to the topic:
>>>
>>>         "Patches without Email - Possible?"
>>
>>Yes, better. That's what I meant anyway.
>>
>>I still want the pull requests as email, and I still think email is
>>often the best way to discuss things.
>
> Yes, email is great for discussions, but one concern I have is that once
> discussions ended and a patch was merged, a lot of those discussions are
> lost forever.

It's great for ephemeral discussions of the current patch set, but
several of your points sort of indicate that it _isn't_ a good
discussion forum either.


>
> It's somewhat easy to google a patch and look in lkml archives to see
> some discussion as a result of the patch, but that's far from perfect:
>
> 1. For different patch revisions, some discussions manage to hide in
> the archives.
> 2. Discussions that resulted in a patch being sent aren't linked to the
> patch itself.
> 3. Any discussions after the patch was merged aren't easy to locate,
> specially if they're not in the same thread as the original patch.
>
> This makes the lives of stable/distro folks more difficult than it
> should be.
>
> Yes, some maintainers started adding links to lkml archives, but those
> are very inconsistent and often just point to the patch submission
> rather than relevant discussions.

It makes it a pain for me as well. The way we deal with code coming in
is that very often we don't see patches until they're sent to us in a
pull request. I look through them (i.e. a light review), and if I find
something, I'll go look for the patch on the mailing list and reply on
it.

If that patch is up at higher versions, there's no way for me to
easily find all previous discussion about it, which sometimes means I
will have conflicting feedback from some other maintainer. If it's
minor feedback that isn't a really big deal, it's better to see the
other side early on and just not introduce the noise and conflicting
requests to the contributor.

Having worked in several corporate setups, none of them are ideal, but
some of them do fill the gaps we have while they introduce others.
There is definitely lots of opportunity for better tooling all around.

> I'm not sure what's a good way to solve this, but I'd really like to
> stop losing this valuable information as a result of the current
> process.

I think any tool we choose can/should/will have an email backed such
that email archives could always be a canonical historical fallback.
Especially for services where URLs to pull requests might not be
around 5 years from now, etc. We've already gone through a cycle of
this for email archives recently.



-Olof
