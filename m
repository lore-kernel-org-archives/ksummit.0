Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E1D4127F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 19:36:59 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D987D79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 19:36:58 +0000 (UTC)
Date: Tue, 18 Sep 2018 12:36:45 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20180918193644.GA5400@localhost>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20180918162948.769dda1d@coco.lan>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
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

On Tue, Sep 18, 2018 at 04:29:48PM -0300, Mauro Carvalho Chehab wrote:
> Em Tue, 18 Sep 2018 10:02:08 -0400
> James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> 
> > > After the past 2-3 days I get the feeling there are maintainers
> > > unsure about how this affects them and I think assuaging those fears
> > > might be a good thing.
> > > 
> 
> > From my perspective, which is probably fairly widespread: we're already
> > pretty much policing the lists using a set of rules which match fairly
> > closely to the new CoC, so there should really be no huge impact.
> 
> After carefully reading it a couple of times, I think it has a huge
> impact.
> 
> The more immediate impact is with regards to this wording:
> 
> 	"Examples of unacceptable behavior by participants include:
> 	...
> 	* Publishing others’ private information, such as a physical or electronic
> 	  address, without explicit permission"
> 
> When we publish a patch with a Signed-off-by, Reviewed-by, Acked-by,
> Requested-by, Suggested-by, etc, we are actually publishing an electronic
> address.

If they've posted public mails from that email address, that isn't
"private information" at that point. And in any case someone offering
such a tag would constitute permission.

(Publishing someone's private, otherwise-unpublished email address in an
Acked-by, on the other hand, *could* be problematic. Don't do that.)

Nonetheless, it probably couldn't hurt to have some notes on this
situation somewhere.
