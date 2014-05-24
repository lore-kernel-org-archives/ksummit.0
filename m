Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 685F38AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 19:19:19 +0000 (UTC)
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8C1721F889
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 19:19:18 +0000 (UTC)
Received: by mail-ig0-f177.google.com with SMTP id l13so1868598iga.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 12:19:18 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <1400922840.6956.10.camel@dabdike.int.hansenpartnership.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140521201108.76ab84af@notabene.brown>
	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
	<2980546.hqgiQV7seV@vostro.rjw.lan>
	<CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
	<20140522154859.GA28971@thunk.org>
	<CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
	<20140522203103.GM15585@mwanda>
	<CAMuHMdW1KgvP9EpHfVykHEskdeDZ-p_zGy6AuY05-6Y-XEB2MQ@mail.gmail.com>
	<1400826095.2259.38.camel@dabdike.int.hansenpartnership.com>
	<20140523141111.GA13311@tuxdriver.com>
	<1400922840.6956.10.camel@dabdike.int.hansenpartnership.com>
Date: Sat, 24 May 2014 21:19:17 +0200
Message-ID: <CAMuHMdU5+ZpuNoz8w7-XuaMjipuQyv6du7gHAMQABJTtpBkjZw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
	Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi James,

On Sat, May 24, 2014 at 11:14 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> I also have specific methodologies where I keep head and tail branches
> of my trees, so for <x> development branch I have an <x>-base branch as
> well, so I can simply do a
>
> git checkout <x>
> git rebase --onto origin/master <x>-base
> git branch -f <x>-base origin/master

If your origin/master is only forwarding (i.e. never rebased), you can do
without the <x>-base branch, as it will always point somewhere into the
history of origin/master.
Git is smart enough so "git rebase origin/master <x>" will do the right thing.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
