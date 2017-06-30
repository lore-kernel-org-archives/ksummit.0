Return-Path: <dvhart@infradead.org>
Date: Fri, 30 Jun 2017 09:21:55 -0700
From: Darren Hart <dvhart@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170630162155.GB26257@fury>
References: <20170625072423.GR1248@mtr-leonro.local>
	<CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Driver and/or module
 versions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jun 25, 2017 at 10:32:52AM -0700, Linus Torvalds wrote:
> On Sun, Jun 25, 2017 at 12:24 AM, Leon Romanovsky <leon@kernel.org> wrote:
> > There is a steady flow of patches which bump driver and module versions.
> >
> >  * Can we come with unified policy about those patches?
> 
> We pretty much *have* a unified policy, it's just that I think rdma is crazy.
> 
> The unified policy is pretty much that version codes do not matter, do
> not exist, and do not get updated.
> 

I make the point internally that without a stable-abi, the driver is not
stand-alone, and so the "version" is easily shown to not be independent
from the kernel version (or the distro package version).

> Things are supposed to be backwards and forwards compatible, because
> we don't accept breakage in user space anyway. So versioning is
> pointless, and only causes problems.
> 
> It causes problems not just because of the conflict issues, but
> because it's fundamentally wrong, and makes driver writers think that
> it's ok to change interfaces and use versioning to show they changed.
> It's *not* OK.
> 
> Sometimes you have feature masks (which just mean that it's ok to
> _add_ interfaces rather than change them, and make it possible for
> user space to check if the new interface exists), but even that is
> generally the exception rather than the rule and should be used very
> very carefully and preferably not at all.
> 

While the module version is clearly a flawed concept for Linux drivers,
I do think we should discuss the problem they are intended to address:
knowing what's in a particular instance of a driver.

I see three categories of changes vendors need to be able to track:

1. Bug Fixes
2. Performance enhancements
3. New Features

The first is easily managed through the stable kernel process. Vendors
ensure bug fixes are pushed back to stable, distros pick them up from
there, done.

The second is split into two categories. Many performance regressions
can be accommodated via the stable kernel rules. Regressions with large
mitigation patches and performance enhancements currently need to be
tracked independently from kernel version as they are backported to
distro / product kernels.

New features also fall into the independent tracking bucket, although
your point about feature masks could reduce that need. Is there a
definitive mechanism for the feature mask approach? I see a lot of
sysfs_filename:value key:value pairs for this kind of thing.

-- 
Darren Hart
VMware Open Source Technology Center
