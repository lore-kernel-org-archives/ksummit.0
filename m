Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 93360BA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:58:31 +0000 (UTC)
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 27CDA1BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:58:31 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 7C49E47EC23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 00:53:25 +0200 (CEST)
Date: Tue, 7 Jul 2015 15:53:20 -0700
From: josh@joshtriplett.org
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150707225320.GA21834@cloud>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150707224025.GJ11162@sirena.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 07, 2015 at 11:40:25PM +0100, Mark Brown wrote:
> On Tue, Jul 07, 2015 at 10:42:49PM +0200, Jiri Kosina wrote:
> 
> > I personally would very welcome a facility that'd send out an e-mail if a 
> > new commit is pushed to a git.kernel.org repo branch (sort of what tip-bot 
> > and akpm's scripts are doing these days) to automatically notify the patch 
> > author that the patch has been merged and pushed out.
> 
> Those are useful, I know Greg has one and I just wrote one too.  I'm not
> sure it needs to be on the server side though, they can also be done
> from the client which lets you try to fine tune things more readily.

I agree that it could be done on a system other than the git server
(though it's more efficient if hooked into git hooks), but it'd be nice
to have an automated service running on kernel.org, rather than
something every interested kernel developer has to run for themselves.
I'd certainly like to have mails telling me when a patch I submitted
gets merged, like those I get from Andrew Morton's automated scripts.

- Josh Triplett
