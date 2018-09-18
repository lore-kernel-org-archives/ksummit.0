Return-Path: <SRS0=A0yR=MA=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 508C9116F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 23:06:21 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DBFB15D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 23:06:20 +0000 (UTC)
Date: Tue, 18 Sep 2018 19:06:18 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20180918190618.6be95e7b@gandalf.local.home>
In-Reply-To: <20180918193644.GA5400@localhost>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
	<20180918193644.GA5400@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
 position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 18 Sep 2018 12:36:45 -0700
Josh Triplett <josh@joshtriplett.org> wrote:

> > When we publish a patch with a Signed-off-by, Reviewed-by, Acked-by,
> > Requested-by, Suggested-by, etc, we are actually publishing an electronic
> > address.  
> 
> If they've posted public mails from that email address, that isn't
> "private information" at that point. And in any case someone offering
> such a tag would constitute permission.
> 
> (Publishing someone's private, otherwise-unpublished email address in an
> Acked-by, on the other hand, *could* be problematic. Don't do that.)

And this has been my work flow all along. I'm very conscience of taking
someone's email and publishing it in a "Reported-by". I will first send
an email to the submitter and ask if it is OK to include them if they
sent me the bug report privately.

But yes, if someone sends me a report and Cc's LKML, I will add the
Reported-by with the email address that they used to a public address
without any confirmation.

-- Steve
