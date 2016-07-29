Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 642FD2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 21:47:13 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0129.hostedemail.com
	[216.40.44.129])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D8BD222C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 21:47:12 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 5F1F62114A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 21:40:40 +0000 (UTC)
Date: Fri, 29 Jul 2016 17:40:35 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Message-ID: <20160729174035.5967f2bf@gandalf.local.home>
In-Reply-To: <20160729210739.GI1494@piout.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>
	<20160728201010.6d1ef149@gandalf.local.home>
	<26257864.77FIuI985E@avalon> <20160729151247.GG10376@sirena.org.uk>
	<20160729112019.3c71f697@gandalf.local.home>
	<20160729155013.GI10376@sirena.org.uk>
	<20160729120652.3ab04112@gandalf.local.home>
	<20160729164842.GL10376@sirena.org.uk>
	<20160729130244.037cee4f@gandalf.local.home>
	<20160729210739.GI1494@piout.net>
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

On Fri, 29 Jul 2016 23:07:39 +0200
Alexandre Belloni <alexandre.belloni@free-electrons.com> wrote:


> Well, some tests depend on hardware availability but any hardware can
> work. I'm obviously thinking about RTCs. rtctest can run with any RTC.
> Also, one of my question here is whether kselftests could or couldn't be
> destructive. Running rtctest will currently overwrite the next alarm
> that may be set in an RTC. I was also planning to extend it in a way
> that will unfortunately also overwrite the current date and time.
> I'm not sure this is OK, especially for people that want to run those
> tests automatically.


Anything that can cause harm to the system probably shouldn't be added
to kselftests. Unless there's a way you can record what the settings
were, and reset them after the test.

-- Steve
