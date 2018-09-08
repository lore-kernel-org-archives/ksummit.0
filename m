Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F498CC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 19:47:47 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0C4658B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 19:47:46 +0000 (UTC)
Message-ID: <1536436064.22308.9.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jikos@kernel.org>
Date: Sat, 08 Sep 2018 12:47:44 -0700
In-Reply-To: <nycvar.YFH.7.76.1809082123500.15880@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan> <20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809082123500.15880@cbobk.fhfr.pm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 2018-09-08 at 21:26 +0200, Jiri Kosina wrote:
> On Sat, 8 Sep 2018, James Bottomley wrote:
> 
> > I think we might benefit from a discussion of whether we could have
> > handled Meltdown/Spectre better in an NDA framework ... 
> 
> Well, at the end of the day, we actually did handle it in the NDA 
> framework (otherwise the end result wrt. stable and distros really 
> wouldn't look like it did by the release date), but everything else 
> (timing, information sharing, feedback channels to the "owners",
> ...) didn't really work all that well.

Right, but my impression was the NDAs came late in the game.  I think
what happened early is we got an -ENONDA from the various lawyers
involved which lead them to cut most of us out of the handling loop. 
Eventually the distros had to sign NDAs to get back in.  Now this
situation is undoubtedly due to lack of open source awareness among the
various disclosing parties, but it does beg the question if we'd had an
NDA framework in place (constructed by someone who knows what they're
doing in open source) and we'd been able to say: "sure, this is the way
we handle NDA issues in open source, sign here" we might have been in
the loop much earlier.

James
