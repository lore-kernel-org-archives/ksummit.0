Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD42B98B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:21:12 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7C57F2C1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:21:11 +0000 (UTC)
Date: Fri, 29 Jul 2016 09:21:04 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20160729162104.GA12719@x>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
	<CAKMK7uF5ZVi_5m1_Fp6GR6YoC-4eiKuLmx4GtOAxiJOXWZF5RQ@mail.gmail.com>
	<20160729151817.GD12137@x>
	<CAKMK7uGS5_0p-k1mvqPqCfii3_JsGpyW6BvxaYuxDQeuaFs+TA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uGS5_0p-k1mvqPqCfii3_JsGpyW6BvxaYuxDQeuaFs+TA@mail.gmail.com>
Cc: Christoph Lameter <cl@linux.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Fri, Jul 29, 2016 at 05:40:05PM +0200, Daniel Vetter wrote:
> On Fri, Jul 29, 2016 at 5:18 PM, Josh Triplett <josh@joshtriplett.org> wrote:
> > On Fri, Jul 29, 2016 at 05:00:06PM +0200, Daniel Vetter wrote:
> >> And the other reason is the same you have: Editing raw patches is
> >> really powerful for doing rebases over mechanical changes. Function
> >> renames become a trivial quilt pop -a ; sed; while quilt push ; do
> >> make ; done.
> >
> > Interesting!  I'll have to give that some thought, to figure out if
> > I can support workflows like that.
> >
> > What other kinds of changes do you tend to make by editing patches
> > directly?
> 
> The other upshot of raw patches is that you can use horrible risky
> tools like wiggle to force a patch to apply. git is a lot more strict
> and ime wiggle helps you with a lot of simple rebase conflicts. I have
> small helper scripts to integrate wiggle both into that quilt flow
> script, but also into normal git rebase.

That does sound useful.  It'd be nice to have "git apply --wiggle" and
"git am --wiggle", too.

> > I'm tempted to add a "git series filter" that applies filter-branch to
> > the commits in the series, or something similar to that.  I'll also have
> > to think about the use case of testing each commit in the series, to see
> > if that needs support from git-series or just from underlying git tools.
> 
> Another one I really started to like is that you can visually compare
> changes to a patch. It takes a bit of experience reading them, but
> after a while diffs-of-patches start to make as much sense as a plain
> patch, e.g.
> - Context movements easily stand out, they only touch @@ lines or
> lines not starting in +/-.
> - Rebasing adjustements in the patch itself (in the + lines of the patch).
> - Direct code conflicts with upstream (anything that changes a - line
> in the patch).
> 
> I think that's the other massive benefit of working on a pile of patches.

That's actually the output I'm planning to provide for "git series diff"
or "git series log -p" to show the diff between patch series.

> But the problem is that all three (bisecting, sed on raw patches and
> patch-diffs) are only really useful if you have to maintain a rebasing
> tree over a really long time (months/years). I think for a normal
> feature patch series your git series is more than sufficient.

I'd like git-series to work for both workflows.  The feature patch case
is definitely easier, but I'd like to support long-standing rebasing
trees too.  Use cases include maintainer trees like yours, as well as
distribution packaging repositories with patches, and vendor/product
kernels.

> PS: Since we work for the same company I can actually show you the
> internal branch if you're interested in how this works ;-)

Definitely interested; perhaps when I'm back from sabbatical. :)

- Josh Triplett
