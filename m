Return-Path: <e@80x24.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D99DA13E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 08:12:20 +0000 (UTC)
Received: from dcvr.yhbt.net (dcvr.yhbt.net [64.71.152.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1781C7DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 08:12:20 +0000 (UTC)
Date: Thu, 5 Sep 2019 08:12:19 +0000
From: Eric Wong <e@80x24.org>
To: Doug Anderson <dianders@chromium.org>
Message-ID: <20190905081219.GA26003@dcvr>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Doug Anderson <dianders@chromium.org> wrote:
> Hi,
> 
> As everyone is probably aware, when you use the gerrit code review
> system all of your commits get an extra line in them that looks
> something like:
> 
> Change-Id: I6a007dfe91ee1077a437963cf26d91370fdd9556
> 
> The Linux kernel has always viewed these Change-Id tags as obnoxious
> and useless spam.  Anyone who accidentally leaves a Change-Id in their
> patch when posting to the mailing list is told to please re-post their
> patch without the Change-Id.  In this email, I will attempt to argue
> that the Linux kernel ought to relax this restriction and allow
> (possibly even encourage) Change-Ids.

Hello Doug, sometimes-present public-inbox author here, chiming
in late, replying off Mailman-mangled archives...

> To begin with, let me make sure we're on the same page about what
> Change-Ids are.  As I understand it:
> 
> * A change ID is much alike a UUID.  It is locally generated on a
> developer's computer and is (in theory) unique across the universe.
> 
> * When a developer keeps the same Change-Id across two patches they
> are making the assertion that the two patches are either the same or
> should be treated as two versions of the same logical change.  For
> instance, v1, v2, and v3 of the same patch should have the same
> Change-Id.  Even if v2 and v3 of the patch have different subjects and
> touch different files, if they have the same Change-Id then the
> developer is asserting that v3 should be considered a new version of
> the same logical change as v2.  If it helps to think about it,
> Change-Id is used by gerrit servers to know that a new patch uploaded
> should replace an older version with the same Change-Id.

This sounds like the debates around rename-tracking in VCSes
circa 2005.

Other VCSes at the time had explicit rename tracking; git was
(and still is :) powerful enough to infer renames without extra
input from the user.

Drawing inspiration from git from not having "arch-id:" tags
or other cruft for rename-tracking; MY philosophy is to have
"Really Powerful Search" being able to tie things together
after-the-fact without user intervention.

The "Really Powerful Search" part is something I've been working
on in public-inbox off-and-on for a few years :)

> Specifically, let me list the problems I'd like to solve:
> 
> 1. If I see a commit in Linux, I would like to be able to easily find
> all of the mailing list discussions relevant to that commit.  I know
> there are proposals about including the Message-Id of the final post
> in the commit log and that is certainly better than nothing, but the
> Message-Id will only get you a link to the final version of the patch.
> If the relevant discussion happened on a previous version of that
> patch then you need to find it yourself.  This gets harder if the
> patch changed subject, touched different files, if parts of the series
> landed at different times, and if multiple people were involved in
> posting different versions of the patch.  If the commit in Linux has a
> Change-Id then the old versions are logically linked and easier to
> associated with one another.
> 
> 2. If I do a search through old mailing list archives and I stumble
> upon a patch that didn't land, I can more easily find different
> versions of that patch if I have a Change-Id.  Some of these different
> versions may have relevant discussions that explains why the patch
> didn't land.  Finding these other patches without a Change-Id might be
> hard, again because they may touch different files, have a different
> subject, or have been posted by a different person.

I'm curious if you're taking advantage some of the public-inbox
search features (in lore.kernel.org) which is designed with
patches in mind.

1. "Phrase searching" with double quotes can be combined with the "s:"
   prefix to search most commit titles/subjects (*).

2. The dfa:/dfb: prefixes could be an alternative to "git blame"
   for searching text (and works for pre-git patches)

3. dfpre:/dfpost:/dfblob: can find exact blob SHA-1s

4. date/author can also match the git commit authorship info

5. all or any combination of the above can be combined in a single
   search to improve results

All the Xapian prefixes are documented at $INBOX_URL/_text/help/, e.g:
<https://public-inbox.org/git/_/text/help/>

I'm also planning to support searching for the output of
"git patch-id --stable" in the future.  public-inbox also lacks
pairity with "mairix -t" (being able to grab an entire thread
if on message in the thread matches).

> At the moment using a Change-Id in the way I described would require
> searching through mailing lists for the Change-Id string to find other
> versions of the same patch.  However, I would expect it would only be
> a matter of time before tools like patchwork are able to use Change-Id
> to associate one version of a patch with the next version.  I would
> also expect that allowing Change-Id to exist would allow someone to
> (perhaps) create a gerrit instance that watched the kernel mailing
> list and mirrored mailing list discussions in the GUI.  In other
> words, once such tools exist presumably Change-Id will be much more
> useful: you will eventually be able to paste a Change-Id into a tool
> and get links to all relevant discussion and related posts.

(*) I'm also linking the phrase searching through cgit to link
    commit titles to mail discussions shown below:

    https://80x24.org/mirrors/git.git/commit/?id=b777f3fd619ac2af507ffd3e7c5fe0d6e36e81f2
    (following the "xdiff: clamp function context indices in post-image"
     link brings the public-inbox.org/git discussion)

    That's all done with a Lua script supported via cgit:
    https://80x24.org/public-inbox.git/tree/examples/cgit-commit-filter.lua
    It works OK in most cases, but would need to be combined (as
    noted in 5.) for best results.

    I haven't gotten dfpre/dfpost/dfblob/dfa/dfb links working via
    cgit + Lua, yet.  It's on my personal roadmap, some hacking on
    cgit will be needed to expose that info (and I keep getting
    sidetracked on other stuff)

> The basic summary is that I'd like there to be some way to track a
> logical patch over its lifetime.  I don't believe there is a reliable
> (non-heuristic) way to do this today and I think Change-Id provides a
> nice solution.  While we could come up with a new and different
> solution (because Change-Id was not invented here), it feels like
> adopting Change-Id is convenient and easy and provides a true benefit.
> Change-Id works super well with the decentralized/email workflow for
> patches and can be phased in over time (or it can stay optional
> forever).

This sounds exactly like the "arch-id:" comments GNU arch users
used to pollute their sources with for rename tracking :)

It's ugly and made redundant by something which understands
the content.

Change-Id also won't work for historical patches (including
pre-git stuff).  Even without relying on git blob IDs for search,
matching on exact text/phrases is pretty good for pre-git
patches, already.

And back to rename tracking, one yet-to-be-realized promise from
git's lack of explicit tracking was being able to track code
movements (individual functions or hunks, not just entire files).
Having a good search engine gets us there :)
