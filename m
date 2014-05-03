Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 893BB8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 15:40:07 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D37091F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 15:40:06 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.mail.srv.osa [10.202.2.42])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 0013720DF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 11:40:03 -0400 (EDT)
Date: Sat, 3 May 2014 11:40:02 -0400
From: Greg Kroah-Hartman <greg@kroah.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20140503154002.GA13523@kroah.com>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
	<20140502160959.48b71dec@gandalf.local.home>
	<alpine.LNX.2.00.1405022211310.29834@pobox.suse.cz>
	<20140502162703.0e8ce876@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140502162703.0e8ce876@gandalf.local.home>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 02, 2014 at 04:27:03PM -0400, Steven Rostedt wrote:
> On Fri, 2 May 2014 22:12:50 +0200 (CEST)
> Jiri Kosina <jkosina@suse.cz> wrote:
> 
>  
> > Hmm, I don't see how maintainer cherry-picking into 'for-stable' branch is 
> > different from stable team cherry-picking from Linus' tree.
> 
> I think it's more a level of trust. IIRC (and Greg, please chime in
> here) there's been more than one instance that people would send Greg
> something for stable that hasn't hit mainline.

Yes, that has happened more times than I like.  I also get maintainers
sending me patches that say they match a specific git id in Linus's
tree, when they really aren't that at all, or are patches mushed
together, and other horrible things.

So I want a git id list, if you forget to mark the stable cc: in the
patch.  Or a patch with the git id in it, which I will verify really is
the patch in question.

As I said last year, I do take git pulls from subsystem maintainers that
I "trust".  David Miller does great things with him sending mboxes full
of patches.  There's other subsystems that also send me pull requests at
times.  If you, or any other subsystem maintainer wants to do this for
stable trees, that's wonderful, I'll be glad to work with anyone on
this.

But again, I don't want to cause _ANY_ extra burden on subsystem
maintainers for the stable kernel work.  Adding a Cc: is all I will ever
ask for.  Maintainers are our most limited resource right now, and I
will not ask them to spend cycles on something that takes away from
their mainline work.

It's up to the person who is willing to be a stable maintainer to do the
work maintaining that kernel.  That's a responsibility they asked for,
and it's up to them to figure out the easiest way for them to do it.

Asking subsystem maintainers to do work for the stable maintainers is
not acceptable at all.

thanks,

greg k-h
