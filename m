Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4DE23948
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 19:30:32 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 816C11BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 19:30:31 +0000 (UTC)
Date: Wed, 14 Sep 2016 21:30:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Joe Perches <joe@perches.com>
In-Reply-To: <1473864710.32273.34.camel@perches.com>
Message-ID: <alpine.DEB.2.10.1609142130150.3347@hadrien>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<20160914115456.GB22341@kroah.com>
	<1473863028.32273.28.camel@perches.com>
	<20160914143205.GA11149@kroah.com>
	<alpine.DEB.2.10.1609141633470.3033@hadrien>
	<1473864710.32273.34.camel@perches.com>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-2043122494-1473881429=:3347"
Cc: ksummit-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] checkpatch/Codingstyle and
 trivial patch spam
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2043122494-1473881429=:3347
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: 8BIT



On Wed, 14 Sep 2016, Joe Perches wrote:

> On Wed, 2016-09-14 at 16:35 +0200, Julia Lawall wrote:
>
> > The --force is only required for non-staging code?  If it is required for
> > staging code, then we will have to document it in the outreachy tutorial,
> > and then all the (non-outreachy) newbies who look at the tutorial will
> > know about it.
>
> Correct.
>
> drivers/staging gets a special exemption to avoid using --force

OK, seems quite perfect to me.

julia

>
> +	if (!$force && $file && $filename !~ m@^drivers/staging/@) {
> +		warn "$P: checking '$filename' is not supported\n";
> +		next;
> +	}
>
>
--8323329-2043122494-1473881429=:3347--
