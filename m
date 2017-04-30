Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E06B2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Apr 2017 19:12:08 +0000 (UTC)
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EB08E1A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Apr 2017 19:12:07 +0000 (UTC)
Received: by mail-ua0-f177.google.com with SMTP id q26so22801361uaa.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Apr 2017 12:12:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKMK7uFOq-7_3x601kc5BN0o-eZ5RMujrVb=Qs3ye+XWwKiq7w@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
	<CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
	<CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
	<CACRpkdb5HVcr6aSJwc2cyFVx435ycWCvEeVrs3OEjvrCK54jTg@mail.gmail.com>
	<20170425091058.qhxkpocnhhd4jysh@dell>
	<CAKMK7uFOq-7_3x601kc5BN0o-eZ5RMujrVb=Qs3ye+XWwKiq7w@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 30 Apr 2017 12:12:06 -0700
Message-ID: <CAOesGMhnV0tkeiH0bTVxheE4cQ3A0p5YkJwoJPHQrTAZsMF8_Q@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Apr 29, 2017 at 2:00 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> [Back from a bit of vacation, so I'm just jumping into the middle of
> the cross-subsystem/invariant topic branch discussion. I read all the
> other mails, but this seems most relevant.]
>
> On Tue, Apr 25, 2017 at 11:10 AM, Lee Jones <lee.jones@linaro.org> wrote:
>> Although common place, immutable branches are still treated as the
>> last resort.  If patches can be taken via their respective subsystem
>> trees without fear of disruption, they are.  Contributors often
>> attempt to have their *new* cross-subsystem functionality taken in via
>> a single tree (requiring an immutable branch), purely because it's
>> convenient and the merge-time becomes deterministic, but we do not
>> allow that unless there are hard/unavoidable build-time dependencies.
>
> Honest question, why exactly?
>
> At a quick ignorant glance this seems to trade contributor time
> against maintainer time, which in my opinion means you should ramp up
> your maintainer training and mentoring to have much more maintainer
> time available and make contributing to upstream more attractive. But
> drm != other subsystems, I'd like to hear more of why you picked this
> tradeoff.

As mentioned already, we've seen too many messes caused by multiple
people stepping on each other. When you merge a mixed-contents branch
through another subsystem you have to gamble on anyone else not
touching anything near it.

Worst case possible is refactorings of code made by people at the same
time, with the almost-as-bad-case of one side refactoring, the other
one adding something new. And given how refactoring-happy DRM is, I'm
extremely hesitant to see ARM contents merged through there.

Another reason for that is that it's pretty common to have for example
media and graphics handled by separate teams from main platform code
(both in corporate land as well as on the community side). Having two
separate teams work on the same piece of code means that even though
_you_ say it's OK to merge through a different tree, the platform
maintainer on the other team might have different plans for that code.

Yes, there's some overhead in dealing with this. Most of it is pushed
down to the per-platform level, so there's no need to coordinate all
the way up the maintainer path in many cases. Main exception is
usually new contributors/platforms where we keep an extra eye on
things as new people get used to their roles, build up experience,
etc.


-Olof
