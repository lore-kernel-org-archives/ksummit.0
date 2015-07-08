Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B740BB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 01:14:01 +0000 (UTC)
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1AD97AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 01:14:01 +0000 (UTC)
Received: by ieru20 with SMTP id u20so2705178ier.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 07 Jul 2015 18:14:00 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <1481488.5WJFbB0Dlm@vostro.rjw.lan>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
Date: Tue, 7 Jul 2015 21:14:00 -0400
Message-ID: <CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 7, 2015 at 9:29 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> On Wednesday, July 08, 2015 01:21:40 AM Peter Huewe wrote:
>> Hi,
>>
>> In order to continue our traditions I would like to propose again the topic of
>> recruitment, but this time not only limiting to the hobbyists market.
>>
>> We are definitely short on reviewers and thus have mostly overloaded
>> maintainers.
>> For testers it's usually even worse - how many patches are actually tested?
>> Judging from what I read on LKML not that many.
>>
>> So we should definitely discuss:
>> - how can we encourage hobbyists to become regular contributors
>> -- how to keep people interested, the drop-out rates are huge.
>> - encourage regular contributors to become reviewers and testers
>> - reviewers to become co-maintainers and finally maintainers (once the
>> original maintainer is used up or moves up/on)
>
> Good topic.
>
> Unfortunately, there are not too many incentives for people to become
> code reviewers or testers, or at least to spend more time reviewing patches.
>
> Most of the time there's a little to no recognition for doing that work and,
> quite frankly, writing code is more rewarding than that for the majority of
> people anyway.
>
> The only way to address this problem I can see is to recognize reviewers
> *much* more than we tend to do and not just "encourage" them, because that's
> way insufficient.

You could make a Reviewed-by tag required before a patch can be
included in a submaintainer's tree.  At least some maintainers seem to
(arbitrarily?) require this at times.  However, if you do that then it
would likely slow down development quite a bit.  Then Greg might cry
because he wouldn't get to show pretty graphs at conferences about how
fast the rate of change is in the kernel.

(I would love to see a graph comparing rate of change to rate of
regressions/bugs, but then people would have to know the latter.)

josh
