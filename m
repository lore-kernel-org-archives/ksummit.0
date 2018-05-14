Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF7401832
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 08:29:06 +0000 (UTC)
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1D850189
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 08:29:06 +0000 (UTC)
Received: by mail-vk0-f66.google.com with SMTP id g83-v6so6924365vkc.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 01:29:06 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20180514101237.5df1e0d7@bbrezillon>
References: <20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<nycvar.YFH.7.76.1805101802150.27054@cbobk.fhfr.pm>
	<20180510164722.GH8514@sasha-vm>
	<CAMuHMdWDNjsba29id4Svjy_tauKivWDUixub3qf82Nx_6rYueA@mail.gmail.com>
	<CAMuHMdUHK=kmJB-=G-Y7YEneZityMzi5YZ3nJFD6uCs61bOaiQ@mail.gmail.com>
	<20180514101237.5df1e0d7@bbrezillon>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 14 May 2018 10:29:04 +0200
Message-ID: <CAMuHMdWQTOioXPmWX+_jetECpp9=SCK_BfWq9kJ7xj3WTnB_ng@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@bootlin.com>
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

Hi Boris,

On Mon, May 14, 2018 at 10:12 AM, Boris Brezillon
<boris.brezillon@bootlin.com> wrote:
> On Mon, 14 May 2018 10:00:30 +0200
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>> On Tue, May 1, 2018 at 10:00 PM, Sasha Levin
>> <Alexander.Levin@microsoft.com> wrote:
>> > On Tue, May 01, 2018 at 03:44:50PM -0400, Theodore Y. Ts'o wrote:
>> >>On Tue, May 01, 2018 at 04:38:21PM +0000, Sasha Levin wrote:
>> > What's worse is that that commit is tagged for stable, which means
>> > that (given Greg's schedule) it may find it's way to -stable users
>> > even before some -next users/bots had a chance to test it out.
>>
>> I just noticed a case where a commit was picked up for stable, while a
>> bot had flagged it as a build regression 18 hours earlier (with a CC to
>> lkml).
>
> Also, this patch has been on a tree that I know is tested by Fengguang's
> robots for more than a week (and in linux-next for 2 days, which, I
> agree, is probably not enough), and still, I only received the bug
> report when the patch reached mainline. Are there tests that are only
> run on Linus' tree?

Have your received a success report from Fengguang's bot, listing all
configs tested (the broken one should be included; it is included in the
configs tested on my branches)?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
