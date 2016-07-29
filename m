Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A91D98C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:06:59 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0108.hostedemail.com
	[216.40.44.108])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 16F4A115
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:06:59 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 386EB18461D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:06:57 +0000 (UTC)
Date: Fri, 29 Jul 2016 12:06:52 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160729120652.3ab04112@gandalf.local.home>
In-Reply-To: <20160729155013.GI10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>
	<20160728201010.6d1ef149@gandalf.local.home>
	<26257864.77FIuI985E@avalon> <20160729151247.GG10376@sirena.org.uk>
	<20160729112019.3c71f697@gandalf.local.home>
	<20160729155013.GI10376@sirena.org.uk>
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

On Fri, 29 Jul 2016 16:50:13 +0100
Mark Brown <broonie@kernel.org> wrote:


> Right, that's one good strategy - but that's still unpredictable for the
> user and there's a reasonable class of bugs that don't get flagged up
> when breakage causes something to fail to instantiate so catching
> regressions is that bit harder.  It does also mean we're restricted to
> things which don't require any test environment beyond the simple
> existence of the hardware which can be a bit restrictive for some
> classes of hardware.

Well, I don't think there's any answer to that. But I still think it's
better than nothing. If nobody has the hardware, do we ever care if it
gets tested? ;-)

-- Steve
