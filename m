Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 18585323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:43:31 +0000 (UTC)
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 846F71C0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:43:30 +0000 (UTC)
Received: by iggf3 with SMTP id f3so3038147igg.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 18:43:30 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CALCETrVpM6q-K+zyh1_FShQBjrY6DoE8Aj4UeeT4q2FhOAn70A@mail.gmail.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150714104623.GQ11162@sirena.org.uk>
	<55A51548.4040502@oracle.com>
	<20150714152515.GX11162@sirena.org.uk>
	<55A52B8B.5060606@oracle.com>
	<20150714113829.4b618d9a@gandalf.local.home>
	<55A53074.7040109@oracle.com>
	<20150714120225.65e489cc@gandalf.local.home>
	<55A5635D.1020600@oracle.com> <20150715114946.481f154d@noble>
	<55A5C0EE.3060803@oracle.com> <20150715122802.56ca2100@noble>
	<1436955234.31121.25.camel@HansenPartnership.com>
	<20150716092410.22d0af07@noble>
	<CALCETrVpM6q-K+zyh1_FShQBjrY6DoE8Aj4UeeT4q2FhOAn70A@mail.gmail.com>
Date: Wed, 15 Jul 2015 18:43:29 -0700
Message-ID: <CA+55aFyKq4wU9dx8EyrTtKkFEykF1GUqyonRjsx4f2jvZZxigg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 15, 2015 at 6:05 PM, Andy Lutomirski <luto@amacapital.net> wrote:
>
> As of today, I'm much less convinced that -next is suitable for this
> purpose.  I have a really dumb, blatant, obvious regression sitting in
> -next right now, and it's been there for a couple of weeks with no one
> spotting it.  The 0-day bot didn't spot it either (and yes, I emailed
> Fengguang suggesting another test for the bot).

I think -next is supremely useful, but let's not kid ourselves: it's
useful because it catches compile problems (particularly on odd
architectures) and integration issues.

Very few people actually *run* linux-next. At best, it gets some
boot-testing on a farm or two. Maybe one or two brave souls actually
run it on their own machines (I think Andrew may, for example). But
that's it.

I suspect that (possibly with the exception of the merge window)
keeping bugfixes in -next for a few days is more likely to *delay*
testing than it is to make it better. I suspect a lot more people run
my -git trees than run -next.

So I don't think -next is a panacea for testing. Not at all. It is
very good for what it does, but I don't think people should believe
that "testing" is what it does.

                  Linus
