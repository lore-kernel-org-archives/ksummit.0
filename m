Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6F3A787A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 17:11:54 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
	[216.40.44.242])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1CEE229F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 17:11:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 237C5B258A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 17:11:51 +0000 (UTC)
Date: Thu, 4 Aug 2016 13:11:46 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160804131146.2136a189@gandalf.local.home>
In-Reply-To: <20160804170126.GC10383@sirena.org.uk>
References: <20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
	<20160804154444.GA10323@sirena.org.uk>
	<1470326213.2411.26.camel@HansenPartnership.com>
	<20160804170126.GC10383@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
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

On Thu, 4 Aug 2016 18:01:26 +0100
Mark Brown <broonie@kernel.org> wrote:

> I've had some bad experiences with some similar reporting requirements
> in the past - if people aren't actively engaged and supportive they end
> up working around rather than with the process which can make it harder
> to use the information later on.  Perhaps I'm overreacting to those but
> I'd much rather see this promoted as good practice than a stick to beat
> people with.

Note, all this should probably be treated as guidelines or "best
practices" and not "hard requirement"s.

Perhaps we should document what people should strive to achieve, and
state if you really don't have the time, then one may do without. But
the more one has a clear change log and information showing where a bug
happened, makes maintenance of the code in the future a little bit
easier.

-- Steve
