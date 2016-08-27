Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E958B258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 23:49:55 +0000 (UTC)
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 37249AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 23:49:55 +0000 (UTC)
Received: by mail-oi0-f42.google.com with SMTP id l203so155492718oib.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 16:49:55 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CAPeXnHt1WOTOLSK7jZk9FfUNYNf2i8-e9kzhmzmNdxCUXdK=bQ@mail.gmail.com>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<87inunxf14.fsf@ebb.org> <20160827162655.GB27132@kroah.com>
	<20160827230210.GA6717@jeremy-acer>
	<CA+55aFzE4agwAkbB_zv2oaAa3jsd=Q3MkB+1+J=XjsOoeUT1jA@mail.gmail.com>
	<CAPeXnHsTskZhwS6Ckp=xRzxbwax9FrMc5gRFmFmySY-Pq3KexA@mail.gmail.com>
	<CAPeXnHtqc5fYUV89H2E4g-SQmFNmc=3bj1NiCRVAWg=WoP0R7g@mail.gmail.com>
	<CAPeXnHt1WOTOLSK7jZk9FfUNYNf2i8-e9kzhmzmNdxCUXdK=bQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 27 Aug 2016 16:49:53 -0700
Message-ID: <CA+55aFwevwn6-jTRq3t80b6cw5-Emn1cTFai2-kSJLgZOYSQZA@mail.gmail.com>
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

On Sat, Aug 27, 2016 at 4:30 PM, Matthew Garrett <mjg59@coreos.com> wrote:
>
> Can you clarify whether or not you believe that source availability for
> owners of devices that run Linux (even if the vendor chooses not to
> participate upstream) is something you consider to be good for the project?

That question makes no sense.

Without an actual case, and without being able to judge the upsides
*AND* downsides, your question is just silly.

You have clearly shown that you don't care about downsides.  You don't
seem to think it matters that yes, companies get very antsy about
lawsuits even when they _themselves_ are not the target.

Because yes, I know for a *fact* that some companies stopped using
BusyBox just because of the lawsuits. They weren't targeted, they
weren't misusing it, they just decided that "it's a litigious project,
it's simply not worth the risk".

And what is the source you would get available? Is it just the
standard kernel sources? To be good to the project, there needs to be
a point to the lawsuit - not just some technicality.

For example, there's a number of fly-by (mainly Chinese) companies
that really seem to just put Linux on their devices and churn out
one-offs. What does the project get from going after such a company
that didn't even modify the source code, or made some silly one-liner
things?

I know that some people are absolutely *itching* to see how copyright
actually works in China, and I don't doubt for a second that there
would be cases there if you want it for a test case.

But is there something really interesting going on? Or did you just
want a test-case in China (or wherever)? Or was there just a
proprietary module that you didn't like and you try to make a derived
work on despite our years of accepting them?

These are questions that a person who cares about the *project* should ask.

Your questions seem to be questions that are asked by somebody who
cares about compliance first.

See the difference?

            Linus
