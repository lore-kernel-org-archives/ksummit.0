Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 10397FF6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Sep 2018 23:13:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0165.hostedemail.com
	[216.40.44.165])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 6993A1DAA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Sep 2018 23:13:51 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id A422D1802EF38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Sep 2018 16:05:20 +0000 (UTC)
Message-ID: <ec05f919f2738def41fbb28a8a51e9d5fbd21d38.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Alexandre Belloni
	<alexandre.belloni@bootlin.com>
Date: Fri, 21 Sep 2018 09:05:15 -0700
In-Reply-To: <CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Tue, 2018-09-11 at 17:02 +0200, Daniel Vetter wrote:
> - Talk about the maintainer. If no one wants to help out, but it's a
> generally active area, there's a problem. Fairly often it's a human
> problem, and the maintainer is blind to their own short-comings. This
> is very tricky, and requires enormous amounts of empathy and time, but
> can be rectified.

Somewhat dubious assertion.  Perhaps more often it is a
generally active but somewhat isolated subsystem that few
take an interest in.

> Looking at drivers/rtc over the past 2-3 years it seems like a
> decently active subsystem. Probably on the small side of things, but
> not catastrophically so. But looking at contributor stats the picture
> is totally different:
> 
>    241  Alexandre Belloni
>     28  Linus Torvalds
>     27  Arnd Bergmann
>     25  Javier Martinez Canillas
>     20  Uwe Kleine-König
> 
> That kind of skewed contribution statistics is indeed not sustainable,
> and indicates some serious problem imo.

It's not necessarily serious.

A single active maintainer is well capable of maintaining
a subsystem as long as it's somewhat contained.

It is curious though that one of the nominal maintainers,
Alessandro Zummo, has not signed any single commit since
2015 though.

> What exactly goes wrong, and
> how to best fix it I can't tell without more information though. From
> my experience in drm, where we also have some areas with highly skewed
> contribution statistics, it could be the maintainer driving people
> away, ensuring that there's only one-off contributions. Usually
> unkowningly.

Possible, but one-off contributions skew noisily today to
trivial whitespace and checkpatch/clang warning updates.

It generally requires an advanced knowledge of a subsystem
to be able to make substantive or even non-trivial changes.
