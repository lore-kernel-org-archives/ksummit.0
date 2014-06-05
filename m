Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4201089C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 08:30:47 +0000 (UTC)
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3A3EA1F952
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 08:30:46 +0000 (UTC)
Received: by mail-ig0-f181.google.com with SMTP id h3so2029592igd.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 05 Jun 2014 01:30:45 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20140605065455.GM10819@suse.de>
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
	<20140605002331.GB24037@kroah.com> <20140605065455.GM10819@suse.de>
Date: Thu, 5 Jun 2014 10:30:45 +0200
Message-ID: <CAMuHMdVG+vinqgLgNCgNqNUpSb4RDWFMJ=UsAL0+2RbXnjefig@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Mel Gorman <mgorman@suse.de>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, chrubis@suse.cz
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 5, 2014 at 8:54 AM, Mel Gorman <mgorman@suse.de> wrote:
> There is a hazard that someone bisecting the tree would need to be careful
> to not bisect LTP instead.

That may actually be a good reason not to import LTP...
I'd imagine you usually want to bisect the kernel to find when a regression
was introduced in the syscall API.

Is there a reason not to run the latest version of LTP (unless bisecting
LTP ;-)? The syscall API is supposed to be stable.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
