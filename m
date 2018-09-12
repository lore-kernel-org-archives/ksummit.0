Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 771D7F65
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 13:38:15 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 83976102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 13:38:14 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id k19-v6so1050229pfi.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 06:38:14 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>
References: <20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180911232249.GL5659@atomide.com>
	<1536708545.3511.18.camel@HansenPartnership.com>
	<CAMuHMdUTkrT6Jovw1wwCTQj3Cg+5yw5WPn5QKRNOhrcvB13s7g@mail.gmail.com>
	<1536755770.3506.3.camel@HansenPartnership.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <3e6baddf-3e62-f6fe-4bbf-1a62694d4c96@roeck-us.net>
Date: Wed, 12 Sep 2018 06:38:11 -0700
MIME-Version: 1.0
In-Reply-To: <1536755770.3506.3.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/12/2018 05:36 AM, James Bottomley wrote:
> 
> Look, shit happens occasionally.  What then happens is that you get a
> note from Stephen saying your tree is dropped for a day for crapping on
> the carpet and you fix it.  -next still builds without you so I don't
> get what all the fuss is about.  From my point of view the -next
> process works very well and I don't see a need to complicate it with a
> -next-next or a -pre-next or whatever.
> 
Not sure if I agree with the "works very well" part. I would say it works,
for the most part, decently well, and we would be in a much worse situation
without it. I would hope for code in -next to be tested a bit better,
and problems to be fixed faster, but one can not have everything.

However, I definitely agree that we don't need -next-next or -pre-next.
That would not improve the situation at all; it would just create even
more noise and result in people testing their code even less before
publishing it.

Guenter
