Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A56D1988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 15:49:08 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CB01B2020C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 15:49:07 +0000 (UTC)
Date: Thu, 22 May 2014 11:48:59 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20140522154859.GA28971@thunk.org>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140521201108.76ab84af@notabene.brown>
	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
	<2980546.hqgiQV7seV@vostro.rjw.lan>
	<CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 21, 2014 at 04:03:49PM -0700, Dan Williams wrote:
> Simply, if an end user knows how to override a "gatekeeper" that user
> can test features that we are otherwise still debating upstream.  They
> can of course also apply the patches directly, but I am proposing we
> formalize a mechanism to encourage more experimentation in-tree.
> 
> I'm fully aware we do not have the tactical data nor operational
> control to run the kernel like a website, that's not my concern.  My
> concern is with expanding a maintainer's options for mitigating risk.

Various maintainers are doing this sort of thing already.  For
example, file system developers stage new file system features in
precisely this way.  Both xfs and ext4 have done this sort of thing,
and certainly SuSE has used this technique with btrfs to only support
those file system features which they are prepared to support.

The problem is using this sort of gatekeeper is something that a
maintainer has to use in combination with existing techniques, and it
doesn't necessarliy accelerate development by all that much.  In
particular, if it has any kind of kernel ABI or file system format
implications, we need to make sure the interfaces are set in stone
before we can let it into the mainline kernel, even if it is not
enabled by default.  (Consider the avidity that userspace application
developers can sometimes have for using even debugging interfaces such
as ftrace, and the "no userspace breakages" rule.  So not only do you
have to worry about userspace applicaitons not using a feature which
is protected by a gatekeeper, you also have to worry about premature
pervasive use of a feature such that you can't change the interface
any more.)

That by the way is the singular huge advangtage that centralized code
bases such as those found at Google and Facebook have --- if I need to
make a kernel change for some feature that hasn't made it upstream
yet, all of the users of some particular Google-specific kernel<->user
space interface is under a single source tree, and while I do need to
worry about staged deployments, I can be extremely confident that I
can identify all of the users of a particular interface, and put in
appropriate measures to update an interface.  It still might take
several release candences, but that's typically far shorter than what
it would take to obsolete a published upstream interface.

As a result, I am much more willing to let a ugly, but operationally
necessary new feature (such as say a netlink interface to export
information about file system errors, for example) into an internal
Google kernel interface, but I'd be much less willing to let something
like that go upstream, because while it's annoying to have to forward
port such an out-of-tree patch, having to deal with fixing or
upgrading a published interface is at least an order or two more work.

In addition, both Google and Facebook can afford to make changes that
only need to worry about their data center environment, where as an
upstream change has to work in a much larger variety of situations and
circumstances.

The bottom line is just because you can do something at Facebook or
Google does not necessarily mean that the same technique will port
over easily into the upstream development model.

						- Ted
