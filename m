Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 47BCB83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 22:18:01 +0000 (UTC)
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A1415B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 22:18:00 +0000 (UTC)
Received: by mail-yw0-f171.google.com with SMTP id z8so185749665ywa.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 15:18:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF053B96B4@USCULXMSG02.am.sony.com>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<1469533716.120686.281.camel@infradead.org>
	<alpine.DEB.2.10.1607271439250.3117@hadrien>
	<1469625916.27356.18.camel@HansenPartnership.com>
	<1469626423.120686.408.camel@infradead.org>
	<ECADFF3FD767C149AD96A924E7EA6EAF053B96B4@USCULXMSG02.am.sony.com>
From: Rob Herring <robherring2@gmail.com>
Date: Mon, 1 Aug 2016 17:17:39 -0500
Message-ID: <CAL_Jsq+dodMDAS4M=CZxjbB5gU7+qUT0XEKgeDQeGN_u4SYkwg@mail.gmail.com>
To: "Bird, Timothy" <Tim.Bird@am.sony.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 27, 2016 at 12:21 PM, Bird, Timothy <Tim.Bird@am.sony.com> wrote:
>
>
>> -----Original Message-----
>> From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
>> discuss-bounces@lists.linuxfoundation.org] On Behalf Of David Woodhouse
>> Sent: Wednesday, July 27, 2016 5:34 AM
>> To: James Bottomley <James.Bottomley@HansenPartnership.com>; Julia Lawall
>> <julia.lawall@lip6.fr>
>> Cc: ksummit-discuss@lists.linuxfoundation.org
>> Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
>> kernel
>>
>> On Wed, 2016-07-27 at 09:25 -0400, James Bottomley wrote:
>> > On Wed, 2016-07-27 at 14:40 +0200, Julia Lawall wrote:
>> > >
>> > > On Tue, 26 Jul 2016, David Woodhouse wrote:
>> > >
>> > > > On Fri, 2016-07-22 at 15:57 +0200, Hannes Reinecke wrote:
>> > > > >
>> > > > > > I guess that almost all functions return only a few possible
>> > > > > > error codes?
>> > > > >
>> > > > > Precisely. If we had a way of specifying "the return value is an
>> > > > > errno with the possible values '0', '-EIO', and '-EINVAL'" that
>> > > > > would be _so_ cool.
>> > > >
>> > > > And perpetually out of date. Because functions call through to
>> > > > *other* functions which might return an errno outside the 'known'
>> > > > set.
>> > >
>> > > If you have a script to calculate it, it doesn't have to be
>> > > perpetually out of date.  The problem is just the time to collect the
>> > > information for the whole kernel.  It could be a good intern project.
>> >
>> > It's a lot of pain, for what gain?  What, practically would we get as a
>> > benefit if we did this?  Every time I see proposals about scripting
>> > checks in the kernel, I'm reminded of our section mismatch debacle.
>> >  Life is so much easier without every kernel release generating 100s of
>> > patches trying to correct section mismatches which didn't matter in the
>> > first place ...
>>
>> To find functions where the -errno returns might be ambiguous with real
>> valid return values, might be beneficial. If it doesn't have too many
>> false positives.
>
> It might be useful to have a list of possible errno generation points, for a particular routine,
> to make it easier to find the origin of a problem.  Sometimes when you're unfamiliar with
> some bit of code, manually walking back through the call chain in the source is a hassle.
> I'm reminded of that trick where someone (I don't recall who) embedded the line number
> in the errno.

I'd be interested if you could find what you are referring to. I would
love to see something better here than my printk debugger. A list of
possible errnos would help some, but I'd expect we typically have
multiple called functions returning the same possible errnos, so you'd
still be narrowing down the source manually. Debugging that probe of a
driver failed because of a config option not being enabled is painful.
Maybe I'm the only one that switches between boards/kernels a lot and
does a poor job maintaining working configs.

Wouldn't something as simple as turning all the errno's into backtrace
printks or tracepoints be doable. It might have to be enabled on
probe() entry to avoid any "normal" errors. Any code that initializes
the return value with an error would be a false positive. A major
benefit to something like this is it could get rid of lots of error
path printks in drivers that bloat the kernel.

Rob
