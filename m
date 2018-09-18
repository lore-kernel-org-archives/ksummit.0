Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A830D0B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 08:00:27 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7451C7CD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 08:00:26 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id h3-v6so1917473ita.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 01:00:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
	<20180917100413.22eac00d@coco.lan> <2072478.UYspZ1xLTN@avalon>
	<20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 18 Sep 2018 10:00:24 +0200
Message-ID: <CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
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

On Tue, Sep 18, 2018 at 1:04 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On September 17, 2018 4:39:48 PM MST, Dave Airlie <airlied@gmail.com> wrote:
>>> This is a valid point: whatever development process is used, drive-by
>>> contributors should be allowed to send e-mails without needing to
>>subscribe
>>> (neither to a moderated list nor to a web-UI). I don't care how the
>>> maintainer will handle such patches, provided that they will be
>>properly
>>> handled.
>>>
>>It really depends on what type of one-off contributor they are.
>>
>>Setting up git send-email isn't trivial for everyone, if you are a
>>gmail user and work for a company that doesn't embrace smtp so much,
>>then having a webui and https git access will be a lot easier for
>>one-off contributions.
>
> Agree with this but that's why I don't use git-send-email
>
>>Beware of thinking our setup with email is in any way simple for a
>>newcomer to setup properly.
>
> Right, but there are many other ways of doing this which still work with mailing lists.

Aside from bare diffs stuffed into plaintext mails directly (which I
is a lot harder to set up than git send-email for new people), what
else is there that works with mailing lists? I'd be great if we have
other options here, since it is a fairly annoying problem for us.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
