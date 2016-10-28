Return-Path: <mcgrof@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 978BD892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Oct 2016 21:25:30 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E3D7157
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Oct 2016 21:25:30 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id 6278A20453
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Oct 2016 21:25:29 +0000 (UTC)
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 71C0F20411
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Oct 2016 21:25:27 +0000 (UTC)
Received: by mail-vk0-f42.google.com with SMTP id x186so5949773vkd.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Oct 2016 14:25:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161028212310.GA25668@kroah.com>
References: <CAB=NE6XscoaYq7_0wbEtgdGZt-duhMb6a-o8O+09FrJRy9EkLQ@mail.gmail.com>
	<20161028212310.GA25668@kroah.com>
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Fri, 28 Oct 2016 14:25:05 -0700
Message-ID: <CAB=NE6XzjMJKkJ8Fyocs-9HNpsouH0M2immu9e7uUfp55a6bHw@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: Jiri Kosina <jkosina@suse.cz>, Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Fri, Oct 28, 2016 at 2:23 PM, Greg KH <greg@kroah.com> wrote:
> On Fri, Oct 28, 2016 at 02:16:59PM -0700, Luis R. Rodriguez wrote:
>> Having some generic device driver load, prior to a specific driver,
>> and issues / maintenance issues that come with the hacks currently in
>> place to support this / re-invent the wheel to support this per
>> subsystem.
>
> We have hacks for this today?  What do you mean by this, quirks?

The thread in question was rather huge, this was just *one* of the
topics that came up, and I was not the one who brought it up.

> People have been talking about this since the 2.4 days, but I have yet
> to see any code for it.  I'd love to see something be proposed, with
> code, but note, you need to be aware of why it's been only talked about
> for that long without any code being written :)

Ah I see..

> Why can't this be done in email?

Perhaps, and if so then saves us time.

 Luis
