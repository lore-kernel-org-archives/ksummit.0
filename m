Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CF5A771
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 02:13:55 +0000 (UTC)
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9038D1B8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 02:13:55 +0000 (UTC)
Received: by mail-yw0-f182.google.com with SMTP id h14so127843764ywa.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Oct 2016 19:13:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAB=NE6XscoaYq7_0wbEtgdGZt-duhMb6a-o8O+09FrJRy9EkLQ@mail.gmail.com>
References: <CAB=NE6XscoaYq7_0wbEtgdGZt-duhMb6a-o8O+09FrJRy9EkLQ@mail.gmail.com>
From: Rob Herring <robherring2@gmail.com>
Date: Sun, 30 Oct 2016 21:13:34 -0500
Message-ID: <CAL_JsqJ95-7mE+qW8zzPeEPMsOCTXZc-8m8MG-NogM2=os3zBQ@mail.gmail.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: Jiri Kosina <jkosina@suse.cz>, Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Schedule slot suggestion- Generic drivers -
 core topic
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 28, 2016 at 4:16 PM, Luis R. Rodriguez <mcgrof@kernel.org> wrote:
> I see some open slots for Monday, there is some overlap in interest
> between the Audio workshop folks and the tech topic for Tuesday
> "addressing complex dependencies". We seem to have come to some
> arrangement to split topics up to avoid such overlap, but one subject
> overlapping both, but that seems more appropriate for the core day is
> "Generic drivers":
>
> Having some generic device driver load, prior to a specific driver,
> and issues / maintenance issues that come with the hacks currently in
> place to support this / re-invent the wheel to support this per
> subsystem.

This is a looming, unsolved problem for DT as well. We can potentially
bind different drivers to same device if the device has multiple
compatible strings. There's not any control of which one binds first
either other than link or initcall order.

> It might be good then to move this to a Monday slot, provided most
> interested folks can and will be there. Thoughts?

I'd like to be there and won't be there on Mon.

BTW, is there a schedule for Tues published?

Rob
