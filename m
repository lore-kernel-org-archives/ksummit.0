Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F003CABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 07:35:53 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6CFD412D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 07:35:53 +0000 (UTC)
Date: Wed, 8 Jul 2015 09:35:38 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: Mark Brown <broonie@kernel.org>
In-Reply-To: <20150707224025.GJ11162@sirena.org.uk>
Message-ID: <alpine.LNX.2.00.1507080932070.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Tue, 7 Jul 2015, Mark Brown wrote:

> > I personally would very welcome a facility that'd send out an e-mail if a 
> > new commit is pushed to a git.kernel.org repo branch (sort of what tip-bot 
> > and akpm's scripts are doing these days) to automatically notify the patch 
> > author that the patch has been merged and pushed out.
> 
> Those are useful, I know Greg has one and I just wrote one too.  I'm not
> sure it needs to be on the server side though, they can also be done
> from the client which lets you try to fine tune things more readily.

I explicitly proposed these to be (to some extent configurable) 
server-side hooks, exactly to avoid every committer maintaining his own 
set of home-brew scripts.

-- 
Jiri Kosina
SUSE Labs
