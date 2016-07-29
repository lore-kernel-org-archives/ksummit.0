Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4424E413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:39:16 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0182.hostedemail.com
	[216.40.44.182])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id DD4981DABC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:39:15 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id BB484B115E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:02:49 +0000 (UTC)
Date: Fri, 29 Jul 2016 13:02:44 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160729130244.037cee4f@gandalf.local.home>
In-Reply-To: <20160729164842.GL10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>
	<20160728201010.6d1ef149@gandalf.local.home>
	<26257864.77FIuI985E@avalon> <20160729151247.GG10376@sirena.org.uk>
	<20160729112019.3c71f697@gandalf.local.home>
	<20160729155013.GI10376@sirena.org.uk>
	<20160729120652.3ab04112@gandalf.local.home>
	<20160729164842.GL10376@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Fri, 29 Jul 2016 17:48:42 +0100
Mark Brown <broonie@kernel.org> wrote:

> On Fri, Jul 29, 2016 at 12:06:52PM -0400, Steven Rostedt wrote:
> 
> > Well, I don't think there's any answer to that. But I still think it's
> > better than nothing. If nobody has the hardware, do we ever care if it
> > gets tested? ;-)  
> 
> I think it'd be better to split such tests out so that there's a clear
> distinction between those that we can tell should run reliably and those
> that have some hardware dependency.  That way people who just want a
> predicatable testsuite without worrying if there's something wrong in
> the environment can get one.

Perhaps we should create a separate directory in kselftests for
"hardware dependent" tests.

-- Steve
