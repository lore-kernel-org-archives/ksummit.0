Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BC11F486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 18:20:47 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6067CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 18:20:46 +0000 (UTC)
Date: Thu, 29 Jun 2017 20:20:44 +0200
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20170629182044.GP21846@wotan.suse.de>
References: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
	<1498754169.2834.61.camel@HansenPartnership.com>
	<CAGXu5jJ011-7JH7w4n0No=gon-jp4VTeN=0JPWaQsGh5zz79eA@mail.gmail.com>
	<1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Developing across
 multiple areas of the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 29, 2017 at 10:52:51AM -0700, Kees Cook wrote:
> On Thu, Jun 29, 2017 at 10:42 AM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Thu, 2017-06-29 at 09:51 -0700, Kees Cook wrote:
> >> On Thu, Jun 29, 2017 at 9:36 AM, James Bottomley
> >> <James.Bottomley@hansenpartnership.com> wrote:
> >> > On Wed, 2017-06-28 at 16:01 -0700, Kees Cook wrote:
> >> Right, I've got no objection to the performance concerns and how that
> >> played out, but it's API-to-conversion steps that seem inefficient.
> >
> > Well don't discount tree merge problems, having seen a few caused by
> > API plus conversion all at once.  However, by putting them through the
> > maintainer trees you got the review that would otherwise have been
> > missing which highlighted the performance concerns.  Even this time
> > around the affected trees have a whole merge window to run performance
> > regressions to verify everything is OK.  Based on this I think the rule
> > should be API in release R - 1 and conversion in release R through the
> > affected trees with the only exception being changes that are trivial
> > enough (for some value of trivial).

Do you mean add API with no users? If so perhaps test drivers can be the
first users for it then. Then they are not naked APIs.

> I'd argue that's what -next is for, but we lack a way to have people
> base their trees on -next sanely.

Linus has said before cross-tree collateral evolutions *could* just be sent to
him as a set of scripts he could run. It might sound easier said than done
though, but we can improve on the process by practicing it daily.

We could just mimic this on linux-next as either a last step as part of its
scripts and a new tag issued, or this could be done on a separate tree.

Its perhaps easier to think about it first as a separate tree, let's call it a
linux-oven [0] -- it would reset itself daily based on linux-next's latest tag,
and as a secondary step just run the tooling to do the API conversions.

An agreed upon set of tools can be supported for the API conversion tasks.  The
rules for what goes in and how would need to be decided. The above rules James
proposed for instance seem to make sense to me, modulo the test driver on R-1
as well.

Just a thought of course.

[0] https://kernelnewbies.org/KernelProjects/linux-oven

  Luis
