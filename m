Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7F089AB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 20:12:34 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 119922038B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 20:12:34 +0000 (UTC)
Date: Wed, 28 May 2014 13:12:28 -0700
From: josh@joshtriplett.org
To: Paul Walmsley <paul@pwsan.com>
Message-ID: <20140528201228.GA14247@cloud>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
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

On Wed, May 28, 2014 at 06:48:47PM +0000, Paul Walmsley wrote:
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

In practice, (2) seems to have been mostly replaced by "Reviewed-by"; I
rarely see Acked-by used for cases other than (1): "I'm the maintainer
or an affected subsystem developer, I approve of this patch, but I don't
intend to take it through my own tree."

- Josh Triplett
