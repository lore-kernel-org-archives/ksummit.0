Return-Path: <airlied@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD5D8C50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 22:40:02 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 700D07E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 22:40:02 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id f62-v6so9963073qke.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 15:40:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
	<20180917100413.22eac00d@coco.lan> <2072478.UYspZ1xLTN@avalon>
	<20180917115916.37fd5388@coco.lan>
In-Reply-To: <20180917115916.37fd5388@coco.lan>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 18 Sep 2018 08:39:48 +1000
Message-ID: <CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
To: mchehab+samsung@kernel.org
Content-Type: text/plain; charset="UTF-8"
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

> This is a valid point: whatever development process is used, drive-by
> contributors should be allowed to send e-mails without needing to subscribe
> (neither to a moderated list nor to a web-UI). I don't care how the
> maintainer will handle such patches, provided that they will be properly
> handled.
>
It really depends on what type of one-off contributor they are.

Setting up git send-email isn't trivial for everyone, if you are a
gmail user and work for a company that doesn't embrace smtp so much,
then having a webui and https git access will be a lot easier for
one-off contributions.

Beware of thinking our setup with email is in any way simple for a
newcomer to setup properly.

Dave.
