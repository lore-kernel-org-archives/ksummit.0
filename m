Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 570F51153
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 15:02:34 +0000 (UTC)
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B996A8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 15:02:33 +0000 (UTC)
Received: by mail-io0-f193.google.com with SMTP id q5-v6so3822142iop.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 08:02:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180911124423.GM2494@piout.net>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 11 Sep 2018 17:02:31 +0200
Message-ID: <CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Tue, Sep 11, 2018 at 2:44 PM, Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
> On 11/09/2018 00:44:57+0200, Daniel Vetter wrote:
>> gitlab (or well anything with a concept like pull requests) makes the
>> 90% so much easier. And it doesn't take more work for contributors if
>> you set things up right - it's just a git push instead of a git
>> send-email. At least after initial setup is done.
>>
>> And at least in a corporate environment (and I kinda have to care
>> about that) gitlab wins on the initial setup front hands down against
>> email. gitlab only needs https (even for git push/pull), and
>> coproporate firewalls are pretty ok with https. They are not ok with
>> smtp, like at all. And the amount of time we spend debugging random
>> git send-email setup issues is epic.
>>
>
> I would like to chime in and remind you that there are many subsystems
> where you get a lot of drive-by contribution from random people. I'm
> obviously thinking about rtc but I think this would also apply to codec,
> IIO, power/supply, hwmon... In that case any initial setup would be
> prohibitive.
>
> I feel like these subsystems are often left to the side when I read
> threads like that talking about getting every patches reviewed, doing
> more CI, etc...
>
> So I need to emphasise that there are subsystem where people are not
> backed by a company to contribute or review. What I often see is someone
> having $random hardware and submitting a patch adding support for it.
> That developer will definitively not review other patches because he has
> no particular interest in them. He also probably doesn't have the
> experience to do a review.
>
> It is quite different from having a few big companies with huge teams
> each maintaining a single driver in a subsystem... You simply can't have
> the same expectations.

Yes drm has drm/i915 and drm/amdgpu. But reducing the graphics folks
to these two big drivers with huge teams backing them, would be about
the same as stating that linux only runs on x86 and arm. There's more.

And we do have quite serious problems with tiny boutique trees and
drive-by contributors who immediately disappear. We're still trying to
do our best to cope with that, which inolves lots of pain, and the
occasional success.

Here's a bunch of things we've done, all with at least one success
story within drm:

- Merge enough trees together until you have enough people capable to
doing maintainer duties for a triumvirate. That allows you to rotate,
arm-soc style. Rule of thumb is anything below 100 patches per release
cycle is probably too small, but you might need a lot more than that.
3 maintainers seems to be ideal.

- Intentionally abandon stuff. Sometimes no one else bothers to work
because the current maintainer is all over the place, does everything,
and suffocates any newbie's attempt to help out. Once something is
abandoned long enough it's either known to be dead, and not worth to
spend much time further maintaining. Or someone steps into the
intentionally created void and helps out.

- Make sure you have the smoothest ramp up from all stages of
contributing. bug report, first patch, oddball patch, first reviews,
then commit rights (first only for their own stuff, then maybe for
others), and so on. Any slightly elevated jump will mean people walk
away.

- Talk about the maintainer. If no one wants to help out, but it's a
generally active area, there's a problem. Fairly often it's a human
problem, and the maintainer is blind to their own short-comings. This
is very tricky, and requires enormous amounts of empathy and time, but
can be rectified.

Looking at drivers/rtc over the past 2-3 years it seems like a
decently active subsystem. Probably on the small side of things, but
not catastrophically so. But looking at contributor stats the picture
is totally different:

   241  Alexandre Belloni
    28  Linus Torvalds
    27  Arnd Bergmann
    25  Javier Martinez Canillas
    20  Uwe Kleine-K=C3=B6nig

That kind of skewed contribution statistics is indeed not sustainable,
and indicates some serious problem imo. What exactly goes wrong, and
how to best fix it I can't tell without more information though. From
my experience in drm, where we also have some areas with highly skewed
contribution statistics, it could be the maintainer driving people
away, ensuring that there's only one-off contributions. Usually
unkowningly.

Cheers, Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
