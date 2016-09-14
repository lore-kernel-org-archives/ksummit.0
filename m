Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B87DC948
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 19:26:22 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CE5031BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 19:26:21 +0000 (UTC)
Date: Wed, 14 Sep 2016 21:26:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Theodore Ts'o <tytso@mit.edu>
In-Reply-To: <20160914143934.4nkdur7ivgywyfrt@thunk.org>
Message-ID: <alpine.DEB.2.10.1609142120090.3347@hadrien>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<20160914115456.GB22341@kroah.com>
	<1473863028.32273.28.camel@perches.com>
	<20160914143205.GA11149@kroah.com>
	<alpine.DEB.2.10.1609141633470.3033@hadrien>
	<20160914143934.4nkdur7ivgywyfrt@thunk.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Joe Perches <joe@perches.com>, ksummit-discuss@lists.linux-foundation.org,
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



On Wed, 14 Sep 2016, Theodore Ts'o wrote:

> On Wed, Sep 14, 2016 at 04:35:06PM +0200, Julia Lawall wrote:
> >
> > The --force is only required for non-staging code?  If it is required for
> > staging code, then we will have to document it in the outreachy tutorial,
> > and then all the (non-outreachy) newbies who look at the tutorial will
> > know about it...
>
> The whole point of the option is to try to discourage people from
> sending white-space (or only style-only) patches.  So I'm not so sure
> that it would be such a tragedy if people like (for example) Markus
> Elfing or Nick Krause don't find out about the --force option right
> away.  Given that outreachy folks are encouraged to work on staging
> code anyway, would it make a difference to them?

People other than outreachy applicants may look at the outreachy tutorial.
It is even written that way in some cases.  I guess that checkpatch could
detect whether -f is used on a staging driver and not require --force if
that is the case.  This would have the other desirable benefit of reducing
the chance that outreachy applicants will send patches on non-staging
code.

julia
