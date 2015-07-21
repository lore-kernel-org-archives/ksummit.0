Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A66579C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 06:08:40 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 94203DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 06:08:39 +0000 (UTC)
Date: Tue, 21 Jul 2015 08:08:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <55AD7E2C.9090804@roeck-us.net>
Message-ID: <alpine.DEB.2.02.1507210804580.2065@localhost6.localdomain6>
References: <20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<alpine.DEB.2.10.1507201022370.2408@hadrien>
	<20150720203007.GA7797@kroah.com> <55AD7263.8050605@roeck-us.net>
	<20150720223242.GB23638@kroah.com> <55AD7E2C.9090804@roeck-us.net>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> > Is this really such a major issue?  If you don't want cleanup patches,
> > just politely refuse them and point people at drivers/staging/ where I
> > will gladly take them.  It's not tough at all.
> > 
> It isn't tough or an issue for me, but I don't normally refuse cleanup
> patches either.

Politely pointing people at staging is an OK strategy, but I think newbies
would really prefer to know in advance that their patch has no chance of
being accepted.

julia

> > Or better yet, take Julia's advice, and just fix up your subsystem to
> > not need these patches at all.  That should take all of an afternoon's
> > worth of effort at most, drivers/scsi/ notwithstanding, that beast is
> > horrid...
> > 
> 
> Yes, that is what I am doing once in a while, if I need a timeout from other
> work. Since I don't mind cleanup patches, so I would set the tag to 'yes'
> for all files where I am listed as maintainer. But other maintainers do
> actively reject cleanup patches, sometimes with less then friendly words.
> 
> Without a tag, the result is to discourage cleanup patches in general,
> or what I would call the lowest common denominator. While I understand
> and accept that other maintainers dislike cleanup patches, I don't see
> why I should have to suffer the consequences.
> 
> Guenter
> 
> 
