Return-Path: <linville@tuxdriver.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1A67EAEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:30:15 +0000 (UTC)
Received: from smtp.tuxdriver.com (charlotte.tuxdriver.com [70.61.120.58])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EE7AC203B8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:30:13 +0000 (UTC)
Date: Wed, 28 May 2014 15:15:14 -0400
From: "John W. Linville" <linville@tuxdriver.com>
To: Mimi Zohar <zohar@linux.vnet.ibm.com>
Message-ID: <20140528191514.GE13255@tuxdriver.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
	<1401304315.13546.142.camel@dhcp-9-2-203-236.watson.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1401304315.13546.142.camel@dhcp-9-2-203-236.watson.ibm.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
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

On Wed, May 28, 2014 at 03:11:55PM -0400, Mimi Zohar wrote:
> On Wed, 2014-05-28 at 18:48 +0000, Paul Walmsley wrote: 
> > Also long-overdue is a clarification on exactly what "Acked-by" means.
> > Right now it is being used for at least two distinct and
> > mutually-incompatible purposes:
> > 
> > 1. A maintainer A for code affected by a patch, who is distinct from a
> > maintainer B queuing a patch, has reviewed the patch and has cleared it as
> > being OK for maintainer B to send upstream
> > 
> > 2. A casual review has been done by someone who is not a maintainer for
> > the code in question
> > 
> > What I would propose is to have the first use replaced by a new tag, 
> > "Maintainer-acked-by:", and the second use abolished, along with 
> > "Acked-by:", and replaced by "Reviewed-by:".
> 
> Agreed, "Acked-by" is ambiguous and should be dis-ambiguated.
> "Reviewed-by:" is too much of a barrier for people to feel comfortable
> using.  Just as the "Maintainer-acked-by:" would imply a subset of the
> patch related to the subsystem, "Reviewed-by" needs something similar to
> limit its scope.

I hate to bikeshed this, but "Maintainer-acked-by" seems too long to type...

-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.
