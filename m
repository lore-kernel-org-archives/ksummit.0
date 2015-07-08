Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 390A3B68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:56:28 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A614175
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:56:27 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 08 Jul 2015 22:56:38 +0300
Message-ID: <6295903.xabUbmnLAs@avalon>
In-Reply-To: <20150708145315.29030a75@gandalf.local.home>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
	Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday 08 July 2015 14:53:15 Steven Rostedt wrote:
> On Wed, 08 Jul 2015 09:00:32 +0100 jic23@jic23.retrosnub.co.uk wrote:
> > > We can alter that somewhat.  We used to run a Maintainers lottery for
> > > the kernel summit ... we could instead offer places based on the number
> > > of Reviewed-by: tags ... we have all the machinery to calculate that.  I
> > > know an invitation to the kernel summit isn't a huge incentive, but it's
> > > a useful one.
> > 
> > Sounds like a good idea to me, though it would only effect a tiny
> > percentage of our reviewers.  I suppose publishing a short list of the top
> > n% of reviewers from which the lottery runs might give some
> > recognition.
> 
> I personally don't trust a Reviewed-by tag much, as I sometimes see
> them appear without any comments.
> 
> I was thinking of writing a perl script that would read my LKML archive
> and somewhat intelligently looking at people who replied to patches,
> that also has snippets of the patch in the reply, and counting them. I
> think that would be a more accurate use of real reviewers than just the
> Reviewed-by tag.

Reviewed-by or Acked-by metrics are unfortunately very easy to game. If we 
could make them more robust, we could publish statistics as we do for commits 
authorship (http://remword.com/kps_result/ for instance) and start mentioning 
people's names in kernel development reports. That might not be much, but it 
could help reviewers feeling valued for their work.

-- 
Regards,

Laurent Pinchart
