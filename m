Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E3A998A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 20:56:18 +0000 (UTC)
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 60BA520354
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 20:56:18 +0000 (UTC)
Received: by mail-ig0-f176.google.com with SMTP id hl10so8152703igb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 13:56:17 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20140522203103.GM15585@mwanda>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140521201108.76ab84af@notabene.brown>
	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
	<2980546.hqgiQV7seV@vostro.rjw.lan>
	<CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
	<20140522154859.GA28971@thunk.org>
	<CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
	<20140522203103.GM15585@mwanda>
Date: Thu, 22 May 2014 22:56:17 +0200
Message-ID: <CAMuHMdW1KgvP9EpHfVykHEskdeDZ-p_zGy6AuY05-6Y-XEB2MQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Thu, May 22, 2014 at 10:31 PM, Dan Carpenter
<dan.carpenter@oracle.com> wrote:
> On Thu, May 22, 2014 at 09:31:44AM -0700, Dan Williams wrote:
>> I agree that something like this is prickly once it gets entangled
>> with ABI concerns.  But, I disagree with the speed argument... unless
>> you believe -staging has not increased the velocity of kernel
>> development?
>
> Staging is good because it brings more developers, but in many cases it
> is a slow down.  Merged codes has stricter rules where you have to write
> reviewable patches.  If there is a bug early in a patch series then you
> can't just fix it in a later patch, you need to redo the whole series.

In theory...

These days many fixes end up as separate commits in various subsystem
trees, due to "no rebase" rules and other regulations.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
