Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42AD398B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:40:08 +0000 (UTC)
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 76E6F2AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:40:07 +0000 (UTC)
Received: by mail-oi0-f42.google.com with SMTP id w18so111338026oiw.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 08:40:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160729151817.GD12137@x>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
	<CAKMK7uF5ZVi_5m1_Fp6GR6YoC-4eiKuLmx4GtOAxiJOXWZF5RQ@mail.gmail.com>
	<20160729151817.GD12137@x>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 29 Jul 2016 17:40:05 +0200
Message-ID: <CAKMK7uGS5_0p-k1mvqPqCfii3_JsGpyW6BvxaYuxDQeuaFs+TA@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
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

On Fri, Jul 29, 2016 at 5:18 PM, Josh Triplett <josh@joshtriplett.org> wrote:
> On Fri, Jul 29, 2016 at 05:00:06PM +0200, Daniel Vetter wrote:
>> On Fri, Jul 29, 2016 at 4:21 PM, Christoph Lameter <cl@linux.com> wrote:
>> > On Fri, 29 Jul 2016, David Howells wrote:
>> >
>> >> Josh Triplett <josh@joshtriplett.org> wrote:
>> >>
>> >> > Note that git-series doesn't provide a quilt-style push/pop workflow,
>> >> > with applied and unapplied patches; it just looks at HEAD.
>> >>
>> >> Ah...  In that case it's probably not a sufficient substitute for how I use
>> >> stgit.
>> >
>> > Did not know that there was stgit. Still stuck on quilt since
>> > I like editing the files directly (its often easier to edit the diffs if
>> > you want to rename things etc).
>> >
>> > Interesting projects.
>>
>> Shameless plug of our own tooling for maintainer a quilt pile and
>> tracking it in git:
>>
>> https://cgit.freedesktop.org/drm-intel/tree/qf?h=maintainer-tools
>>
>> It even tracks the baseline sha1 and pulls/pushes it in hidden remote
>> refs/. Which all together allows you to git bisect on the quilt
>> branch, which is a really powerful thing for a long-lived rebasing
>> patch pile. quilt+git was the only thing that allowed me to glue
>> something git bisect capable together.
>
> By "bisect on the quilt branch", do you mean bisecting between versions
> of the overall patch series?

Yes. I can't show you a live branch because it's internal, but in the
patches/ directory managed by quilt there's 2 additional things:
- .git dir to manage just teh patches directory as a git branch
- config file which only stores the baseline sha1

The parent source dir is any git repo you want really.

There's convenience commands to rebase to a new baseline sha1 in the
parent repo and adjust the quilt branch accordingly. And there's a
special checkout command to check out the current baseline into the
parent repo and then apply the quil patches on top. As long as you run
that before you test a revision git bisect wants you to test, you can
bisect on the quilt branch.

The other magic bit is that it stores the quilt branch in
refs/quilt-branches (also synced in the remote) and the baselines as
tags in refs/quilt-tags, plus it keeps the two .git directories
somewhat in sync. That way you can git push/pull and both the quilt
branch _and_ all the baseline tags needed to reconstruct each commit
get transferred. But since it's a special refs/quilt-* namespace this
is only done when you run the setup command. Anyone using plain git
only observes a normal rebasing git branch and none of the underlying
magic.

> That does seem quite helpful, if you need to figure out at what point a
> change occurred in the patch series to break something.  I've filed
> https://github.com/git-series/git-series/issues/3 about supporting that.
>
>> And the other reason is the same you have: Editing raw patches is
>> really powerful for doing rebases over mechanical changes. Function
>> renames become a trivial quilt pop -a ; sed; while quilt push ; do
>> make ; done.
>
> Interesting!  I'll have to give that some thought, to figure out if
> I can support workflows like that.
>
> What other kinds of changes do you tend to make by editing patches
> directly?

The other upshot of raw patches is that you can use horrible risky
tools like wiggle to force a patch to apply. git is a lot more strict
and ime wiggle helps you with a lot of simple rebase conflicts. I have
small helper scripts to integrate wiggle both into that quilt flow
script, but also into normal git rebase.

> I'm tempted to add a "git series filter" that applies filter-branch to
> the commits in the series, or something similar to that.  I'll also have
> to think about the use case of testing each commit in the series, to see
> if that needs support from git-series or just from underlying git tools.

Another one I really started to like is that you can visually compare
changes to a patch. It takes a bit of experience reading them, but
after a while diffs-of-patches start to make as much sense as a plain
patch, e.g.
- Context movements easily stand out, they only touch @@ lines or
lines not starting in +/-.
- Rebasing adjustements in the patch itself (in the + lines of the patch).
- Direct code conflicts with upstream (anything that changes a - line
in the patch).

I think that's the other massive benefit of working on a pile of patches.

But the problem is that all three (bisecting, sed on raw patches and
patch-diffs) are only really useful if you have to maintain a rebasing
tree over a really long time (months/years). I think for a normal
feature patch series your git series is more than sufficient.
-Daniel

PS: Since we work for the same company I can actually show you the
internal branch if you're interested in how this works ;-)
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
