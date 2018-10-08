Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D074B1D73
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 02:29:40 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 196C57C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 02:29:39 +0000 (UTC)
Date: Sun, 7 Oct 2018 19:29:32 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20181008022931.GB30346@localhost>
References: <20181007085102.17795-1-geert@linux-m68k.org>
	<20181007113514.GA21217@localhost> <1814283.64diKEr4zR@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1814283.64diKEr4zR@avalon>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org
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

On Sun, Oct 07, 2018 at 08:18:26PM +0300, Laurent Pinchart wrote:
> Hi Josh,
> 
> On Sunday, 7 October 2018 14:35:14 EEST Josh Triplett wrote:
> > On Sun, Oct 07, 2018 at 10:51:02AM +0200, Geert Uytterhoeven wrote:
> > > Providing an explicit list of discrimination factors may give the false
> > > impression that discrimination based on other unlisted factors would be
> > > allowed.
> > > 
> > > Avoid any ambiguity by removing the list, to ensure "a harassment-free
> > > experience for everyone", period.
> > 
> > I would suggest reading the commit message that added this in the first
> > place. "Explicit guidelines have demonstrated success in other projects
> > and other areas of the kernel." See also various comparisons of codes of
> > conduct, which make the same point. The point of this list is precisely
> > to serve as one such explicit guideline; removing it would rather defeat
> > the purpose.
> > 
> > In any case, this is not the appropriate place for such patches, any
> > more than it's the place for patches to the GPL.
> 
> So what's an appropriate place to discuss the changes that we would like, 
> *together*, to make to the current document and propose upstream ?

I didn't say "not the appropriate place to discuss" (ksummit-discuss is
not ideal but we don't currently have somewhere better), I said "not the
appropriate place for such patches".

The Linux kernel is by no means the only project using the Contributor
Covenant. In general, we don't encourage people working on significant
changes to the Linux kernel to work in private for an extended period
and only pop up when "done"; rather, we encourage people to start
conversations early and include others in the design. Along the same
lines, I'd suggest that patches or ideas for patches belong upstream.
For instance, the idea of clarifying that email addresses already used
on a public mailing list don't count as "private information" seems like
a perfectly reasonable suggestion, and one that other projects would
benefit from as well.
