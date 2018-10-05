Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB212EC9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 07:52:02 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
	[217.70.183.201])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 05D2A12E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 07:52:01 +0000 (UTC)
Date: Fri, 5 Oct 2018 00:51:56 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20181005075156.GB24138@localhost>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>
	<20181004203956.GR32577@ZenIV.linux.org.uk>
	<20181004205648.GB10640@localhost>
	<CAMuHMdWXOJL6W-9FodvuKABe=Lw0Or-nuHSEwrv1wRR0sW-hNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdWXOJL6W-9FodvuKABe=Lw0Or-nuHSEwrv1wRR0sW-hNw@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 05, 2018 at 09:16:06AM +0200, Geert Uytterhoeven wrote:
> On Thu, Oct 4, 2018 at 10:58 PM Josh Triplett <josh@joshtriplett.org> wrote:
> > On Thu, Oct 04, 2018 at 09:39:57PM +0100, Al Viro wrote:
> > > On Thu, Oct 04, 2018 at 09:33:15PM +0300, Laurent Pinchart wrote:
> > >       * contributor Alice gets banned from contributing, for whatever reason
> > >       * Alice finds a roothole and posts a technically valid fix
> > >       * maintainer Bob sees the posting, verifies that the bug is real, that
> > > the fix is correct and that the source of that patch is banned.
> > >
> > > What should Bob do?  Discuss.
> >
> > (Presumably they "post" that to some place that isn't part of the Linux
> > kernel community, such as a security research group. Also, let's leave
> > aside that the above scenario would come after some non-trivial
> > likely-private discussion with them, in which they refused to meet the
> > standards expected of the kernel community; standing reminder that bans
> > aren't typically step 1 of a process.)
> >
> > What do you do when a patch is posted that fixes a real bug but doesn't
> > meet patch requirements in other ways? I've seen developers fix up such
> > patches themselves, with varying degrees of effort required; I've also
> > seen developers reject such patches with a request to fix, and other
> > people coming along to clean up the same fix. See also grsecurity
> > patches.
> >
> > What do you do if some random downstream kernel branch (e.g. a distro or
> > vendor kernel) has a useful patch, and you don't expect the person who
> > wrote it to contribute it upstream, but it still has a signoff and
> > you're willing to do the work yourself?
> >
> > In general: verify that the patch works, still has the right license,
> > has a signoff, etc. (If someone is being particularly vindictive and
> > putting irrelevant things in commit messages, etc, then those can easily
> > be removed; OTOH, if someone has a patch and doesn't provide a signoff,
> > that'd be an orthogonal problem that isn't specific to this situation,
> > as you couldn't assume you could incorporate the patch.) Then apply the
> > patch as a fix, and include it in their next pull request upstream.
> >
> > Roughly speaking, I'd treat that situation the same as "what if someone
> > has a patch that's otherwise entirely correct, and a now non-functional
> > email address that bounces, with no way to reach them", and proceed
> > accordingly.
> 
> It's not exactly the same: for the non-functional email address, you can
> still fix the issue yourself with a "Reported-by" line, without violating the
> rule about publishing addresses, as the address is no longer valid.

That wasn't the situation as proposed; the situation as proposed
involved a patch already written. (And the email address issue was
already discussed; an email address attached to a publically posted
patch is hardly private information.)
