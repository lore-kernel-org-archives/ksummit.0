Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B0BDB904
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 06:35:19 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 81658125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 06:35:14 +0000 (UTC)
Date: Wed, 14 Sep 2016 08:35:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Joe Perches <joe@perches.com>
In-Reply-To: <1473834432.32273.21.camel@perches.com>
Message-ID: <alpine.DEB.2.10.1609140830550.3395@hadrien>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<alpine.DEB.2.10.1609140756320.3395@hadrien>
	<1473834432.32273.21.camel@perches.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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



On Tue, 13 Sep 2016, Joe Perches wrote:

> On Wed, 2016-09-14 at 07:57 +0200, Julia Lawall wrote:
> > What types of changes are unacceptable?
>
> It's a mixed bag.
>
> Some maintainers reject all "style/whitespace changes".
> Some maintainers reject global consistency patches like
> int -> bool conversions.
> Some maintainers reject literal -> #define changes like
> 1 -> true and 0 -> false for booleans.
>
> Some of those maintainers are IMO misguided.

Sorry, I just meant that you said that the section should list the kinds
of changes that are acceptable.  But it seems more feasible to say what
kinds of changes are not acceptable.  Then one would need a standardized
language for describing what those unacceptable changes are.

julia
