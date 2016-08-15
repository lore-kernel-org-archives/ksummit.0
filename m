Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 328531BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 16:14:17 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0FDEA2EF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 16:14:16 +0000 (UTC)
Date: Mon, 15 Aug 2016 09:14:08 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: James Hogan <james.hogan@imgtec.com>
Message-ID: <20160815161408.icfczva5a7fr4fni@x>
References: <20160729075039.GA26402@x>
	<20160805021426-mutt-send-email-mst@kernel.org>
	<20160805202615.lpnrhi2lswz24iny@x>
	<20160815132004.GB21566@jhogan-linux.le.imgtec.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160815132004.GB21566@jhogan-linux.le.imgtec.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a
 patch series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 15, 2016 at 02:20:04PM +0100, James Hogan wrote:
> On Fri, Aug 05, 2016 at 10:26:15AM -1000, Josh Triplett wrote:
> > On Fri, Aug 05, 2016 at 02:52:18AM +0300, Michael S. Tsirkin wrote:
> > > And how about "git series cherry-pick" - to apply
> > > series to the current head?
> > 
> > Could you elaborate on the semantic of this?  You have a series in your
> > tree, and you want to take all the patches in the series and apply them
> > to HEAD?  Or, do you want to copy the series and rebase the copy on HEAD?
> > 
> > For the former, once I add support for formatting a series other than
> > the current one, you could do that with "git series format seriesname
> > --stdout | git am".
> 
> FWIW I had to do the latter the other day to check which stable branches
> needed distinct backports. Since git series doesn't seem to allow
> "forking" of a series yes (i.e. analagous to git checkout -b b1 b2), i
> ended up doing something along the lines of this repeatedly:
> 
> git branch git-series/$feature/stable/4.7 git-series/$feature/staging
> git series checkout git-series/$feature/stable/4.7
> git series rebase v4.7
> etc
> 
> (so the new series inherits / branches the history of the old one)
> 
> So it'd be nice to be able to do something like this instead:
> git series checkout -b new_series [old_series = current_series]
> git series rebase v4.7

That seems completely reasonable; thanks for the suggestion!
