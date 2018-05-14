Return-Path: <ulf.hansson@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 354D82554
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 08:36:08 +0000 (UTC)
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 427F9196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 08:36:06 +0000 (UTC)
Received: by mail-io0-f194.google.com with SMTP id f21-v6so14216704iob.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 01:36:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180509204727.7ff38021@canb.auug.org.au>
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
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 14 May 2018 10:36:04 +0200
Message-ID: <CAPDyKFrhRtLUFfmNNg0iPtJ+Tj5ZzDq6EsYPFc=PY7CmqkFX-g@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 9 May 2018 at 12:47, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> On Wed, 9 May 2018 18:03:46 +0900 Mark Brown <broonie@kernel.org> wrote:
>>
>> On Wed, May 09, 2018 at 10:47:57AM +0200, Daniel Vetter wrote:
>> > On Wed, May 9, 2018 at 10:44 AM, Mark Brown <broonie@kernel.org> wrote:
>>
>> > > I think this is an excellent idea, copying in Stephen for his input.
>> > > I'm currently on holiday but unless someone convinces me it's a terrible
>> > > idea I'm willing to at least give it a go on a trial basis once I'm back
>> > > home.
>>
>> > Since Stephen merges all -fixes branches first, before merging all the
>> > -next branches, he already generates that as part of linux-next. All
>> > he'd need to do is push that intermediate state out to some
>> > linux-fixes branch for consumption by test bots.
>
> Good idea ... I will see what I can do.
>
>> True.  It's currently only those -fixes branches that people have asked
>> him to merge separately which isn't as big a proportion of trees as have
>> them (perhaps fortunately given people's enthusiasm for fixes branches
>> that don't merge cleanly with their development branches) so we'd also
>> need to encourage people to add them separately.
>
> I currently have 44 such fixes branches.  More welcome!

Great!

Stephen, thanks for picking up the idea so quickly!

I will ping the kernelci folkz to request them to include your new
fixes branch for daily builds.

For mmc, please add my fixes branch according to below.

git://git.kernel.org/pub/scm/linux/kernel/git/ulfh/mmc.git fixes

Kind regards
Uffe
