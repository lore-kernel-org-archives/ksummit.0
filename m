Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A6E1F995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:51:41 +0000 (UTC)
Received: from e34.co.us.ibm.com (e34.co.us.ibm.com [32.97.110.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 475AE203A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:51:41 +0000 (UTC)
Received: from /spool/local
	by e34.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Wed, 28 May 2014 13:51:40 -0600
Received: from b03cxnp08026.gho.boulder.ibm.com
	(b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
	by d03dlp03.boulder.ibm.com (Postfix) with ESMTP id 5206219D8039
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 13:51:31 -0600 (MDT)
Received: from d03av02.boulder.ibm.com (d03av02.boulder.ibm.com [9.17.195.168])
	by b03cxnp08026.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4SJog9H11206986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 21:50:42 +0200
Received: from d03av02.boulder.ibm.com (localhost [127.0.0.1])
	by d03av02.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s4SJpboP010702 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 13:51:37 -0600
Message-ID: <1401306696.13546.168.camel@dhcp-9-2-203-236.watson.ibm.com>
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: "John W. Linville" <linville@tuxdriver.com>
Date: Wed, 28 May 2014 15:51:36 -0400
In-Reply-To: <20140528191514.GE13255@tuxdriver.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
	<1401304315.13546.142.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528191514.GE13255@tuxdriver.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Wed, 2014-05-28 at 15:15 -0400, John W. Linville wrote: 
> On Wed, May 28, 2014 at 03:11:55PM -0400, Mimi Zohar wrote:
> > On Wed, 2014-05-28 at 18:48 +0000, Paul Walmsley wrote: 
> > > Also long-overdue is a clarification on exactly what "Acked-by" means.
> > > Right now it is being used for at least two distinct and
> > > mutually-incompatible purposes:
> > > 
> > > 1. A maintainer A for code affected by a patch, who is distinct from a
> > > maintainer B queuing a patch, has reviewed the patch and has cleared it as
> > > being OK for maintainer B to send upstream
> > > 
> > > 2. A casual review has been done by someone who is not a maintainer for
> > > the code in question
> > > 
> > > What I would propose is to have the first use replaced by a new tag, 
> > > "Maintainer-acked-by:", and the second use abolished, along with 
> > > "Acked-by:", and replaced by "Reviewed-by:".
> > 
> > Agreed, "Acked-by" is ambiguous and should be dis-ambiguated.
> > "Reviewed-by:" is too much of a barrier for people to feel comfortable
> > using.  Just as the "Maintainer-acked-by:" would imply a subset of the
> > patch related to the subsystem, "Reviewed-by" needs something similar to
> > limit its scope.
> 
> I hate to bikeshed this, but "Maintainer-acked-by" seems too long to type...

Agreed, but I don't think its much longer than any of the others. :)

Perhaps more people would feel comfortable adding "Reviewed-by", if they
could limit the scope.  Instead of defining a new tag, perhaps all that
is needed is adding an optional field.  For example, "Reviewed-by
[option]: ", where 'option' could be style, logic, syntax, ...

Mimi
