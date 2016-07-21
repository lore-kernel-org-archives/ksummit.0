Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 007F2884
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 15:06:06 +0000 (UTC)
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14FB6A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 15:06:04 +0000 (UTC)
Received: by mail-vk0-f46.google.com with SMTP id x130so117597136vkc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 08:06:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469097065.120686.124.camel@infradead.org>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578EF192.3050808@huawei.com>
	<CALCETrUbuQjEAettvDStqEophng+1TNGDpueWDJ4QWLqiyaQ2w@mail.gmail.com>
	<028967b8-6107-9d9c-453a-a7f25e967f70@suse.com>
	<1469097065.120686.124.camel@infradead.org>
From: Andy Lutomirski <luto@amacapital.net>
Date: Thu, 21 Jul 2016 08:05:43 -0700
Message-ID: <CALCETrWKk8sLvgXwzu1RQnZRQ7f1f-+p53iJ7yasp_=zTnFDHQ@mail.gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 21, 2016 at 3:31 AM, David Woodhouse <dwmw2@infradead.org> wrote:
> On Thu, 2016-07-21 at 07:59 +0200, Hannes Reinecke wrote:
>> > If we do all this stuff, can we also try to clean up earlyprintk a
>> > bit?  The whole earlyconsole mechanism is a mess, and switching over
>> > to the non-early console is only somewhat functional.  I'd love to see
>> > this all simplified: before there's any console at all available, just
>> > buffer messages.  Then, when a console shows up, write the buffer out.
>> > Then earlyprintk can work just like regular printk.
>> >
>> Begging the question how one would debug failures during that time.
>> The current earlyprintk stuff is at least able to print out _something_,
>> so that you have some idea what went wrong.
>> Without that things will become _really_ hard during board bringup.
>
> No, you don't actually *delay* the console output. You still register
> the console as soon as you physically can, but you just don't have all
> that nasty special-casing of the "earlyprintk" nonsense; you just make
> sure the standard console output is capable of working as early as you
> need it to.

Agreed.

If we could convince fbcon to work early (which it really ought to),
then we could get rid of the extra graphical console implementations
floating around, e.g. the mediocre one sitting in the earlyefi console
code.  We could also get rid of the handover problem when we
initialize the "real" efifb -- all we'd have to do is initialize efifb
very, very early, and I see no reason at all that we can't do that.
(Well, I see one silly reason: if we initialize it before PAT, then we
could end up with a UC mapping instead of WC, and I'm not sure that
the x86 PAT code is smart enough to change the mapping type after the
fact.  This could relatively easily be special-cased for efifb by
teaching it to unmap and remap itself after PAT init, or we could try
to initialize PAT earlier.)

But doing this really nicely does tie in to the async printk
discussion for a different reason.  I think that we should always
initialize the obvious "early" consoles that can be cleanly enumerated
early (e.g. EFI).  What we shouldn't do by default is *display*
anything to them unless we crash, because the distro people want a
clean boot to look pretty.  ISTM the condition for flushing the async
printk buffers could be the same as the condition for actually writing
to pre-VT consoles.

--Andy
