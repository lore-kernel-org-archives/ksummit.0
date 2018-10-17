Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C0C5F2F27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 15:21:12 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 06372775
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 15:21:11 +0000 (UTC)
Date: Wed, 17 Oct 2018 08:21:02 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20181017152101.GA17531@localhost>
References: <20181017071902.30102-1-geert@linux-m68k.org>
	<20181017091325.GA15991@localhost>
	<CAMuHMdX0G767xYYcd8TDMLBp3cY9+fz_aJFAuz8OxgmCmhbNrg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdX0G767xYYcd8TDMLBp3cY9+fz_aJFAuz8OxgmCmhbNrg@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org, tomi.valkeinen@iki.fi
Subject: Re: [Ksummit-discuss] [PATCH] code-of-conduct: Remove explicit list
 of discrimination factors
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 17, 2018 at 11:31:35AM +0200, Geert Uytterhoeven wrote:
> Hi Josh,
> 
> Thanks for your comments!
> 
> On Wed, Oct 17, 2018 at 11:13 AM Josh Triplett <josh@joshtriplett.org> wrote:
> > On Wed, Oct 17, 2018 at 09:19:01AM +0200, Geert Uytterhoeven wrote:
> > > Providing an explicit list of discrimination factors may give the false
> > > impression that discrimination based on other unlisted factors would be
> > > allowed.
> >
> > This impression is, in fact, false, as has already been discussed
> > elsewhere. I had hoped that discussion would suffice.
> 
> The CoC FAQ is not part of the CoC, and not part of the Linux kernel.

I wasn't referring just to that; I'm referring to the discussion we've
already had on this exact point.

> > refers to. Listing explicit cases to cover does not imply other cases
> > are not covered;
> 
> It does, if not accompanied by "examples of...", like in the other sections.

"for everyone, regardless of ..." still says "for everyone", making the
"regardless of ..." inherently a non-exhaustive list of factors.

> > it does, however, ensure that the listed cases *are*,
> > and helps people know that they're covered.
> 
> So you agree people cannot know if the unlisted cases are covered or not?

People in underrepresented and commonly marginalized groups, especially
those more commonly overlooked, don't always know if a given group has
taken their particular group into account or given any thought to it.
Explicit inclusion helps, and this is a standard guideline often cited
for good codes of conduct.

That doesn't make other groups *not* covered. But *if* there is a
particular commonly marginalized group that you feel this should
*explicitly* cover and doesn't, I'd suggest *adding* that group rather
than deleting the existing effort to be explicitly inclusive. (And
again, I'd suggest doing so upstream first.)

> > This patch is not OK, and defeats one of the purposes of the original
> > change.
> 
> So the purpose of the original change was to list a number of factors,
> without saying that it was just a list of examples?

You seem to be actively trying to read something more into what I said.
One of the key purposes of the original change was to make the kernel a
"a welcoming environment to participate in", and to provide "explicit
guidelines".
