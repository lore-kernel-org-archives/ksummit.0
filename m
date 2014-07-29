Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B1D53A6A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Jul 2014 14:35:21 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4444C20195
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Jul 2014 14:35:20 +0000 (UTC)
Date: Tue, 29 Jul 2014 07:35:13 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140729143513.GB1437@jtriplet-mobl1>
References: <22709.1406291979@warthog.procyon.org.uk>
	<20140725232429.GD19618@jtriplet-mobl1>
	<53D69BEC.3030509@zytor.com>
	<alpine.DEB.2.02.1407282214460.2074@localhost6.localdomain6>
	<53D6D44E.1070708@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53D6D44E.1070708@zytor.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Should we force include <linux/err.h> when
 compiling all .c files?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 28, 2014 at 03:53:02PM -0700, H. Peter Anvin wrote:
> On 07/28/2014 01:16 PM, Julia Lawall wrote:
> >>
> >> We have such a clear procedure.  It involves pre-arranging with Linus
> >> *before the merge window begins* to run the script in question
> >> *immediately before releasing rc1*.
> > 
> > In this case, would it really create many conflicts?  Does the list of 
> > included files change often.

Across thousands of source files?  Often enough to have significant
conflicts during a merge window.  More importantly, new source files
using error pointers get added often enough that a submitted patch would
likely be incomplete (which would not show up as a merge conflict).

> > If there is an optimial position for the include, it could be hard to make 
> > a perfect script.
> > 
> 
> In this case it probably doesn't matter much, because there is a key
> difference between this and most other patchsets of this type: there is
> an order that this can be done which is safe.  Specifically, add the
> #include where it needs to go as a patch series, and then remove it from
> the build.  If this is merged into a git tree and the resulting build
> fails, it will be obvious what needs to happen, and sfr and Linus are
> really good about managing that in linux-next and mainline,
> respectively, so I don't even think we need to go to this "special
> procedure" for this case.

Perhaps, though see above about the handling of new source files.

But this also seems like a good example of when fine-grained commits can
go wrong.  Given mechanical changes to several thousand source files,
does it really make sense to break those changes up into hundreds of
commits, all of which will share the same commit message except for the
prefix at the start of the subject?  Or would it make more sense to just
commit it and submit it as a single change?

(By contrast with, for instance, warning fixes, for which the changes
warrant subsystem-specific review.)

- Josh Triplett
