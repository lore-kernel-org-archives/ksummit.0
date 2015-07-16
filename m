Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8D32E8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:10:57 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0113.hostedemail.com
	[216.40.44.113])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 44CDF1DCA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:10:56 +0000 (UTC)
Date: Thu, 16 Jul 2015 12:10:52 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Tim Bird <tim.bird@sonymobile.com>
Message-ID: <20150716121052.048bb8c7@gandalf.local.home>
In-Reply-To: <55A7D358.7070203@sonymobile.com>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<55A7D358.7070203@sonymobile.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, 16 Jul 2015 08:52:56 -0700
Tim Bird <tim.bird@sonymobile.com> wrote:

> > Not sure what the real answer is, but something tells me that adding a
> > new domain-specific language to MAINTAINERS isn't quite it :)
> Not to rain on my own idea, but I strenuously agree.  I think one of
> the reasons the SubmittingPatches files is not exhaustive is that

Right. Perhaps the solution is to inform maintainers that when they get
a patch from a newbie that isn't to their methods, to have them send
the author of the patch a nice email that explains to them what they
need.

Perhaps we should come up with a boiler plate of what should be
written, because not all of the maintainers have a proper tact
filter ;-)


> there are too many differences between maintainers for some things,
> and some things change, even for a single maintainer, given the
> type of patch and current maintainer circumstances.  Adding
> to MAINTAINERS doesn't address this last variability at all.
> 
> We've been loathe to try to enforce consistency of process for
> maintainers, thinking it would harm maintainer productivity (and
> it well might).  But it makes automation hard, and you do end
> up with newbies facing these daunting 110-step processes, which
> still omit important steps, and might be contradictory for 
> cross-system submissions.

I'm surprised that the Linux kernel, as big as it is, is as uniformed as
it is. When you herd a 1000 cats, you can't make them all follow the
same path, but you can at least have them all going in the same
direction.

-- Steve
