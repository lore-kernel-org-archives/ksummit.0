Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5828E995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:49:53 +0000 (UTC)
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 105782038D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:49:53 +0000 (UTC)
Received: by mail-pa0-f44.google.com with SMTP id ld10so11617433pab.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 12:49:52 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 28 May 2014 12:49:36 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Paul Walmsley <paul@pwsan.com>
Message-ID: <20140528194936.GA29399@roeck-us.net>
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
> 

Not sure I understand the problem with "It is a record that the acker
has at least reviewed the patch and has indicated acceptance".

Guess you are saying this is a bad thing, that reviewers should not
have the means to indicate such a level of acceptance except for affected
subsystem maintainers, and that everyone else should either do a full
formal review or nothing. That seems a bit extreme to me, and I don't
entirely understand how this would improve the situation.

Guenter
