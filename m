Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BC431990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 05:11:36 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3D1D01F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 05:11:36 +0000 (UTC)
Message-ID: <1401253891.428.6.camel@dabdike>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jkosina@suse.cz>
Date: Wed, 28 May 2014 09:11:31 +0400
In-Reply-To: <alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2014-05-27 at 23:22 +0200, Jiri Kosina wrote:
> On Wed, 28 May 2014, James Bottomley wrote:
> 
> > > With my distro person hat on, I'd really like to call at least for pushing 
> > > driver maintainers much harder to be a lot more verbose in their 
> > > changelogs (if splitting the commits into smaller chunks is not an 
> > > option). Without that, trying to find out what change might potentially 
> > > cause what kind of behavior turns into a nightmare.
> > > 
> > > For an example picked up in a completely in random, look at this one
> > > 
> > > 	commit 1ba981fd3ad1f91b8bb205ce6aac6aad45f2fa7a
> > > 	Author: James Smart <james.smart@emulex.com>
> > > 	Date:   Thu Feb 20 09:56:45 2014 -0500
> > > 
> > > 	    [SCSI] lpfc 8.3.45: Incorporated support of a low-latency io path
> > 
> > Well, I don't disagree, but getting driver writers to supply changelogs
> > is hard.  
> 
> I know. But there just a one single force on planet Earth that can make 
> this happen, and that's maintainer saying "No, you have to do better".

Look, in the immortal words of Bill Clinton: I feel your pain.  However,
having it all be the Maintainer's fault isn't scalable.

> > For the ones I understand, I've rewritten (or even composed) quite a few 
> > change logs myself because I often don't get anything usable back when I 
> > request a rewrite.
> 
> Are you implying that Linux is still not in a position to force HW vendor 
> companies to rather invest 30 man-minutes in order to have a proper 
> changelog and driver merged in Linus' tree compared to receiving bad 
> public press when they are being rejected (especially for such negligible 
> reason as changelog text)?

To paraphrase Martin: hell, yes.

> > My intolerance for bad changelogs is high in shared code, but for single 
> > vendor drivers it's often hard just to get the code and keep it in sync, 
> > so I have a lot lower tolerance.
> 
> Unfortunately this doesn't make much of a difference for distro vendors 
> when chasing unknown bugs.

So please help me.  I have quite a few distro people on my list, it
would be enormously helpful if they reviewed a few vendor patches,
perhaps suggesting workable changelogs in the review ... it doesn't have
to be every patch, which is unmanageable, but a few to act as training
wheels.

James
