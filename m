Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B090AAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:53:18 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0102.hostedemail.com
	[216.40.44.102])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 24831E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:53:18 +0000 (UTC)
Date: Wed, 8 Jul 2015 14:53:15 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: jic23@jic23.retrosnub.co.uk
Message-ID: <20150708145315.29030a75@gandalf.local.home>
In-Reply-To: <20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Wed, 08 Jul 2015 09:00:32 +0100
jic23@jic23.retrosnub.co.uk wrote:


> > We can alter that somewhat.  We used to run a Maintainers lottery for
> > the kernel summit ... we could instead offer places based on the number
> > of Reviewed-by: tags ... we have all the machinery to calculate that.  I
> > know an invitation to the kernel summit isn't a huge incentive, but it's
> > a useful one.
> 
> Sounds like a good idea to me, though it would only effect a tiny
> percentage of our reviewers.  I suppose publishing a short list of the top 
> n% of reviewers from which the lottery runs might give some
> recognition. 
> 

I personally don't trust a Reviewed-by tag much, as I sometimes see
them appear without any comments.

I was thinking of writing a perl script that would read my LKML archive
and somewhat intelligently looking at people who replied to patches,
that also has snippets of the patch in the reply, and counting them. I
think that would be a more accurate use of real reviewers than just the
Reviewed-by tag.

-- Steve
