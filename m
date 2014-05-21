Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 756B08A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 18:03:10 +0000 (UTC)
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 43BAB2010F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 18:03:09 +0000 (UTC)
Received: by mail-ve0-f171.google.com with SMTP id oz11so2987242veb.30
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 11:03:08 -0700 (PDT)
MIME-Version: 1.0
Sender: ilevex.linux@gmail.com
In-Reply-To: <20140520144757.GA20288@thunk.org>
References: <CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
	<20140513150520.GA15857@kroah.com>
	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>
	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org>
	<CACMb8d0mtbYM4rUEJgkXCJ=MptU8X0JzvoOZriQYOEWmJSE2uw@mail.gmail.com>
	<20140515154112.GA24028@thunk.org> <53779022.6080508@linux.com>
	<20140520144757.GA20288@thunk.org>
Date: Wed, 21 May 2014 20:03:08 +0200
Message-ID: <CAAsK9AH_Z5jKQrhbvce52VSGTsNKiDWkZiEScoiDUw8NMK1-VA@mail.gmail.com>
From: Levente Kurusa <levex@linux.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Dirk Hohndel <hohndel@infradead.org>, Kernel Summit Discussion List
	<ksummit-discuss@lists.linuxfoundation.org>,
	Anton Arapov <arapov@gmail.com>, Sarah A Sharp <sarah@minilop.net>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Ted,

2014-05-20 16:47 GMT+02:00 Theodore Ts'o <tytso@mit.edu>:
> On Sat, May 17, 2014 at 06:36:50PM +0200, Levente Kurusa wrote:
>>
>> Of course we did identify the team. It's me and Teodora. For this QR
>> encoding work we need a lot of framework work and while at it we could
>> also tie up some loose ends in the error reporting workflow. I, for
>> myself, would love to clean up Bugzilla a bit. It has a lot of open bugs
>> that have been fixed for ages, just for example.
>
> Just to be clear, since my understanding is that you are university
> students --- your primary goal is to clean up the QR encoding work,
> yes?  Do you anticipate having time to talk about working on some of
> the larger, grander suggestions that some people have raised on this
> thread?  That is, some kind of web backend to for which these QR's
> could be submitted and then analyzed?

At first, yes, my primary goal is to clean up the library that we currently
use. We still need to remove a lot of unused crap from the library and
make it behave nicer as in resource usage as well... Regarding the
web-backend. I think Teodora has already started working on something
like that,  but she might be working on the Android app she proposed earlier.

Yes I realize that encoding the oops as a QR code is just a part of what
we really need in order to bring it to its fullest. And I for sure can say I'll
have time to work on the suggestions. I talked with Teodora about this and
she is having her finals, but after that I guess she will join me on this
journey.

> Or is what you plan to be focusing on is more tightly focused on the
> the actual generation of the QR barcode?  What help would you need in
> order to bring the use of the QR barcode to its fullest potential?

No not just the generation. I as a user don't at all find reporting kernel bugs
a pleasure. My goal (and I think Teodora's as well) is to make it better. In the
process we would need to clean up stuff that has gotten rusty over the years.

What we ask for is a discussion, so that we know what work is needed to
be done and what suggestions people have for us.

Thanks,
    Levente Kurusa
