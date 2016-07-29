Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 163F191A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 21:07:46 +0000 (UTC)
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7E391128
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 21:07:45 +0000 (UTC)
Date: Fri, 29 Jul 2016 23:07:39 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160729210739.GI1494@piout.net>
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

On 29/07/2016 at 13:02:44 -0400, Steven Rostedt wrote :
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
> 

Well, some tests depend on hardware availability but any hardware can
work. I'm obviously thinking about RTCs. rtctest can run with any RTC.
Also, one of my question here is whether kselftests could or couldn't be
destructive. Running rtctest will currently overwrite the next alarm
that may be set in an RTC. I was also planning to extend it in a way
that will unfortunately also overwrite the current date and time.
I'm not sure this is OK, especially for people that want to run those
tests automatically.


-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
