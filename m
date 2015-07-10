Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 37AB4B88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 19:28:08 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0094.hostedemail.com
	[216.40.44.94])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 955181DC7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 19:28:07 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 8CC1118423C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 19:28:06 +0000 (UTC)
Date: Fri, 10 Jul 2015 15:27:54 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20150710152754.3aa8bb75@gandalf.local.home>
In-Reply-To: <20150710163451.GB4778@x>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710114409.638582c0@gandalf.local.home>
	<20150710163451.GB4778@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Fri, 10 Jul 2015 09:34:51 -0700
Josh Triplett <josh@joshtriplett.org> wrote:

> > Then this web server could run get_maintainers.pl and email the
> > appropriate people with a generated formatted patch. It could also
> > allow versioning. Today, people seem to be use to filling out web
> > forms. Obviously, this isn't a requirement to use, but could be used by
> > people that don't already know the Linux process.
> > 
> > It could be a bit smarter than get maintainers, as it could possibly
> > detect typo and whitespace patches and then send it off to the trivial
> > maintainer only.
> 
> I think it would make sense for such a bot to be driven by git pushes,
> rather than solely by a web form.  A web form, if any, would just handle
> automatic submission of a specified git series to the test address.

But who's doing the git push?

This is about new comers that are submitting their own patch and don't
understand the process. If we just point them to a web interface that
lets them do a one time shot to submit a fix for something they found,
this would eliminate a lot of back and forth that is needed for newbies
to get the processing right.

-- Steve
