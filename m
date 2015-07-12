Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0C13C83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 18:22:23 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7C1FBF2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 18:22:22 +0000 (UTC)
Date: Sun, 12 Jul 2015 11:22:15 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20150712182214.GA18191@x>
References: <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
	<20150710205606.GC10533@cloud>
	<1436562223.24408.55.camel@infradead.org>
	<20150710210750.GF10533@cloud>
	<CAMuHMdUcFfGZPqQ=9J3=aVpDtt63jk_rvmhfK+X0+n_UoEw0_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdUcFfGZPqQ=9J3=aVpDtt63jk_rvmhfK+X0+n_UoEw0_w@mail.gmail.com>
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 12, 2015 at 12:28:07PM +0200, Geert Uytterhoeven wrote:
> On Fri, Jul 10, 2015 at 11:07 PM,  <josh@joshtriplett.org> wrote:
> > I just wish I had a more satisfactory method of associating a cover
> > letter with a series *in git*, such that format-patch could emit a
> > non-placeholder cover letter.
> 
> You can use "git commit --allow-empty" to write cover letters.
> Make sure they don't get lost during rebasing.
> 
> Still, if you include them in --format-patch, they will be "PATCH 1/n",
> not "PATCH 0/n".
> 
> [...]
> 
> Oh cool, there's a "--start-number" option, will try...

That's an amusing idea, though as you said, rebase will tend to throw
them away.  I've also seen cover letters done via git notes, but never
in a very satisfactory way.  Ideally, I'd love to see a message
associated with a given branch, such that that message can become the
cover letter, and if the branch gets merged that's the default merge
message.
