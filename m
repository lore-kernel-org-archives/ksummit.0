Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4A122875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 22:16:35 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ABB411FC50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 22:16:34 +0000 (UTC)
Date: Sat, 3 May 2014 00:16:32 +0200
From: Jan Kara <jack@suse.cz>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140502221632.GF23636@quack.suse.cz>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
	<20140502160959.48b71dec@gandalf.local.home>
	<alpine.LNX.2.00.1405022211310.29834@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1405022211310.29834@pobox.suse.cz>
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

On Fri 02-05-14 22:12:50, Jiri Kosina wrote:
> On Fri, 2 May 2014, Steven Rostedt wrote:
> 
> > > I'd like to re-iterate my usual question / discussion topic of 
> > > responsibility distribution for -stable patches; my proposal again would 
> > > be to align the -stable tree workflow with Linus' tree workflow -- i.e. 
> > > subsystem maintainers preparing 'for-stable' branches and sending pull 
> > > requests to the stable team, instead of rather random cherry-picking of 
> > > the patches from the air as they fly by the stable team members.
> > 
> > But the stable tree has a distinct requirement of all patches having to
> > be first in mainline.
> > 
> > Having a pull request can allow people to sneak things in that may not
> > be in Linus's tree. That would be bad. The cherry-picking guarantees
> > that only changes that were in Linus's tree get into stable.
> 
> Hmm, I don't see how maintainer cherry-picking into 'for-stable' branch is 
> different from stable team cherry-picking from Linus' tree.
  So how things work in the areas I work in is that either a patch author
or the maintainer add CC stable to the patch and then it gets eventually
automatically propagated to the stable tree. I don't see how this is
practically different from the maintainer putting together a pull request.
In both cases the maintainer has control over what patches are going to
stable.

Now I understand that if there are more levels of maintainers & thus git
trees, the top level maintainer has much smaller control over what gets
tagged for stable (in theory he could inspect all the commits he's pulling
and verify sanity of stable tags but I understand not many people do this).
But is this what you are concerned about? Or are you concerned about people
sending Greg inappropriate requests to include stuff?

								Honza
-- 
Jan Kara <jack@suse.cz>
SUSE Labs, CR
