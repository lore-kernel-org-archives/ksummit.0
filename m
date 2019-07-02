Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3511217E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 09:49:04 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5724782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 09:49:03 +0000 (UTC)
Date: Tue, 2 Jul 2019 12:48:59 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20190702094859.GU4727@mtr-leonro.mtl.com>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190702044032.GQ4727@mtr-leonro.mtl.com>
	<CAMuHMdXn+twp7KLFW28LTtt__HzwXyRfARz25AKMJb-yCtLP+w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdXn+twp7KLFW28LTtt__HzwXyRfARz25AKMJb-yCtLP+w@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 02, 2019 at 09:27:35AM +0200, Geert Uytterhoeven wrote:
> Hi Leon,
>
> On Tue, Jul 2, 2019 at 6:41 AM Leon Romanovsky <leon@kernel.org> wrote:
> > On Sat, Jun 29, 2019 at 08:19:55AM +0200, Thomas Gleixner wrote:
> > > On Fri, 28 Jun 2019, Luck, Tony wrote:
> > > > On Fri, Jun 28, 2019 at 02:11:28PM -0600, Shuah Khan wrote:
> > > > > In a recent patch discussion, I learned that some maintainers would like
> > > > > to see patch version changes in the commit log.
> > > > >
> > > > > I went looking in the git log and found a handful of recent commits with
> > > > > "Changes since" type information in the commit logs. It appears to be
> > > > > maintainer preference and a recent trend.
> > > > >
> > > > > I see the value in including the information. It can be informative
> > > > > and valuable for future work in the area.
> > > > >
> > > > > Is this something that we would like to see in all commits going forward? If
> > > > > so, updating submitting patch documentation and making
> > > > > sure the version information evolves from "informal" to more formal
> > > > > nature that fits in with the commit logs would be helpful.
> > > > >
> > > > > Making sure it doesn't get out of hand and commit logs don't
> > > > > become too long to be useful would also be helpful.
> > > > >
> > > > > Late entry, as I happened to come across this a day or two ago.
> > > >
> > > > Sounds somewhat pointless. Picking on a recent commit I see:
> > > >
> > > >     Changes since:
> > > >     v2:
> > > >      - Added Fixes tag to patch 1
> > > >      - Fixed typo
> > > >      - added GSWIP_TABLE_MAC_BRIDGE_STATIC and made use of it
> > > >      - used GSWIP_TABLE_MAC_BRIDGE in more places
> > > >
> > > >     v1:
> > > >      - fix typo signle -> single
> > > >
> > > > I don't see why someone in the future trying to debug some problem
> > > > introduced by this commit would care that earlier versions had some
> > > > spelling mistakes or were missing a Fixes: tag. :-)
> > >
> > > Right.
> > >
> > > > Where substantial changes were made between patch versions it
> > > > would be useful if the commit logs were adapted to say things like:
> > > >
> > > >  "We considered using technique X to do this but rejected
> > > >   it because person Y said it had problem Z"
> > > >
> > > > That captures for posterity the useful information without
> > > > bulking up the commit log with the blow-by-blow deltas of
> > > > how the patch series evolved across 27 versions submitted
> > > > to the mailing list.
> > >
> > > What's really useful is when the commit has a Link tag:
> > >
> > >        https://lore.kernel.org/lkml/$MESSAGE-ID
> > >
> > > and if the submitters provide the same kind of link in their V(N)
> > > submission pointing to the V(N-1) in the cover letter:
> > >
> > >        https://lore.kernel.org/lkml/$MESSAGE-ID-V(N-1)
> > >
> > > If it's a single patch the link can be in the patch itself after the ---
> > > separator. That allows a quick lookup of the history.
> > >
> > > I also really want the change history to be at that place. i.e.
> > >
> > >  Subject ....
> > >
> > >  changelog text
> > >
> > >  Tags...
> > >  Signed-off-by: Joe Hacker
> > >
> > >  ---
> > >
> > >  V3: Fixed typo
> > >
> > >  V2: Made it work
> > >      https://lore.kernel.org/.... (if single patch)
> > >
> > >  ---
> > >
> > >  diffstat
> > >
> > >  ---
> > >
> > >  patch
> > >
> > > That way tools just strip the changes section away and the maintainer does
> > > not have to handle it manually.
> > >
> > > Can we pretty please agree on that format and make it mandatory?
> >
> > Thomas,
> >
> > Sorry for my naive question, but isn't it already standard way
> > to write patches with changelogs? At least from git era.
>
> Yes it is. But this thread is (or started) about preserving the patch
> changelog in git history or not (i.e. including it above or below the
> "---" in the emailed patch).
>
> My personal stance: do not include it in the commit description, as
> most/all of it doesn't matter for eternity.  If there is something
> important to preserve (e.g. why an at first sight obvious alternative
> wouldn't work), please do so in the patch description itself, not in the
> changelog.

Fully agree, after patch is merged, I see no historical value in any
information provided by "changelog". At least for me, I'm looking
in git history while I'm debugging or developing new feature
and in those cases, I'm interested to see the final code and not
how many iterations this code passed prior to merge.

So if my voice is count, I'll vote against storing changelogs in git,
otherwise git logs will look less and less usable because of
distractions introduced by too much information.

BTW, I very liked the idea of automatic addition of "Link:" tag during
git am. It is extremely valuable tool to see corresponding patch series
without need to invest time in googling, which is not always reliable
or possible.

Thanks

>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
