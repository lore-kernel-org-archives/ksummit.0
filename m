Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B065CA83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:51:08 +0000 (UTC)
Received: from e39.co.us.ibm.com (e39.co.us.ibm.com [32.97.110.160])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 36B78201B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:51:08 +0000 (UTC)
Received: from /spool/local
	by e39.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Wed, 28 May 2014 10:51:07 -0600
Received: from b03cxnp08027.gho.boulder.ibm.com
	(b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id DA5BE3E40040
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 10:51:04 -0600 (MDT)
Received: from d03av02.boulder.ibm.com (d03av02.boulder.ibm.com [9.17.195.168])
	by b03cxnp08027.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4SGo8X344040214
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 18:50:08 +0200
Received: from d03av02.boulder.ibm.com (localhost [127.0.0.1])
	by d03av02.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s4SGp402019440 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 10:51:04 -0600
Message-ID: <1401295862.13546.109.camel@dhcp-9-2-203-236.watson.ibm.com>
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Mark Brown <broonie@kernel.org>
Date: Wed, 28 May 2014 12:51:02 -0400
In-Reply-To: <20140528163902.GA5099@sirena.org.uk>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<20140528143246.GV15585@mwanda>
	<CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
	<20140528163902.GA5099@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2014-05-28 at 17:39 +0100, Mark Brown wrote: 
> On Wed, May 28, 2014 at 04:39:15PM +0200, Daniel Vetter wrote:
> 
> > My approach has been to insist on an in-patch revision log which gets
> > included in the commit. And that for any changes and bugs spotted the
> > reviewer/commenter must be acknowleged. See e.g.
> > d978ef14456a38034f6c0e for a very nice example of that. But that's
> > also a good example for no tag to acknowledge all the work that went
> > into this review/patch, since I've done the final review myself and
> > only put my sob onto the patch.
> 
> This does mean that the final changelogs that get included in the kernel
> get very large and noisy and is relying on the submitters doing a good
> job paying attention to review comments in the first place, recording
> exactly what changed and so on.  They are sometimes useful but normally
> I'm finding very little value in the changelogs in the first place,
> generally it doesn't really matter what the problems were in any
> previous versions.

True, but when you have to squash patches there needs to be at least
some recognition of who contributed what.

Mimi
