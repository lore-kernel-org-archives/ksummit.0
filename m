Return-Path: <tytso@thunk.org>
Date: Sun, 4 Sep 2016 19:51:57 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Amit Kucheria <amit.kucheria@linaro.org>
Message-ID: <20160904235157.dyyevfr5wbasi7aq@thunk.org>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<CAOesGMibzGC3Nz+DmERJUea4jbJQ28hDGDGMuHkr+o=Wb3iUdA@mail.gmail.com>
	<20160904001031.t7sv5isw5tc46pxr@thunk.org>
	<CAP245DVwmwkG3VbpiKmCx1Y4d3Hf62idZyHuroNf9TZ=yFuDsg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP245DVwmwkG3VbpiKmCx1Y4d3Hf62idZyHuroNf9TZ=yFuDsg@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 05, 2016 at 04:28:44AM +0530, Amit Kucheria wrote:
> 
> The vendors depend on Google providing an Android common tree[1] to
> build their BSP on top of. Currently, there isn't anything newer than
> a 4.4-based common tree from Google. It'll be early 2017 by the time
> 4.9 LTS is released and the Android common tree is available on it
> before vendors can even start porting their BSPs to it. Some are
> quicker than others, but safe to say that it'll be summer 2017 by the
> time the vendor BSPs can run on 4.9 LTS. That leaves very little time
> for product testing[2] and some slack, in order to ready devices for
> the Christmas market[3]. The project managers will flag that as a
> 'risk' and the vendor will stick to a 4.4 LTS.
> 
> But since 4.4 LTS misses some key features that have landed in 4.5,
> 4.6, 4.7 and 4.8, something like LSK will fill that gap by backporting
> those features.

But the BSP kernel already has thousands of commits and tens of
thousands of lines of code (some of which guarantee that the kernel
won't build on anything other than ARM, which makes testing file
systems using KVM Very Hard).  So if you backport to LSK, that's not
going to help the BSP kernel unless someone then cherry picks patches
from LSK to the BSP kernel.  So you are doing two very risky things;
one is backporting a feature to 4.4 LTS, and then cherry picking the
feature from the 4.4 LTS upstream kernel to the BSP kernel.

I've done this sort of thing before, with ext4 encryption, where I was
very familiar with the code and where I had a comprehensive test suite
so I could at least test the first part of it using kvm/x86.  And I
can tell you it's an *extremely* fraught and tricky thing.  What works
for device A won't work for device B, and just because you've
backported the feature a 3.10 or 3.18 upstream kernel, and tested it
extensively, doesn't mean that it is easy and risk free to cherry pick
the patch to device kernel A and device kernel B, because the changes
made by SOC vendor A and SOC vendor B may be quite different (and may
not even be based on the same upstream kernel version).  And although
we finally have xfstests (sorta[1]) working under Android today, we
didn't have it when we started, and there were bugs introduced just
doing the cherry pick.

[1] https://github.com/tytso/xfstests-bld/blob/master/Documentation/android-xfstests.md

And this was with the subsystem expert personally doing the backport
and the cherry pick, and where each cherry pick for each different
device kernel had to be done separately and tested separately.

Doing this generally for a large number of device kernels, and for
features where you weren't the original developer and for which you
might not have deep set of regression tests?   Good luck with that....

> Now, if everything was on its way upstream, the BSP deltas would be
> smaller and the whole porting and validation exercise on top of the
> Android common tree would take much less time. But we aren't there yet
> for all vendors, some are doing better than others.

Has there been *any* forward progress since last year in terms of
reducing the BSP deltas?

Even if we can't get everyone working from upstream, if multiple BSP
deltas for different SOC's could be integrated into a single common
4.4 tree, and if that 4.4 tree could still generate bootable x86
kernels, so that could be the basis of an Android common branch, that
would be a good start.  But I suspect we are a looooooong way away
from that.

						- Ted
