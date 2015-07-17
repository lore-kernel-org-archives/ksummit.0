Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2872D407
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 20:39:15 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0061.hostedemail.com
	[216.40.44.61])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id A57B71DAC1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 20:39:14 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave01.hostedemail.com (Postfix) with ESMTP id B8CB25EC88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 20:39:12 +0000 (UTC)
Date: Fri, 17 Jul 2015 16:39:03 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: josh@joshtriplett.org
Message-ID: <20150717163903.67747d86@gandalf.local.home>
In-Reply-To: <20150717202412.GA1856@cloud>
References: <20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Fri, 17 Jul 2015 13:24:12 -0700
josh@joshtriplett.org wrote:

> If your biggest hangup as a maintainer is that people send you patches
> that don't have variables sorted in some particular order, perhaps you
> should get out of kernel development and get into bike shed colorimetry
> consulting.  We have enough problems getting quality patches by the
> metrics that *actually* correlate to quality.  And as others have
> pointed out in this thread, many people produce patches across numerous
> subsystems.

I personally don't have any issue with my own idiosyncrasies not being
met. They are usually minor, and I'll fix up the patch (and document it
in the change log). These minor idiosyncrasies make maintaining code
easier. Everyone has a little personal style, and when the code aligns
to that style, it is usually easier to review it and understand it.

Anything that helps you to understand the code is a bonus.

I too have sent out patches across numerous subsystems. When a
maintainer asks me to modify it a certain way, I just do it.

-- Steve
