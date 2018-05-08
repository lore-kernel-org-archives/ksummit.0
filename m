Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AD513D21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 20:55:10 +0000 (UTC)
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0138.outbound.protection.outlook.com [104.47.34.138])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 49A6BF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 20:55:10 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Matthew Wilcox <willy6545@gmail.com>
Date: Tue, 8 May 2018 20:55:07 +0000
Message-ID: <20180508205505.GD8514@sasha-vm>
References: <20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
	<20180508202912.GC8514@sasha-vm>
	<CAFhKne-aDcMKD8FjfROGZ-=ffmq3Xa+7n0dm8uvzKJ_7WO-qCQ@mail.gmail.com>
In-Reply-To: <CAFhKne-aDcMKD8FjfROGZ-=ffmq3Xa+7n0dm8uvzKJ_7WO-qCQ@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8B7B7557FD94704A99CFF4FA978E097F@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

On Tue, May 08, 2018 at 08:40:02PM +0000, Matthew Wilcox wrote:
>I think your sample size omits some people. I run Debian Testing on my
>laptop. That gets something akin to a Linus release pretty soon after he
>releases it, and while it gets some amount of -stable patches, it
>progresses to the next release fairly rapidly.

Debian testing is pretty much a -stable tree, see the git log history:

https://salsa.debian.org/kernel-team/linux/commits/sid

It follows a current stable tree, and moves on to the next one once it's
available (about a week after Linus releases a new kernel).

>Added Ben to the cc for more updates.
>
>I think Fedora does something similar.

Fedora's rawhide is just (daily?) builds of Linus's tree, they don't
care what stage the tree is in at any point.


My point is that no one picks a release and sticks with it more than a
week. If someone plans to use a release for longer term they use a
-stable tree, and if they are interested in testing, they move on to the
next release once it's available.

There's no one, for example, who picked up vanilla v4.16 and plans to
keep using it for a year.

This leads to my point about rushing fixes: -stable releases for v4.16 are
done weekly, there's no need to rush them in during v4.16-rc8 just to
make some imaginary release no one will pick up.=
