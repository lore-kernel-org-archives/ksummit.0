Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7C17747F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 14:22:48 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 13C861C9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 14:22:47 +0000 (UTC)
Message-ID: <1438352566.2179.4.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Nicolas Ferre <nicolas.ferre@atmel.com>
Date: Fri, 31 Jul 2015 07:22:46 -0700
In-Reply-To: <55BB7397.3090407@atmel.com>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<55A7D73F.4020105@sonymobile.com>
	<20150716121620.65ce6daa@gandalf.local.home>
	<55A7DAD8.2080902@sonymobile.com>
	<20150716125216.0d457104@gandalf.local.home>
	<55BB7397.3090407@atmel.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Fri, 2015-07-31 at 15:09 +0200, Nicolas Ferre wrote:
> Le 16/07/2015 18:52, Steven Rostedt a écrit :
> > On Thu, 16 Jul 2015 09:24:56 -0700
> > Tim Bird <tim.bird@sonymobile.com> wrote:
> > 
> > 
> >> That's really good feedback.  I've often assumed that if you saw something
> >> that needed fixing, you had a responsibility to properly format a patch
> >> so as not to burden the maintainer.  I've labeled my own "best-effort,
> >> but-probably-not-mainlinable" patches as [RFC PATCH..].  Would it be
> >> worth having a convention for that sort of thing?
> > 
> > At a minimum, the patch should not be html, an attachment, nor have
> > broken whitespace where the patch doesn't apply. But other than that,
> 
> Le me just react on the "no attachment" statement:
> 
> As a maintainer, I accept patches as attachments, rework them and
> properly submit them.
> For a newcomer, it's sometimes very difficult to find a way to send
> patches with git or using a "patch/plain-text-friendly" SMTP server.

Just a me-too on this.  Sometime attachments are the only way to get
undamaged patches through an exchange server which a lot of companies
who submit drivers force their employees to use.  Accepting them isn't a
hardship: git-am actually processes attachments perfectly well.

Also git am --whitespace=fix manages to correct most broken whitespace
issues.  I usually remember to add it, but perhaps it should be the
default?

We've just had long discussions about using tools to help newcomers,
let's actually not cause problems over things our tools already cope
with.

James

> This mostly apply for company employees and breaking this barrier could
> allow us to have more "gifts" in Neil Brown words.
> 
> When I recall how difficult it can be to gain a properly configured SMTP
> server for my Mainline activities in a former company, I completely
> measure the barrier for contribution it can be.
> 
> > just report the bug and say "this fixes it for me". And if it is a real
> > bug, the maintainer should take it.
> 
> [..]
> 
