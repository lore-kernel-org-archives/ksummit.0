Return-Path: <jmforbes@linuxtx.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97C68A47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 13:58:21 +0000 (UTC)
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 233E2637
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 13:58:21 +0000 (UTC)
Received: by mail-it0-f45.google.com with SMTP id e20-v6so16471939itc.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 08 May 2018 06:58:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180508023439.GA8514@sasha-vm>
References: <20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm> <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm>
From: Justin Forbes <jmforbes@linuxtx.org>
Message-ID: <CAFxkdAqEK3Kv1Q8Jy4KZ7AHPXAA7ux6CYsQ4m6grKwFGwzNrXQ@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Tue, 08 May 2018 13:58:21 -0000

On Mon, May 7, 2018 at 9:34 PM, Sasha Levin
<Alexander.Levin@microsoft.com> wrote:
> On Thu, May 03, 2018 at 04:09:05PM -0700, Tony Lindgren wrote:
>>* Mark Brown <broonie@kernel.org> [180503 22:44]:
>>> On Wed, May 02, 2018 at 08:52:29PM -0700, Guenter Roeck wrote:
>>>
>>> > As for -next, me and others stopped reporting bugs in it, because when we do
>>> > we tend to get flamed for the "noise". Is anyone aware (or cares) that mips
>>> > and nds32 images don't build ? Soaking clothes in an empty bathtub won't make
>>> > them wet, and bugs in code which no one builds, much less tests or uses, won't
>>> > be found.
>>>
>>> You've been flamed for testing -next?  That's not been my experience and
>>> frankly it's pretty horrifying that it's happening.  Testing is pretty
>>> much the whole point of -next existing in the first place so you have to
>>> wonder why people are putting their trees there if they don't want
>>> testing.  I have seen a few issues with people reporting bugs on old
>>> versions of -next but otherwise...
>>
>>Yes I agree testing Linux next is very important. That's the best way for
>>maintainers to ensure a usable -rc1 after a merge window. And then for
>>the -rc cycle, there not much of need for chasing bugs to get things working.
>>
>>Bugs reported for Linux next often seem to get fixed or reverted faster
>>compared to the -rc cycle too. I think that's because people realize that
>>their code will not get merged until it's been fixed.
>>
>>So some daily testing of Linux next can save a lot scrambling after the
>>merge window :)
>>
>>Users don't usually upgrade kernels until after later -rc releases or only
>>after major releases so that probably explains some of the -rc cycle fixes.
>
> Tony, I'm curious, how many users are you aware of who actually run
> Linus's tree? All the users I've encountered so far on Azure seem to be
> running something based on -stable.

I couldn't tell you the number of users we have running rawhide
kernels (daily builds of Linus's tree), but it is a positive integer.
We do get bug reports on things, sometimes a day after Linus commits
them.

>
> I can't really get any solid statistics about that on my end both
> because I don't have visibility inside user VMs (I don't actually have
> prod access believe it or not), and even if I had it would probably be
> confidential, so I'm just basing this on reports from user's I've seen
> so far.
>
> I think that a question we should be asking ourselves is whether we
> should be basing our decisions here on the assumption that (pretty much)
> no one runs Linus's tree anymore?
