Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC72FBC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:40:08 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 78A26166
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:40:08 +0000 (UTC)
Date: Fri, 10 Jul 2015 13:40:05 -0700
From: josh@joshtriplett.org
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150710204005.GA10533@cloud>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710124416.GR23515@io.lakedaemon.net>
	<20150710182429.GX11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710182429.GX11162@sirena.org.uk>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Fri, Jul 10, 2015 at 07:24:29PM +0100, Mark Brown wrote:
> On Fri, Jul 10, 2015 at 12:44:16PM +0000, Jason Cooper wrote:
> 
> > --kernel would go through each patch and auto-fills Cc based on MAINTAINERS.
> > Amongst a few other things.  Shallow threading, check/edit cover letter
> > and so forth.
> 
> People blindly CCing everyone get_maintainers finds can be a bit of a
> problem, either they use --git and the false positive rate is quite high
> or they don't and they miss out relevant people because MAINTAINERS
> isn't 100% filled in or the reasons for CCing aren't entirely file
> based.
> 
> The false positives are a bit of an issue since it discourages people
> doing smaller cleanups over wide areas, you can end up getting CCed on
> lots of things you touched which can be a bit offputting.

--git-fallback seems to work pretty well.  It nicely embodies the
approach of "if it doesn't have a maintainer, talk to the last poor
sucker who touched it".

- Josh Triplett
