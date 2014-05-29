Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6498F82D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 15:58:57 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1CEC41FA28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 15:58:57 +0000 (UTC)
Message-ID: <53875932.1030604@zytor.com>
Date: Thu, 29 May 2014 08:58:42 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Paul Walmsley <paul@pwsan.com>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
In-Reply-To: <alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On 05/28/2014 11:48 AM, Paul Walmsley wrote:
> 
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
> 

The distinction is on the right side of the colon.  It's a matter of
reputation.

	-hpa
