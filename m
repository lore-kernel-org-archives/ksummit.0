Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0DC56BA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:52:26 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0191.hostedemail.com
	[216.40.44.191])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id A90C41DCCA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:52:25 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 29CB511A9ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:33:47 +0000 (UTC)
Date: Thu, 16 Jul 2015 11:33:43 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150716113343.67392600@gandalf.local.home>
In-Reply-To: <20150716151840.GR4039@sirena.org.uk>
References: <20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<20150716144155.GM4039@sirena.org.uk>
	<20150716105751.6efc15b6@gandalf.local.home>
	<20150716151840.GR4039@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
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

On Thu, 16 Jul 2015 16:18:40 +0100
Mark Brown <broonie@kernel.org> wrote:

 
> > I especially prefer the ping if its for a patch series, as sending out
> > a new patch series that didn't change anything will definitely waste my
> > time, as I usually compare the old with the new to see what changed.
> 
> Oh, I tend to do the same thing but I basically just discard anything I
> didn't review yet and compare against the baseline - if it's a resend
> then I'm not discarding anything, if it's been improved then I get to
> skip reviewing the intermediate version.

The problem with me is that I'll start a review but wont actually
reply. Especially if there's nothing to say about a patch. But if
something else comes up, I'll mark where I left off and continue the
other work. If I then get another patch series, I do the diff to see if
anything changed since I looked over the previous version.

-- Steve
