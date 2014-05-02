Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9E0B021
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:12:52 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2755F1FB23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:12:52 +0000 (UTC)
Date: Fri, 2 May 2014 22:12:50 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Steven Rostedt <rostedt@goodmis.org>
In-Reply-To: <20140502160959.48b71dec@gandalf.local.home>
Message-ID: <alpine.LNX.2.00.1405022211310.29834@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
	<20140502160959.48b71dec@gandalf.local.home>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Fri, 2 May 2014, Steven Rostedt wrote:

> > I'd like to re-iterate my usual question / discussion topic of 
> > responsibility distribution for -stable patches; my proposal again would 
> > be to align the -stable tree workflow with Linus' tree workflow -- i.e. 
> > subsystem maintainers preparing 'for-stable' branches and sending pull 
> > requests to the stable team, instead of rather random cherry-picking of 
> > the patches from the air as they fly by the stable team members.
> 
> But the stable tree has a distinct requirement of all patches having to
> be first in mainline.
> 
> Having a pull request can allow people to sneak things in that may not
> be in Linus's tree. That would be bad. The cherry-picking guarantees
> that only changes that were in Linus's tree get into stable.

Hmm, I don't see how maintainer cherry-picking into 'for-stable' branch is 
different from stable team cherry-picking from Linus' tree.

The rule that Linus' tree commit has to be referenced in the commit 
message (cherry-picking implies rebase anyway) can of course stay as-is, 
and is automatically verifiable.

-- 
Jiri Kosina
SUSE Labs
