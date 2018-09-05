Return-Path: <SRS0=+gHD=LT=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ECDE71285
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:44:13 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 823557AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:44:13 +0000 (UTC)
Date: Wed, 5 Sep 2018 10:44:11 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20180905104411.572c5112@gandalf.local.home>
In-Reply-To: <20180905101159.GD9781@sirena.org.uk>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<20180905085642.GA29931@kroah.com>
	<20180905101159.GD9781@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Sep 2018 11:11:59 +0100
Mark Brown <broonie@kernel.org> wrote:

> On Wed, Sep 05, 2018 at 10:56:42AM +0200, Greg KH wrote:
> 
> > 	- We have finally woken some subsystem maintainers up into
> > 	  actually properly tagging patches for stable.  We used to have
> > 	  a horrid rate of this happening, and it is getting better.
> > 	  However, we still have whole major subsystems that _never_ tag
> > 	  anything, which is a problem, so things will get larger.  
> 
> Some of us have been doing this for 5+ years :/

Yep.

> 
> > 	- Sasha's work in finding the patches that maintainers/developer
> > 	  fail to tag is paying off really well, which also increases
> > 	  the size.  
> 
> These and the few other patches that I didn't tag for stable myself are
> the only ones I try to review reliably, the others I already looked at
> for stable at least once and especially where things are automated it's
> better to have some manual checking.  It's good that Sasha's stuff is
> flagged now, and most other submissions are obvious as well, so that's
> fairly easy to do and means that the review burden is relatively light.

I tend to too. As there's some fixes I don't tag for stable because it
doesn't "break" things too bad (things that were always broken for
years, but nobody noticed.. like a bad format of the trace output), or
I have another fix for the problem. For instance, I just replied to an
AUTOSEL patch that fixed a symptom of a bug, but the bug fix itself was
tagged for stable. The symptom fix was just to make the code more
"robust" and shouldn't hurt anything, but it really wasn't a bug fix.
I don't think it was necessary to backport that, but if someone else
thinks it is, I'll just let it be.

-- Steve
