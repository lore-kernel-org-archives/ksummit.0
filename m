Return-Path: <catalin.marinas@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BEE1898D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 22:46:55 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 559901BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 22:46:55 +0000 (UTC)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
From: Catalin Marinas <catalin.marinas@arm.com>
In-Reply-To: <20160729131151.GF4340@x>
Date: Fri, 5 Aug 2016 00:46:47 +0200
Content-Transfer-Encoding: quoted-printable
Message-Id: <C3AB051F-EDE5-4CF3-9DFB-4AA96B974982@arm.com>
References: <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk> <20160729131151.GF4340@x>
To: Josh Triplett <josh@joshtriplett.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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

On 29 Jul 2016, at 15:12, Josh Triplett <josh@joshtriplett.org> wrote:
> On Fri, Jul 29, 2016 at 01:20:12PM +0100, David Howells wrote:
>> Josh Triplett <josh@joshtriplett.org> wrote:
>>> I'd like to announce a project I've been working on for a while.  I sent=

>>> this announcement to LKML, but since many people don't subscribe to LKML=

>>> directly, and since ksummit-discuss has had several discussions
>>> specifically about patch workflow and development processes, I thought
>>> I'd send the announcement here as well, in case anyone found it useful
>>> for their workflow.
>>=20
>> Can this be used as a direct substitute for stgit for maintaining a patch=

>> series?
>=20
> Yes, that's exactly what I designed it for.  git-series has the added
> advantage of tracking the versions of the patch series across rewrites.
> stgit just directly rewrites history, like rebase -i does; as far as I
> know, it doesn't remember the old history.  You'd have to go to the
> reflog for that. =20

I haven't looked at git-series yet (I actually have a git "series" alias=20
to list the current commits against a parent/tracking branch)=20
but StGit does remember the series history. It stores all the past states=20=

of a series in a <branch>.stgit branch and you can inspect the=20
changes, get unlimited undo/redo, even show a diff of diffs for=20
a given patch.=20

> Note that git-series doesn't provide a quilt-style push/pop workflow,
> with applied and unapplied patches; it just looks at HEAD.

Even though I'm the original author of StGit, I find myself using it less=20=

and less these days as I'm busier integrating others' patches than=20
creating my own series from scratch. But what I miss though in plain git is t=
he patch "pop" functionality. At=20
some point I may add a 'git stash head' feature to git which=20
would stash away the HEAD commit without losing its content (and=20
the corresponding 'git stash apply' restoring the original commit).=20

--=20
Catalin=
