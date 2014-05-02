Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D6F154C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:30:55 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 58FE51FB51
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:30:55 +0000 (UTC)
Date: Fri, 2 May 2014 22:30:52 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Steven Rostedt <rostedt@goodmis.org>
In-Reply-To: <20140502162703.0e8ce876@gandalf.local.home>
Message-ID: <alpine.LNX.2.00.1405022227590.29834@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
	<20140502160959.48b71dec@gandalf.local.home>
	<alpine.LNX.2.00.1405022211310.29834@pobox.suse.cz>
	<20140502162703.0e8ce876@gandalf.local.home>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
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

> > Hmm, I don't see how maintainer cherry-picking into 'for-stable' branch is 
> > different from stable team cherry-picking from Linus' tree.
> 
> I think it's more a level of trust. IIRC (and Greg, please chime in
> here) there's been more than one instance that people would send Greg
> something for stable that hasn't hit mainline.

I am pretty sure that is happening quite often indeed ... I come across 
Greg's "form letter" respones rather regularly :)

> Moving to git pull requests may make it much more difficult to verify
> this.

The whole point of my proposal is moving much more responsibility to 
subsystem maintainers. I really do hope that whenever someone is trying to 
trick the stable rules, it's a random contributor and not a subsystem 
maintainer.

> > The rule that Linus' tree commit has to be referenced in the commit 
> > message (cherry-picking implies rebase anyway) can of course stay as-is, 
> > and is automatically verifiable.
> 
> Yeah, perhaps an automated way to verify git pull requests would work.
> Each commit would have to have a specific way to specify what commit it
> backported. 

This is more or less standardized now anyway.

> Then the tool could compare that commit with the commit in Linus's tree. 
> If it's too different, then it would not accept it and would require 
> manual intervention to allow it.
> 
> Now there's also the problem of not just matching what's in mainline,
> but also being something that should go to stable. It may be a feature
> and not a true bug fix. That would still require Greg (or who ever is
> maintaining the stable tree) to look over each change.

Works with Linus and merge window vs. post-merge-window pull requests 
(which is in principle the same), which are supposedly *MUCH* larger 
volume. Is there any reason this shouldn't work on a magnitudes smaller 
scale, which stable tree is?

Thanks,

-- 
Jiri Kosina
SUSE Labs
