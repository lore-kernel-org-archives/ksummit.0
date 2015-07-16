Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 922E0B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:52:20 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0113.hostedemail.com
	[216.40.44.113])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 0328A1DCCA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:52:19 +0000 (UTC)
Date: Thu, 16 Jul 2015 12:52:16 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Tim Bird <tim.bird@sonymobile.com>
Message-ID: <20150716125216.0d457104@gandalf.local.home>
In-Reply-To: <55A7DAD8.2080902@sonymobile.com>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<55A7D73F.4020105@sonymobile.com>
	<20150716121620.65ce6daa@gandalf.local.home>
	<55A7DAD8.2080902@sonymobile.com>
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

On Thu, 16 Jul 2015 09:24:56 -0700
Tim Bird <tim.bird@sonymobile.com> wrote:


> That's really good feedback.  I've often assumed that if you saw something
> that needed fixing, you had a responsibility to properly format a patch
> so as not to burden the maintainer.  I've labeled my own "best-effort,
> but-probably-not-mainlinable" patches as [RFC PATCH..].  Would it be
> worth having a convention for that sort of thing?

At a minimum, the patch should not be html, an attachment, nor have
broken whitespace where the patch doesn't apply. But other than that,
just report the bug and say "this fixes it for me". And if it is a real
bug, the maintainer should take it.

Now, some maintainers will want to let the author have credit for the
patch, and may ask the author to format it differently such that they
can submit the patch with the original author as credited. I'll do that
as not to make the fix just with my name on it. So, if you really just
want the fix upstream, and don't want to bother with the hassle and get
the author credit for the change, simply state that. Something like: 

---
Note, this patch fixes the bug for me. If there's a better solution, or
it needs tweaking feel free to make the change. I don't need to be
author of the patch, a Reported-by is fine with me.

The '---' is to have that not be part of the change log in case they
do take the patch as is.

If it's not much tweaking, I'll take the patch, make the modifications
I want, and just add a comment to the change log about my updates,
leaving the original author as the author of the patch.

-- Steve
