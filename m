Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 94C8CBC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 09:22:28 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 979DFA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 09:22:27 +0000 (UTC)
Date: Mon, 13 Jul 2015 11:22:21 +0200
From: Jan Kara <jack@suse.cz>
To: NeilBrown <neilb@suse.com>
Message-ID: <20150713092221.GA8609@quack.suse.cz>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150713105210.6e367f4b@noble>
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

  Hello,

On Mon 13-07-15 10:52:10, NeilBrown wrote:
> 
> I've been bitten by this a couple of times too.  At least two fairly
> serious md bugs *never* got into a release from Linus, but did get into
> -stable and at least one into a vendor kernel.
>
> On Sun, 12 Jul 2015 09:32:11 -0400 Sasha Levin <sasha.levin@oracle.com>
> wrote:
> 
> 
> > > So it boils down to: "How soon to apply fixes to -stable?", and the trade-off
> > > between applying fixes early, but risking to break something unknown and new,
> > > vs. applying fixes late (after more validation), causing more breakage from a
> > > known issue.
> > 
> > That's just one solution, but there are a few more (which is why it's worth discussing
> > it :) ).
> > 
> > Consider also:
> > 
> >  - Aligning the stable release process with the kernel where we'd do a few release
> > candidates for the stable kernel before releasing it.
> > 
> >  - Tightening what is allowed to go in as -rc patches, requiring some time in -next
> > before it even gets into Linus's hands. Even for "serious" things (does it matter if
> > a fix for a privesc gets in -rc2 or -rc6, beyond that it would be pulled to stable
> > earlier?)
> > 
> >  - Differentiate the type of patches going into "regular" -stable, and LTS?
> > 
> 
> My proposal would be to change the default timing.
> Currently patches tagged for 'stable' go into the next -stable release
> after they get into Linus's tree.  You can ask for an exception
> (sooner, later, different patch) and Greg (or any other stable
> maintainer) tries to be accommodating.  But you have to remember to ask.
> 
> I would rather that the default was that patches don't go into -stable
> until they have
>   - been in a full release from Linus and
>   - been in a Linus's tree for at least 2 weeks.
>     (or 1 week times the age of the target in releases.
>      So a fix in 4.4 get to 4.3-stable after a week, 4.2-stable
>      after 2 weeks etc .... maybe I'm going over-board here).
> 
> Many fixes are important but simply aren't that urgent so the two or
> more weeks is no great cost.

I agree with this and it seems as a sensible thing. In the last merge window
I had introduced two regression (:-|) - one in audit and one in ext4.
Neither of these two patches was marked for stable but that doesn't really
make a difference. Now both patches passed a review, testing in maintainer
tree, testing in linux-next for quite a while and only once they went into
Linus' tree people found the regression relatively quickly (couple of days,
definitely less than two weeks). And it's not like maintainers were
mindlessly applying patches or not testing their tree, just they happened
to not hit the bugs. It's the breadth of testing Linus' tree gets which
helps to shake out more subtle bugs. So from that point of view leting the
patch live for some time in Linus' tree before merging it into stable tree
makes sense to me.

One could argue that we should be doing more testing of linux-next but
people tend to develop against Linus' tree rather than linux-next which
also makes Linus' tree natural testing target... So I think that would be
a difficult fight for doubtful gain.

								Honza
-- 
Jan Kara <jack@suse.cz>
SUSE Labs, CR
