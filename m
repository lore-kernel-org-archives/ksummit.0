Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5135DD39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:20:25 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 02ED4102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:20:24 +0000 (UTC)
Message-ID: <1536592822.4035.9.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jikos@kernel.org>
Date: Mon, 10 Sep 2018 08:20:22 -0700
In-Reply-To: <nycvar.YFH.7.76.1809101709371.15880@cbobk.fhfr.pm>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809101709371.15880@cbobk.fhfr.pm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2018-09-10 at 17:13 +0200, Jiri Kosina wrote:
> On Mon, 10 Sep 2018, James Bottomley wrote:
> 
> >    1. How do reviews happen?  Non email projects tend to have only
> > one review mechanism (gerrit, github, gitlab, etc.) and stick to
> > it.  Do we want to pick a technology or allow multiple?  I don't
> > think this is kernel wide, it could be a sybsystem choice.
> 
> Yeah, but OTOH even now I've heard a lot of feedback about the
> irregular contributors / newcomers being confused by different
> subsystems having different processess and requirements; and those
> are basically just rather "minor" things currently (bugzilla usage,
> patchwork usage, subscriber-only mailinglists, etc), but it's still
> enough to confuse the hell out of people.

Well, I don't think it has to be a github/gitlab process.  It's not
impossible to craft a bugzilla based process for handling patches ...
although I bet it would have to be a pretty dedicated bugzilla person
to sign up to fix all the problem interactions and missing pieces.

I also don't think the confusion will go away.  Even most github
projects have huge issues in this regard: fine, it's easy to submit a
pull request, but not at all clear what you do when travis auto rejects
the pull because you're not in the cabal or you didn't sign the correct
CLA or it simply got it wrong and crashed before it got to the end of
testing your code.

James
