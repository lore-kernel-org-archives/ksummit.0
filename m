Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15AB696
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 18 Jul 2015 01:42:42 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A525F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 18 Jul 2015 01:42:40 +0000 (UTC)
Date: Sat, 18 Jul 2015 11:42:28 +1000
From: NeilBrown <neilb@suse.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150718114228.0cdee9c6@noble>
In-Reply-To: <20150716125216.0d457104@gandalf.local.home>
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
	<20150716125216.0d457104@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Thu, 16 Jul 2015 12:52:16 -0400 Steven Rostedt <rostedt@goodmis.org>
wrote:

> On Thu, 16 Jul 2015 09:24:56 -0700
> Tim Bird <tim.bird@sonymobile.com> wrote:
> 
> 
> > That's really good feedback.  I've often assumed that if you saw something
> > that needed fixing, you had a responsibility to properly format a patch
> > so as not to burden the maintainer.  I've labeled my own "best-effort,
> > but-probably-not-mainlinable" patches as [RFC PATCH..].  Would it be
> > worth having a convention for that sort of thing?
> 
> At a minimum, the patch should not be html, an attachment, nor have
> broken whitespace where the patch doesn't apply. But other than that,
> just report the bug and say "this fixes it for me". And if it is a real
> bug, the maintainer should take it.
> 
> Now, some maintainers will want to let the author have credit for the
> patch, and may ask the author to format it differently such that they
> can submit the patch with the original author as credited. I'll do that
> as not to make the fix just with my name on it. So, if you really just
> want the fix upstream, and don't want to bother with the hassle and get
> the author credit for the change, simply state that. Something like: 
> 
> ---
> Note, this patch fixes the bug for me. If there's a better solution, or
> it needs tweaking feel free to make the change. I don't need to be
> author of the patch, a Reported-by is fine with me.
> 
> The '---' is to have that not be part of the change log in case they
> do take the patch as is.
> 
> If it's not much tweaking, I'll take the patch, make the modifications
> I want, and just add a comment to the change log about my updates,
> leaving the original author as the author of the patch.
> 

Yes.  Absolutely.  A patch is a gift - some unwrapping may be required.

We talk a lot about creating tooling to help newbies submit perfect
patches.  Maybe we need to spend more time creating tooling to help old
timers accept imperfect patches.

How hard would it be to get "patch" or "git apply" to apply
white-space-damaged patches?  Wiggle does a good job of a certain
class.  I came this --><--- close to getting wiggle to strip trailing
'\r', but I never received that third patch to push me over the edge.

How hard would it be to create a pre-commit hook that strips trailing
spaces, NormalizesCamelCase, and imposes Reverse Christmas Notation (or
whatever it is).  It could even add "FOO:" to the start of the
patch summary for any patch which modifies the "FOO" subsystem.

How hard would it be to have an SMTP server on submit.kernel.org which
only accepts properly formatted patches addressed to
"linux@kernel.org", performs basic compile tests, runs get_maintainer
and sends it off to the appropriate places.  Then Eager Developer could
just "./scripts/config-email", answer two questions, and "git
submit" (or whatever) would submit their pride and joy to the correct
place.  ./scripts/config-email would probably install the pre-commit
hooks so that bad white space would never even get to git.

NeilBrown
