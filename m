Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 80D9C85D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:18:49 +0000 (UTC)
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 24D551FB4F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:18:49 +0000 (UTC)
Received: by mail-pb0-f49.google.com with SMTP id jt11so11924761pbb.36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:18:48 -0700 (PDT)
Date: Wed, 28 May 2014 16:18:45 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20140528231845.GA8518@core.coreip.homeip.net>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140528201228.GA14247@cloud>
	<1442785.duAJunkqTR@dtor-d630.eng.vmware.com>
	<1734054.557RqAjsBf@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1734054.557RqAjsBf@avalon>
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

On Thu, May 29, 2014 at 01:02:59AM +0200, Laurent Pinchart wrote:
> On Wednesday 28 May 2014 13:22:42 Dmitry Torokhov wrote:
> > On Wednesday, May 28, 2014 01:12:28 PM josh@joshtriplett.org wrote:
> > > On Wed, May 28, 2014 at 06:48:47PM +0000, Paul Walmsley wrote:
> > > > Also long-overdue is a clarification on exactly what "Acked-by" means.
> > > > Right now it is being used for at least two distinct and
> > > > mutually-incompatible purposes:
> > > > 
> > > > 1. A maintainer A for code affected by a patch, who is distinct from a
> > > > maintainer B queuing a patch, has reviewed the patch and has cleared it
> > > > as being OK for maintainer B to send upstream
> > > > 
> > > > 2. A casual review has been done by someone who is not a maintainer for
> > > > the code in question
> > > > 
> > > > What I would propose is to have the first use replaced by a new tag,
> > > > "Maintainer-acked-by:", and the second use abolished, along with
> > > > "Acked-by:", and replaced by "Reviewed-by:".
> > > 
> > > In practice, (2) seems to have been mostly replaced by "Reviewed-by"; I
> > > rarely see Acked-by used for cases other than (1): "I'm the maintainer
> > > or an affected subsystem developer, I approve of this patch, but I don't
> > > intend to take it through my own tree."
> > 
> > I believe we still need a separate mark for casual review. I can scan
> > a patch and find a few item that i might now like, but if I do not
> > do full review in the first pass and then again after the issues
> > that have been pointed out have been corrected I won't be stamping
> > "Reviewed-by" on the patch.
> > 
> > Nitpicked-by? :)
> 
> Do such casual reviews need to be recorded in the git history ? I tend to just 
> reply with "looks good to me" when I just skim through a patch, and I don't 
> think that deserves being recorded for posterity.

I personally do not care if it gets recorded or not as long as issue is
resolved but we are talking about giving more credit to reviewers to
make process more appealing...

Thanks.

-- 
Dmitry
