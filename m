Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C551E39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 23:38:08 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB195318
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 23:38:07 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 19 Sep 2018 02:38:18 +0300
Message-ID: <7909721.24ppt1u8vO@avalon>
In-Reply-To: <20180918190618.6be95e7b@gandalf.local.home>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<20180918193644.GA5400@localhost>
	<20180918190618.6be95e7b@gandalf.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>
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

On Wednesday, 19 September 2018 02:06:18 EEST Steven Rostedt wrote:
> On Tue, 18 Sep 2018 12:36:45 -0700 Josh Triplett  wrote:
> > > When we publish a patch with a Signed-off-by, Reviewed-by, Acked-by,
> > > Requested-by, Suggested-by, etc, we are actually publishing an
> > > electronic
> > > address.
> > 
> > If they've posted public mails from that email address, that isn't
> > "private information" at that point. And in any case someone offering
> > such a tag would constitute permission.
> > 
> > (Publishing someone's private, otherwise-unpublished email address in an
> > Acked-by, on the other hand, *could* be problematic. Don't do that.)
> 
> And this has been my work flow all along. I'm very conscience of taking
> someone's email and publishing it in a "Reported-by". I will first send
> an email to the submitter and ask if it is OK to include them if they
> sent me the bug report privately.
> 
> But yes, if someone sends me a report and Cc's LKML, I will add the
> Reported-by with the email address that they used to a public address
> without any confirmation.

Taking a step back, I'd like to clarify the intent of this specific provision 
before discussing its working or any FAQ entry that we believe is needed.

As I understand it, the intent is to avoid individuals being put under the 
spotlight without consent, with the risks of harassment that could follow (or, 
probably usual in the problematic cases, with the disclosure already being 
part of a harassment campaign).

If that assumption is correct, I believe we could clarify the intent by 
stating that (probably reworded by a better English speaker than me) is 
excluded from private information in the context of a public communication any 
information already posted to public channels in the same context (the context 
is important here, as if someone digs up messages I posted, let's say on 
health-related public forums, with my name hidden but associated with the same 
e-mail address, those would still be private information).

Additionally, and this applies more broadly, I believe it would be useful to 
clearly state that accidental disclosure of private information that could 
reasonably not be interpreted as private by the discloser will not result in 
immediate retaliation on the first occurrence. The goal of the code of 
conduct, as I interpret it, is to define the generally accepted an unaccepted 
behaviour, not to be used as an excuse to punish anyone.

-- 
Regards,

Laurent Pinchart
