Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 779F898F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 20:24:57 +0000 (UTC)
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 73E151FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 20:24:55 +0000 (UTC)
Received: by mail-ie0-f178.google.com with SMTP id rd18so97043iec.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 13:24:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140514200043.GA2516@linux.com>
References: <20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <53739333.30108@zytor.com>
	<20140514185449.GB4475@jtriplet-mobl1>
	<20140514200043.GA2516@linux.com>
Date: Wed, 14 May 2014 22:24:54 +0200
Message-ID: <CAKMK7uE5F+_kwtRKjkjbr0d+-r8VjVD7UD5b1rGizhkfCVRkxQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Levente Kurusa <levex@linux.com>
Content-Type: text/plain; charset=UTF-8
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Anton Arapov <arapov@gmail.com>, David Herrmann <dh.herrmann@gmail.com>,
	Sarah A Sharp <sarah@minilop.net>
Subject: Re: [Ksummit-discuss] Fwd: [TECH TOPIC] QR encoded oops for the
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 14, 2014 at 10:00 PM, Levente Kurusa <levex@linux.com> wrote:
> On Wed, May 14, 2014 at 11:54:49AM -0700, Josh Triplett wrote:
>> On Wed, May 14, 2014 at 09:00:51AM -0700, H. Peter Anvin wrote:
>> > On 05/13/2014 12:08 AM, Josh Triplett wrote:
>> > >
>> > > Many users will already have a QR-code scanning app installed, and such
>> > > apps always support loading URLs in a browser.
>> > >
>> >
>> > Let me disavow you of the notion that stock scanning apps handle large
>> > QR symbols.
>>
>> That's certainly true.  On the other hand, I'd really like to see a
>> version of the oops-as-QR-code bits that uses VGA block characters to
>> work in non-graphics, non-framebuffer mode, which would require fitting
>> in at most 80x50 (using the half-block characters).  That wouldn't allow
>> nearly as much data, but likely enough for a somewhat useful crash
>> report, especially in aggregate.
>
> Not really possible, from my experiences the QR code that results from
> a random oops is ranging from 100x100 to 150x150 depending on the size
> of stack trace and stuff like that. Of course, we can decrease the
> error recovery region and that might make it smaller. I'll take a look
> at this a bit later. If that doesn't work, then that means that we can't
> shuffle that into the textmode's 80x25. Not to mention that the block
> characters in the ASCII table (I think you meant that, if not please
> correct me) are not neccessarily square, which is needed for maximum
> scannability.
>
> One thing that we currently support and can be a solution is Micro QR
> code. It removes two of the three coordinators and does some more
> compression AFAIK. It might be possible to shuffle that into textmode.
>
> I as well would love to support QR codes in textmode, but I think that
> it's really not possible at the moment.

David Herrman is working on some new infrastructure for emergency log
services on top of drm/kms drivers since we really, really want to
move away from the horrors called fbcon. His design is fairly neat and
there shouldn't be that big an issue with replacing the current
character-painting code he has with some oops-painting code. Adding
him to the discussion so he can point at some of the patches.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
