Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3C8CCACB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 20:15:50 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE43020315
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 20:15:49 +0000 (UTC)
Date: Wed, 28 May 2014 13:15:46 -0700
From: josh@joshtriplett.org
To: Paul Walmsley <paul@pwsan.com>
Message-ID: <20140528201546.GB14247@cloud>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281832550.1280@utopia.booyaka.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1405281832550.1280@utopia.booyaka.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 28, 2014 at 06:47:43PM +0000, Paul Walmsley wrote:
> On Sat, 24 May 2014, James Bottomley wrote:
> 
> > I'm sure there are many other things people could suggest.
> 
> What's needed is to bring quality reviewers up to the same level of 
> recognition and control as maintainers.
> 
> Ideally, maintainers would recognize quality reviewers, and list them in 
> the MAINTAINERS file - perhaps with an "R:" tag?  Maintainers would be 
> expected to designate at least one quality reviewer, but ideally more, for 
> a given subsystem.  
> 
> Then we should require every patch to have at least one "Reviewed-by:", 
> aside from the maintainer's "Signed-off-by:" before being merged.  This 
> "Reviewed-by:" could come from the maintainer, but ideally would come from 
> a quality reviewer.
> 
> Patch submitters would need to get their patches reviewed by at least one 
> of the recognized reviewers before expecting it to be merged.
> 
> Part of the goal here would also be to convert quality reviewers into 
> co-maintainers over time, so maintainership duties can be spread among a 
> larger group of people.

I would love to see this changed.  Right now, only people considered
co-maintainers get listed in MAINTAINERS.  With how get_maintainer.pl
works, it would make sense to use it as a more general list of "CC these
people on patches to this subsystem".

Many subsystems use mailing lists for this, but mailing lists suffer
from diffusion of responsibility: "someone else on the list can review
this patch".

- Josh Triplett
