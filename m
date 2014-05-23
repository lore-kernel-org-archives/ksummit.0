Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 78B807FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 02:13:52 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C745520346
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 02:13:51 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.mail.srv.osa [10.202.2.46])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id A1FF221E84
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 22:13:50 -0400 (EDT)
Date: Fri, 23 May 2014 11:13:47 +0900
From: Greg KH <greg@kroah.com>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20140523021347.GB26799@kroah.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140521201108.76ab84af@notabene.brown>
	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
	<2980546.hqgiQV7seV@vostro.rjw.lan>
	<CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
	<20140522154859.GA28971@thunk.org>
	<CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
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

On Thu, May 22, 2014 at 09:31:44AM -0700, Dan Williams wrote:
> On Thu, May 22, 2014 at 8:48 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> > On Wed, May 21, 2014 at 04:03:49PM -0700, Dan Williams wrote:
> >> Simply, if an end user knows how to override a "gatekeeper" that user
> >> can test features that we are otherwise still debating upstream.  They
> >> can of course also apply the patches directly, but I am proposing we
> >> formalize a mechanism to encourage more experimentation in-tree.
> >>
> >> I'm fully aware we do not have the tactical data nor operational
> >> control to run the kernel like a website, that's not my concern.  My
> >> concern is with expanding a maintainer's options for mitigating risk.
> >
> > Various maintainers are doing this sort of thing already.  For
> > example, file system developers stage new file system features in
> > precisely this way.  Both xfs and ext4 have done this sort of thing,
> > and certainly SuSE has used this technique with btrfs to only support
> > those file system features which they are prepared to support.
> >
> > The problem is using this sort of gatekeeper is something that a
> > maintainer has to use in combination with existing techniques, and it
> > doesn't necessarliy accelerate development by all that much.  In
> > particular, if it has any kind of kernel ABI or file system format
> > implications, we need to make sure the interfaces are set in stone
> > before we can let it into the mainline kernel, even if it is not
> > enabled by default.  (Consider the avidity that userspace application
> > developers can sometimes have for using even debugging interfaces such
> > as ftrace, and the "no userspace breakages" rule.  So not only do you
> > have to worry about userspace applicaitons not using a feature which
> > is protected by a gatekeeper, you also have to worry about premature
> > pervasive use of a feature such that you can't change the interface
> > any more.)
> 
> I agree that something like this is prickly once it gets entangled
> with ABI concerns.  But, I disagree with the speed argument... unless
> you believe -staging has not increased the velocity of kernel
> development?

As the maintainer of drivers/staging/ I don't think it has increased the
speed of the development of other parts of the kernel at all.  Do you
have numbers that show otherwise?

> Neil already disabused me of the idea that a "gatekeeper" could be
> used to beneficial effect in the core kernel, and I can see it's
> equally difficult to use this in filesystems that need to be careful
> of ABI changes.  However, nothing presented so far has swayed me from
> my top of mind concern which is the ability to ship pre-production
> driver features in the upstream kernel. I'm thinking of it as
> "-staging for otherwise established drivers".

The thing you need to realize is that the large majority of people who
would ever use that new "feature" will not until it ends up in an
"enterprise" kernel release.  And that will not be for another few
years, so while you think you got it all right, we really don't know who
is using it, or how well it works, for a few years.

But feel free to try to do this in your subsystem, as Ted points out, it
can be done for somethings, but be careful about thinking things are ok
when you don't have many real users :)

thanks,

greg k-h
