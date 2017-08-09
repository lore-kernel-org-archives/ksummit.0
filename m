Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AE358BE4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Aug 2017 20:06:37 +0000 (UTC)
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F3B64F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Aug 2017 20:06:37 +0000 (UTC)
Received: by mail-pf0-f193.google.com with SMTP id j68so7044727pfc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 09 Aug 2017 13:06:37 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20170804175353.GB13252@kroah.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
	<c2091a67-0a06-44ae-86e0-84879f3c7865@suse.com>
	<20170804160454.GC13098@kroah.com>
	<20170804171444.gv7ev6zhkj3bzf5u@thunk.org>
	<20170804175353.GB13252@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 9 Aug 2017 22:06:36 +0200
Message-ID: <CAMuHMdWtcMUA=C7Pe=QAY8AS-tjyxo357MEs_kb+_vZC9MAPDw@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 4, 2017 at 7:53 PM, Greg KH <greg@kroah.com> wrote:
> On Fri, Aug 04, 2017 at 01:14:44PM -0400, Theodore Ts'o wrote:
>> On Fri, Aug 04, 2017 at 09:04:54AM -0700, Greg KH wrote:
>> > We could start searching linux-next for new additions of sysfs files
>> > (search for the ATTR macros), and complain that there are no matching
>> > Documentation/ABI/ updates at the same time.  I try to do that when
>> > reviewing patches that come through my trees, but yes, this is hard to
>> > keep up to date with.
>> >
>> > Sounds like a good GSoC project though, setting up the infrastructure to
>> > do this in a semi-automated fashion.
>>
>> This sounds like an obvious thing to add to checkpatch?
>
> Probably, but lots of times this would be a false-positive as
> documentation shows up in a later patch in the series to make things
> easier to review.

On the sender side, checkpatch will work fine, as it works against your
current tree, which usually contains all patches from the series you've just
created.

On the receiver side, a different order will indeed cause false positives.
But usually you can catch people not having run checkpatch before sending
their patches by the presence of other checkpatch issues, so those can be
used as a canary to switch to "more thorough review mode".

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
