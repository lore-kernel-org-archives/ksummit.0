Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3439D25A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 00:16:24 +0000 (UTC)
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 01B87116
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 00:16:22 +0000 (UTC)
Received: by mail-oi0-f52.google.com with SMTP id f189so155640215oig.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 17:16:22 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CAPeXnHtDZFSiasopD4j9xUV856RjV=wSaTQBwS-tkYKonbnY0Q@mail.gmail.com>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<87inunxf14.fsf@ebb.org> <20160827162655.GB27132@kroah.com>
	<20160827230210.GA6717@jeremy-acer>
	<CA+55aFzE4agwAkbB_zv2oaAa3jsd=Q3MkB+1+J=XjsOoeUT1jA@mail.gmail.com>
	<CAPeXnHsTskZhwS6Ckp=xRzxbwax9FrMc5gRFmFmySY-Pq3KexA@mail.gmail.com>
	<CAPeXnHtqc5fYUV89H2E4g-SQmFNmc=3bj1NiCRVAWg=WoP0R7g@mail.gmail.com>
	<CAPeXnHt1WOTOLSK7jZk9FfUNYNf2i8-e9kzhmzmNdxCUXdK=bQ@mail.gmail.com>
	<CA+55aFwevwn6-jTRq3t80b6cw5-Emn1cTFai2-kSJLgZOYSQZA@mail.gmail.com>
	<CAPeXnHtDZFSiasopD4j9xUV856RjV=wSaTQBwS-tkYKonbnY0Q@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 27 Aug 2016 17:16:21 -0700
Message-ID: <CA+55aFxaivyPG3YWwU2j6m2Xsicmk-Ed2_qqkfkTw4ExokqucA@mail.gmail.com>
To: Matthew Garrett <mjg59@coreos.com>
Content-Type: text/plain; charset=UTF-8
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Aug 27, 2016 at 5:02 PM, Matthew Garrett <mjg59@coreos.com> wrote:
>
> OK. A vendor sells 500,000 network-connected devices running a version of
> Linux that has a vulnerability in the network driver that's discovered a
> year later. The hardware is custom, they refuse to release source, and
> they've discontinued the product line, so nobody else is able to fix it. Is
> it acceptable to engage in litigation in order to ensure that owners of
> these devices can receive a security update, even if by doing so we alienate
> the vendor and cause them to choose another kernel in future?

So why don't you name them and shame them very publicly and try
everything else first?

If the vendor still exists, and sells other devices, make a big stink
about it. It sounds like you've talked to them in private already, but
why do you still call them "a vendor" now when you start talking about
wanting to sue them?

Because without that, the answer is always going to be absolutely no,
simply because of the "absolute last option" thing.

And you talk about how you're helping users, but how many of them
would actually upgrade? Very few people end up upgrading firmware even
when it's automatic, much less so if it would mean that they'd switch
to OpenWRT or DD-WRT or something (since presumably the *existing*
firmware ends up having lots of non-GPL'd sources that you wouldn't
get even with a lawsuit)?

In other words, you say it is "for the users", but it still smells to
me like it's actually "for the lawsuit".

In practical terms, how would that help Linux?

I can understand being annoyed. I'm annoyed by bad companies too. But
I'm also saying that lawsuits aren't automatically the solution, and
you really have to ask yourself if it's worth it. And you have to do a
lot of other things first.

             Linus
