Return-Path: <jmforbes@linuxtx.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1B34F49D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 21:26:06 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 73E67299
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 21:26:05 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id n202-v6so17944740ita.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 08 May 2018 14:26:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180508205505.GD8514@sasha-vm>
References: <20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
	<20180508202912.GC8514@sasha-vm>
	<CAFhKne-aDcMKD8FjfROGZ-=ffmq3Xa+7n0dm8uvzKJ_7WO-qCQ@mail.gmail.com>
	<20180508205505.GD8514@sasha-vm>
From: Justin Forbes <jmforbes@linuxtx.org>
Message-ID: <CAFxkdAow8=tK86c=AtkWhhzy_iE_sNX0uUGY+xjLC=njvBynBQ@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
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
Date: Tue, 08 May 2018 21:26:06 -0000

On Tue, May 8, 2018 at 3:55 PM, Sasha Levin
<Alexander.Levin@microsoft.com> wrote:
> On Tue, May 08, 2018 at 08:40:02PM +0000, Matthew Wilcox wrote:
>>I think your sample size omits some people. I run Debian Testing on my
>>laptop. That gets something akin to a Linus release pretty soon after he
>>releases it, and while it gets some amount of -stable patches, it
>>progresses to the next release fairly rapidly.
>
> Debian testing is pretty much a -stable tree, see the git log history:
>
> https://salsa.debian.org/kernel-team/linux/commits/sid
>
> It follows a current stable tree, and moves on to the next one once it's
> available (about a week after Linus releases a new kernel).
>
>>Added Ben to the cc for more updates.
>>
>>I think Fedora does something similar.
>
> Fedora's rawhide is just (daily?) builds of Linus's tree, they don't
> care what stage the tree is in at any point.

It is, but there is a branch point when Linus releases. If we are
working on a new Fedora release, such as F28, all testing stayed on
4.16.0 until stable updates were released. If there is no release
deadline nearing, we have a "stabilization" repository where people
are using and testing the .0 release until stable updates happen. In
either case, the Linus release is really only tested until the stable
.1 happens, but there are users and testers of .0.

>
> My point is that no one picks a release and sticks with it more than a
> week. If someone plans to use a release for longer term they use a
> -stable tree, and if they are interested in testing, they move on to the
> next release once it's available.
>
> There's no one, for example, who picked up vanilla v4.16 and plans to
> keep using it for a year.
>
> This leads to my point about rushing fixes: -stable releases for v4.16 are
> done weekly, there's no need to rush them in during v4.16-rc8 just to
> make some imaginary release no one will pick up.
