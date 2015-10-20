Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 626C49C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 23:39:34 +0000 (UTC)
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B3DDEE1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 23:39:33 +0000 (UTC)
Received: by ioll68 with SMTP id l68so40213477iol.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 16:39:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151020131816.1210dbf5@recife.lan>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
	<20151019173419.042d5e8b@recife.lan>
	<CAKocOOMHUQT7u0T-Cq1k1YYdZ1g78t5Trx-dyXyB9RSQETOfDg@mail.gmail.com>
	<1445342137.7033.41.camel@loki>
	<20151020131816.1210dbf5@recife.lan>
Date: Tue, 20 Oct 2015 17:39:33 -0600
Message-ID: <CAKocOOPtSjbdWjq-pKXhQxPM63NuNrYk-mr44a3NCj3cBEwV_Q@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Content-Type: text/plain; charset=UTF-8
Cc: Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Lars-Peter Clausen <lars@metafoo.de>, Mark Brown <broonie@kernel.og>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 20, 2015 at 9:18 AM, Mauro Carvalho Chehab
<mchehab@osg.samsung.com> wrote:
> Em Tue, 20 Oct 2015 12:55:37 +0100

> Shuah,
>
> I guess the links for the ALSA part are not ok. On your graph, it is
> showing:
>
>         ATV decoder [PAD 3] --> Audio Mixer
>                             --> Audio Capture
>
> I suspect that the right graph would be, instead:
>
>         ATV decoder [PAD 3] --> Audio Mixer --> Audio Capture
>

Mauro,

Thanks for the find Fixed now in patch v2 series. Please find the media graphs
at

https://drive.google.com/open?id=0B0NIL0BQg-AlLWE3SzAxazBJWm8

thanks,
-- Shuah
