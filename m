Return-Path: <ulf.hansson@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E585729
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 14:21:28 +0000 (UTC)
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5AF56F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 14:21:28 +0000 (UTC)
Received: by mail-io0-f176.google.com with SMTP id d73-v6so25828422iog.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 04 May 2018 07:21:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180503230905.GA98604@atomide.com>
References: <20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm> <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 4 May 2018 16:21:26 +0200
Message-ID: <CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
To: Tony Lindgren <tony@atomide.com>, Mark Brown <broonie@kernel.org>,
	Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Tony, Sasha, Mark

On 4 May 2018 at 01:09, Tony Lindgren <tony@atomide.com> wrote:
> * Mark Brown <broonie@kernel.org> [180503 22:44]:
>> On Wed, May 02, 2018 at 08:52:29PM -0700, Guenter Roeck wrote:
>>
>> > As for -next, me and others stopped reporting bugs in it, because when we do
>> > we tend to get flamed for the "noise". Is anyone aware (or cares) that mips
>> > and nds32 images don't build ? Soaking clothes in an empty bathtub won't make
>> > them wet, and bugs in code which no one builds, much less tests or uses, won't
>> > be found.
>>
>> You've been flamed for testing -next?  That's not been my experience and
>> frankly it's pretty horrifying that it's happening.  Testing is pretty
>> much the whole point of -next existing in the first place so you have to
>> wonder why people are putting their trees there if they don't want
>> testing.  I have seen a few issues with people reporting bugs on old
>> versions of -next but otherwise...
>
> Yes I agree testing Linux next is very important. That's the best way for
> maintainers to ensure a usable -rc1 after a merge window. And then for
> the -rc cycle, there not much of need for chasing bugs to get things working.
>
> Bugs reported for Linux next often seem to get fixed or reverted faster
> compared to the -rc cycle too. I think that's because people realize that
> their code will not get merged until it's been fixed.
>
> So some daily testing of Linux next can save a lot scrambling after the
> merge window :)
>
> Users don't usually upgrade kernels until after later -rc releases or only
> after major releases so that probably explains some of the -rc cycle fixes.

I fully agree with above, linux-next works very nicely as a
pre-integration tree, however for *both* fixes and new material.

I guess the concern here is about getting more confidence about pure
fixes, before they hit Linus' tree or any other stable tree. Although
without having to introduce delays or additional work for maintainers
etc.

Then, why don't we have a pre-integration tree for fixes? That would
at least simply automated testing of fixes separately from new
material.

Perhaps this has already been discussed, and concluded and it's not
worth it, then apologize for my ignorance.

Kind regards
Uffe
