Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AD4C69F6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 21:09:30 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id EA24D20278
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 21:09:29 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Fri, 30 May 2014 23:26:38 +0200
Message-ID: <1505533.GV2VtpdML7@vostro.rjw.lan>
In-Reply-To: <20140530110640.70d6ae02@gandalf.local.home>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<700704721.GMn4j9GJx9@vostro.rjw.lan>
	<20140530110640.70d6ae02@gandalf.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Reforming Acked-by (was Re: [TOPIC]
	Encouraging more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, May 30, 2014 11:06:40 AM Steven Rostedt wrote:
> On Thu, 29 May 2014 23:03:28 +0200
> "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:
> 
> 
> > Well, perhaps we can reserve the Acked-by for maintainers and add
> > something like Supported-by for the 2nd meaning.
> 
> Or add a new tag for maintainers. I like:
> 
>  Approved-by:
> 
> As that is what the meaning of the maintainer acked-by is.  I sometimes
> use Acked-by when I'm not the maintainer of the code but the code
> changes something related to tracing, or something else I dabble in
> (interrupts, scheduler, etc). Code that I may not maintain, but
> something I do work with. Acked-by to me isn't limited to a maintainer,
> but for those that deal with the code, and agree with the change.
> Supported-by gives the meaning that I'm funding that change.

Right.

> Where as, a maintainer could pass in an "Approved-by" which means "Yes,
> I approve this change and it may go through another tree instead of
> mine".

That's what an ACK means, though, isn't it?

To me, really, Acked-by from a non-maintainer is something like a "+1" in G+.

I would prefer the new tag to suggest that meaning more directly.  Something
like "Fine-by", maybe?

Rafael
