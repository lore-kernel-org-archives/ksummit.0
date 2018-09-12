Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7280FFE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 15:15:19 +0000 (UTC)
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 30F442C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 15:15:19 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id s13-v6so1164950pfi.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 08:15:19 -0700 (PDT)
Date: Wed, 12 Sep 2018 08:15:10 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20180912151507.GA5155@localhost.localdomain>
References: <20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911181249.GA1783@localhost.localdomain>
	<CAMuHMdV-7CvJQC2+avR50X54gecaiBpPMxB=xuUnaeiyTyfksw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdV-7CvJQC2+avR50X54gecaiBpPMxB=xuUnaeiyTyfksw@mail.gmail.com>
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

On Tue, Sep 11, 2018 at 08:17:33PM +0200, Geert Uytterhoeven wrote:
> On Tue, Sep 11, 2018 at 8:13 PM Eduardo Valentin <edubezval@gmail.com> wrote:
> > But given the 0day dependency on -next itself, I am not sure it is worth
> > it. Why is that a thing anyways? 0day cannot test individual branches?
> 
> 0day does test individual branches (I get email reports for each branch I
> push to git.kernel.org).  The number of tests run depends on the load,
> though, AFAIK.

Yeah, looking back at my mailbox, I do see 0day reports on branches I
update at my git trees on kernel.org. Maybe the issue is more on what
tests it runs on individual branches. And Yes, I also think sometimes it
take longer for it to send a report, so, yeah, depends on load.

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
