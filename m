Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B2D36A8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 21:29:24 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.226])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 92E592027A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 21:29:23 +0000 (UTC)
Date: Fri, 30 May 2014 17:29:21 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140530172921.569cf7bf@gandalf.local.home>
In-Reply-To: <1505533.GV2VtpdML7@vostro.rjw.lan>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<700704721.GMn4j9GJx9@vostro.rjw.lan>
	<20140530110640.70d6ae02@gandalf.local.home>
	<1505533.GV2VtpdML7@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Fri, 30 May 2014 23:26:38 +0200
"Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:

 
> > Where as, a maintainer could pass in an "Approved-by" which means "Yes,
> > I approve this change and it may go through another tree instead of
> > mine".
> 
> That's what an ACK means, though, isn't it?

I would argue that it means that as well as other meanings.

> 
> To me, really, Acked-by from a non-maintainer is something like a "+1" in G+.
> 
> I would prefer the new tag to suggest that meaning more directly.  Something
> like "Fine-by", maybe?

I actually disagree with this analysis. I like to see Acked-by from
those that may not be the maintainer, but have some stake in the change
that is being made. A Acked-by from a random person that I don't know
is more of a "+1" check, which I agree is useless and I don't even
bother adding them.

Thus, my point is to distinguish between a "Acked-by" that comes from
someone that has a stake in the code and approves the change (which to
me is the real meaning of Acked-by) and a stronger "Approved-by" which
comes from a maintainer that is stating that they are OK with you
pushing it through your tree even though it touches their code.

I'm not saying people have to use "Approved-by", but I would like to be
able to us it myself when people make a change in my code and I would
like to let the maintainer of the tree it is going in to know they have
my OK to pull it.

I ask for Acked-bys from people if they can't give me a Reviewed-by
but they still have a stake in the code that is being modified, and I
want to know it's still OK with them. But they are not a maintainer
telling me it's OK to take their code into my tree.

-- Steve
