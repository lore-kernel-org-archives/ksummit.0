Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9859F99A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:31:27 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 071B92C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:31:26 +0000 (UTC)
Date: Fri, 29 Jul 2016 18:31:23 +0200
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160729163123.GI3296@wotan.suse.de>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
	<CAKMK7uF5ZVi_5m1_Fp6GR6YoC-4eiKuLmx4GtOAxiJOXWZF5RQ@mail.gmail.com>
	<20160729151817.GD12137@x>
	<CAKMK7uGS5_0p-k1mvqPqCfii3_JsGpyW6BvxaYuxDQeuaFs+TA@mail.gmail.com>
	<20160729162104.GA12719@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160729162104.GA12719@x>
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

On Fri, Jul 29, 2016 at 09:21:04AM -0700, Josh Triplett wrote:
> On Fri, Jul 29, 2016 at 05:40:05PM +0200, Daniel Vetter wrote:
> > On Fri, Jul 29, 2016 at 5:18 PM, Josh Triplett <josh@joshtriplett.org> wrote:
> > > On Fri, Jul 29, 2016 at 05:00:06PM +0200, Daniel Vetter wrote:
> > >> And the other reason is the same you have: Editing raw patches is
> > >> really powerful for doing rebases over mechanical changes. Function
> > >> renames become a trivial quilt pop -a ; sed; while quilt push ; do
> > >> make ; done.
> > >
> > > Interesting!  I'll have to give that some thought, to figure out if
> > > I can support workflows like that.
> > >
> > > What other kinds of changes do you tend to make by editing patches
> > > directly?
> > 
> > The other upshot of raw patches is that you can use horrible risky
> > tools like wiggle to force a patch to apply. git is a lot more strict
> > and ime wiggle helps you with a lot of simple rebase conflicts. I have
> > small helper scripts to integrate wiggle both into that quilt flow
> > script, but also into normal git rebase.
> 
> That does sound useful.  It'd be nice to have "git apply --wiggle" and
> "git am --wiggle", too.

A bigger pipe dream is inference of SmPL grammar of a patch, then use
SmPL to address the rebase. Inference work is in theory possible and
R&D is ongoing in that direction. That should make this scale.

  Luis
