Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CA0BCBC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 13:21:45 +0000 (UTC)
Received: from pmta2.delivery3.ore.mailhop.org
	(pmta2.delivery3.ore.mailhop.org [54.213.22.21])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 3C888F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 13:21:45 +0000 (UTC)
Date: Wed, 8 Jul 2015 13:05:40 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150708130539.GG23515@io.lakedaemon.net>
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

The tip tree has one as well.

There are many benefits to server-side, and I think it's worth
discussing the scope and success/fail criteria.  For example:

 - What will the script do?
 - What will it *not* do?
 - Should we try it for a year and report back?
    - How do we quantify success/failure?
 - Who is going to write it?  Maintain it?

It's also worth noting that this ties in neatly with the recruitment
effort.  I clearly recall the first automated email I received from
Greg, followed up quickly by an automated email from Andrew.  The "Holy
sh*t!  My patch got merged!" feeling hooked me.

I'll chime in with more thoughts on the recruitment thread, I don't want
to hijack this one.  Suffice to say, I think automated, targeted,
concise notifications would be a good thing.

thx,

Jason.
