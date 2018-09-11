Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A29C2FC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:17:49 +0000 (UTC)
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
	[209.85.222.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 469D213A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:17:49 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id f4-v6so21547000uao.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 11:17:49 -0700 (PDT)
MIME-Version: 1.0
References: <CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911181249.GA1783@localhost.localdomain>
In-Reply-To: <20180911181249.GA1783@localhost.localdomain>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Sep 2018 20:17:33 +0200
Message-ID: <CAMuHMdV-7CvJQC2+avR50X54gecaiBpPMxB=xuUnaeiyTyfksw@mail.gmail.com>
To: Eduardo Valentin <edubezval@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 8:13 PM Eduardo Valentin <edubezval@gmail.com> wrote:
> But given the 0day dependency on -next itself, I am not sure it is worth
> it. Why is that a thing anyways? 0day cannot test individual branches?

0day does test individual branches (I get email reports for each branch I
push to git.kernel.org).  The number of tests run depends on the load,
though, AFAIK.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
