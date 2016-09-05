Return-Path: <tytso@thunk.org>
Date: Mon, 5 Sep 2016 10:03:27 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160905140327.a6wgdl3lr42nlww4@thunk.org>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<CAOesGMibzGC3Nz+DmERJUea4jbJQ28hDGDGMuHkr+o=Wb3iUdA@mail.gmail.com>
	<20160904001031.t7sv5isw5tc46pxr@thunk.org>
	<CAP245DVwmwkG3VbpiKmCx1Y4d3Hf62idZyHuroNf9TZ=yFuDsg@mail.gmail.com>
	<20160905111105.GW3950@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160905111105.GW3950@sirena.org.uk>
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

On Mon, Sep 05, 2016 at 12:11:05PM +0100, Mark Brown wrote:
> On Mon, Sep 05, 2016 at 04:28:44AM +0530, Amit Kucheria wrote:
> 
> > The vendors depend on Google providing an Android common tree[1] to
> > build their BSP on top of. Currently, there isn't anything newer than
> > a 4.4-based common tree from Google. It'll be early 2017 by the time
> > 4.9 LTS is released and the Android common tree is available on it
> 
> It's not just having an Android tree either, it's having an Android tree
> that they're confident is actively used and tested by Google.  Simply
> making a tree available wouldn't be enough, that was tried in the past.

One of the problems is I can't test the Android common tree, because I
don't have access to hardware that I can boot on that tree.  (To be
honest, I'm not even sure what hardware would boot on it.)  And thanks
to the tender loving care the SOC vendors have lavished on on their
BSP kernels, if there has been BSP "value added patches" from ARM SOC
vendors applied to a kernel tree, chances are extremely high that you
can no longer do testing using kvm-xfstests.  (In some cases I was
able to bash the tree enough that it would boot under kvm/x86, but in
many cases, the ARM SOC changes were so horrible that it was
hopeless.)

This is why upstream-first is so darned important.  And why sloppy
patches that break other architectures are a really bad idea, even if
they are for a vendor-only BSP kernel....

Maybe there will be some hope if some of the features from ARM64
server can infect the SOC community --- Jon Masters really had the
right idea when he insisted on one kernel to boot all ARM64 kernels,
with all changes pushed upstream, and not hacky, out-of-tree patches
which only work for one SOC vendor.

						- Ted
