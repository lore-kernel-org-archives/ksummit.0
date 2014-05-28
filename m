Return-Path: <paul@pwsan.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EF97E7FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 18:55:28 +0000 (UTC)
Received: from utopia.booyaka.com (utopia.booyaka.com [74.50.51.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 82EE12039E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 18:55:28 +0000 (UTC)
Date: Wed, 28 May 2014 18:48:47 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
Message-ID: <alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] Reforming Acked-by (was Re: [TOPIC] Encouraging
 more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


Also long-overdue is a clarification on exactly what "Acked-by" means.
Right now it is being used for at least two distinct and
mutually-incompatible purposes:

1. A maintainer A for code affected by a patch, who is distinct from a
maintainer B queuing a patch, has reviewed the patch and has cleared it as
being OK for maintainer B to send upstream

2. A casual review has been done by someone who is not a maintainer for
the code in question

What I would propose is to have the first use replaced by a new tag, 
"Maintainer-acked-by:", and the second use abolished, along with 
"Acked-by:", and replaced by "Reviewed-by:".


- Paul
