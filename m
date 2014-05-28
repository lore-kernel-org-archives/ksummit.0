Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B471DAB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:12:00 +0000 (UTC)
Received: from e38.co.us.ibm.com (e38.co.us.ibm.com [32.97.110.159])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3BB2F203CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:12:00 +0000 (UTC)
Received: from /spool/local
	by e38.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Wed, 28 May 2014 13:11:59 -0600
Received: from b03cxnp07029.gho.boulder.ibm.com
	(b03cxnp07029.gho.boulder.ibm.com [9.17.130.16])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id 052C23E40044
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 13:11:57 -0600 (MDT)
Received: from d03av02.boulder.ibm.com (d03av02.boulder.ibm.com [9.17.195.168])
	by b03cxnp07029.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4SH8b9p9109864
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:08:37 +0200
Received: from d03av02.boulder.ibm.com (localhost [127.0.0.1])
	by d03av02.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s4SJBuSo005662 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 13:11:56 -0600
Message-ID: <1401304315.13546.142.camel@dhcp-9-2-203-236.watson.ibm.com>
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Paul Walmsley <paul@pwsan.com>
Date: Wed, 28 May 2014 15:11:55 -0400
In-Reply-To: <alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
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

On Wed, 2014-05-28 at 18:48 +0000, Paul Walmsley wrote: 
> Also long-overdue is a clarification on exactly what "Acked-by" means.
> Right now it is being used for at least two distinct and
> mutually-incompatible purposes:
> 
> 1. A maintainer A for code affected by a patch, who is distinct from a
> maintainer B queuing a patch, has reviewed the patch and has cleared it as
> being OK for maintainer B to send upstream
> 
> 2. A casual review has been done by someone who is not a maintainer for
> the code in question
> 
> What I would propose is to have the first use replaced by a new tag, 
> "Maintainer-acked-by:", and the second use abolished, along with 
> "Acked-by:", and replaced by "Reviewed-by:".

Agreed, "Acked-by" is ambiguous and should be dis-ambiguated.
"Reviewed-by:" is too much of a barrier for people to feel comfortable
using.  Just as the "Maintainer-acked-by:" would imply a subset of the
patch related to the subsystem, "Reviewed-by" needs something similar to
limit its scope.

Mimi
