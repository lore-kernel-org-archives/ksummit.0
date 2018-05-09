Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 323B5728
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 08:51:49 +0000 (UTC)
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9CD3918A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 08:51:48 +0000 (UTC)
Received: by mail-vk0-f67.google.com with SMTP id i185-v6so16180145vkg.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 09 May 2018 01:51:48 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
References: <20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm> <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 9 May 2018 10:51:46 +0200
Message-ID: <CAMuHMdXKEjJNnstJd6C+QOOi6DA0hq+DRC=PhZ8aP-sDR_5+8w@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 9, 2018 at 10:47 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Wed, May 9, 2018 at 10:44 AM, Mark Brown <broonie@kernel.org> wrote:
>> On Fri, May 04, 2018 at 04:21:26PM +0200, Ulf Hansson wrote:
>>> Then, why don't we have a pre-integration tree for fixes? That would
>>> at least simply automated testing of fixes separately from new
>>> material.
>>
>>> Perhaps this has already been discussed, and concluded and it's not
>>> worth it, then apologize for my ignorance.
>>
>> I think this is an excellent idea, copying in Stephen for his input.
>> I'm currently on holiday but unless someone convinces me it's a terrible
>> idea I'm willing to at least give it a go on a trial basis once I'm back
>> home.
>
> Since Stephen merges all -fixes branches first, before merging all the
> -next branches, he already generates that as part of linux-next. All
> he'd need to do is push that intermediate state out to some
> linux-fixes branch for consumption by test bots.

+1

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
