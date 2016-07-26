Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5906994D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 21:00:50 +0000 (UTC)
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B42D5ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 21:00:49 +0000 (UTC)
Received: by mail-qt0-f175.google.com with SMTP id u25so18631495qtb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 14:00:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469544015.120686.324.camel@infradead.org>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578EF192.3050808@huawei.com>
	<CALCETrUbuQjEAettvDStqEophng+1TNGDpueWDJ4QWLqiyaQ2w@mail.gmail.com>
	<028967b8-6107-9d9c-453a-a7f25e967f70@suse.com>
	<1469097065.120686.124.camel@infradead.org>
	<CALCETrWKk8sLvgXwzu1RQnZRQ7f1f-+p53iJ7yasp_=zTnFDHQ@mail.gmail.com>
	<1469544015.120686.324.camel@infradead.org>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 26 Jul 2016 14:00:29 -0700
Message-ID: <CALCETrUh9H+7a7Qoi-rbLztOSWg_Po0m6kH7GhKmqvJ+bVB6QQ@mail.gmail.com>
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

On Tue, Jul 26, 2016 at 7:40 AM, David Woodhouse <dwmw2@infradead.org> wrote:
> On Thu, 2016-07-21 at 08:05 -0700, Andy Lutomirski wrote:
>> On Thu, Jul 21, 2016 at 3:31 AM, David Woodhouse <dwmw2@infradead.org> wrote:
>> > On Thu, 2016-07-21 at 07:59 +0200, Hannes Reinecke wrote:
>> > > > If we do all this stuff, can we also try to clean up earlyprintk a
>> > > > bit?  The whole earlyconsole mechanism is a mess, and switching over
>> > > > to the non-early console is only somewhat functional.  I'd love to see
>> > > > this all simplified: before there's any console at all available, just
>> > > > buffer messages.  Then, when a console shows up, write the buffer out.
>> > > > Then earlyprintk can work just like regular printk.
>> > > >
>> > > Begging the question how one would debug failures during that time.
>> > > The current earlyprintk stuff is at least able to print out _something_,
>> > > so that you have some idea what went wrong.
>> > > Without that things will become _really_ hard during board bringup.
>> >
>> > No, you don't actually *delay* the console output. You still register
>> > the console as soon as you physically can, but you just don't have all
>> > that nasty special-casing of the "earlyprintk" nonsense; you just make
>> > sure the standard console output is capable of working as early as you
>> > need it to.
>>
>> Agreed.
>>
>> If we could convince fbcon to work early (which it really ought to),
>
> We had bootx on PowerPC which worked from extremely early.
>
>> But doing this really nicely does tie in to the async printk
>> discussion for a different reason.  I think that we should always
>> initialize the obvious "early" consoles that can be cleanly enumerated
>> early (e.g. EFI).  What we shouldn't do by default is *display*
>> anything to them unless we crash, because the distro people want a
>> clean boot to look pretty.  ISTM the condition for flushing the async
>> printk buffers could be the same as the condition for actually writing
>> to pre-VT consoles.
>
> Me no like.
>
> That makes even *less* sense for early boot than it does during later
> runtime. Because even *more* of the 'we crash' scenarios during early
> boot are going to be uncontrolled "oh shit" happenings, not "oh dear,
> it looks like we're going to crash so let's helpfully dump out all the
> console messages before we do so".

I only meant in the cases where we're currently silent.  If we boot
with "quiet" and we panic, couldn't we at least try to flush out the
printk buffer onto the early console?  Currently we just sit there
with a blank screen.  (I debugged a case exactly like that last week.)

--Andy
