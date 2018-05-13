Return-Path: <andy.shevchenko@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F080D31
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 13 May 2018 13:53:36 +0000 (UTC)
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C4822189
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 13 May 2018 13:53:35 +0000 (UTC)
Received: by mail-qt0-f194.google.com with SMTP id e8-v6so12988592qth.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 13 May 2018 06:53:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180512143809.7c6a06ab@canb.auug.org.au>
References: <CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm> <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<20180509090346.GY13402@sirena.org.uk>
	<20180509204727.7ff38021@canb.auug.org.au>
	<20180512143809.7c6a06ab@canb.auug.org.au>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID: <CAHp75Vf4-MAODmGUwK1CfqbRs3gMjw3ysn97i27u3ms60ddPjg@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
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
Date: Sun, 13 May 2018 13:53:36 -0000

On Sat, May 12, 2018 at 7:38 AM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> Hi all,
>
> On Wed, 9 May 2018 20:47:27 +1000 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>>
>> On Wed, 9 May 2018 18:03:46 +0900 Mark Brown <broonie@kernel.org> wrote:
>> >
>> > On Wed, May 09, 2018 at 10:47:57AM +0200, Daniel Vetter wrote:
>> > > On Wed, May 9, 2018 at 10:44 AM, Mark Brown <broonie@kernel.org> wrote:
>> >
>> > > > I think this is an excellent idea, copying in Stephen for his input.
>> > > > I'm currently on holiday but unless someone convinces me it's a terrible
>> > > > idea I'm willing to at least give it a go on a trial basis once I'm back
>> > > > home.
>> >
>> > > Since Stephen merges all -fixes branches first, before merging all the
>> > > -next branches, he already generates that as part of linux-next. All
>> > > he'd need to do is push that intermediate state out to some
>> > > linux-fixes branch for consumption by test bots.
>>
>> Good idea ... I will see what I can do.
>
> See my announcement of a pending-fixes branch in linux-next (on LKML
> and others)
>
>> I currently have 44 such fixes branches.  More welcome!
>
> We are up to 55.

For PDx86 we have

git://git.infradead.org/linux-platform-drivers-x86.git fixes

branch

-- 
With Best Regards,
Andy Shevchenko
