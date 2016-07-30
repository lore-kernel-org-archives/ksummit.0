Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5B5BF71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 16:19:55 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED951A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 16:19:54 +0000 (UTC)
Date: Sat, 30 Jul 2016 18:19:51 +0200
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160730161951.GO3296@wotan.suse.de>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>
	<20160728201010.6d1ef149@gandalf.local.home>
	<26257864.77FIuI985E@avalon> <20160729151247.GG10376@sirena.org.uk>
	<20160729112019.3c71f697@gandalf.local.home>
	<20160729155013.GI10376@sirena.org.uk>
	<20160729120652.3ab04112@gandalf.local.home>
	<20160729164842.GL10376@sirena.org.uk>
	<20160729130244.037cee4f@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160729130244.037cee4f@gandalf.local.home>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 29, 2016 at 01:02:44PM -0400, Steven Rostedt wrote:
> On Fri, 29 Jul 2016 17:48:42 +0100
> Mark Brown <broonie@kernel.org> wrote:
> 
> > On Fri, Jul 29, 2016 at 12:06:52PM -0400, Steven Rostedt wrote:
> > 
> > > Well, I don't think there's any answer to that. But I still think it's
> > > better than nothing. If nobody has the hardware, do we ever care if it
> > > gets tested? ;-)  
> > 
> > I think it'd be better to split such tests out so that there's a clear
> > distinction between those that we can tell should run reliably and those
> > that have some hardware dependency.  That way people who just want a
> > predicatable testsuite without worrying if there's something wrong in
> > the environment can get one.
> 
> Perhaps we should create a separate directory in kselftests for
> "hardware dependent" tests.

Tests could depend on a list of soft kconfig entries, which map to
device drivers present -- whether built-in or modules, at run time it
should then be possible to ensure such kconfig symbols are available.
This of course depends on there being a deterministic mapping of
hardware devices to kconfig symbols, which we don't yet have.

  Luis
