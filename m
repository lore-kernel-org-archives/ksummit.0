Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CFA29AB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 20:16:15 +0000 (UTC)
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BCED0201AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 20:16:13 +0000 (UTC)
Received: by mail-ve0-f178.google.com with SMTP id jx11so591864veb.23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 13:16:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 11 Jun 2014 13:15:52 -0700
Message-ID: <CALCETrWRZgee9-yQNv5UBoAMcwsEEJV-qWUVS8HdLkHZHWdmNA@mail.gmail.com>
To: Christoph Lameter <cl@gentwo.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Redesign Memory Management layer
 and more core subsystem
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 11, 2014 at 12:03 PM, Christoph Lameter <cl@gentwo.org> wrote:
>
> 3. Allocation "Zones". These are problematic because the zones often do
> not reflect the capabilities of devices to allocate in certain ranges.
> They are used for other purposes like MOVABLE pages but then the pages are
> not really movable because they are pinnned for other reasons. Argh.
>

What if you just couldn't sleep while you have a MOVABLE page pinned?
Or what if you had to pin it and provide a callback to forcibly unpin
it?  This would complicate direct IO and such, but it would make
movable pages really movable.  It would also solve an annoyance with
the sealing thing: the sealing code wants to take writable pages and
make them really readonly.  This interacts very badly with existing
pins.

We have IOMMU in many cases.  Would it be so bad to say that direct IO
is only really direct if there's an IOMMU?

--Andy
