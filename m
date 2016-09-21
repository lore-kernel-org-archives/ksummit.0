Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 21 Sep 2016 17:33:41 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Alex Shi <alex.shi@linaro.org>
Message-ID: <20160921153341.GA25677@kroah.com>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org>
	<20160921135601.zwsmvrrfbhlez24n@thunk.org>
	<57E2A5E3.4080407@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <57E2A5E3.4080407@linaro.org>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Sep 21, 2016 at 11:23:15PM +0800, Alex Shi wrote:
> On 09/21/2016 09:56 PM, Theodore Ts'o wrote:
> Yes, personally, I also keep using latest kernel on my laptop. But as to
> a released product, could you let me know data center will ship to other
> as product?

My cloud provider keeps updating the kernel of my virtual machines to
the latest upstream stable releases all the time.  If yours doesn't, I
suggest you get a better provider.

> Or which enterprise distro kernel keep rebasing to upstream?

Both SuSE and Oracle do this for their releases.

> Most of product need team work, like mobile phone, include kernel,
> libraries, user APP, the software number is tremendous.

Why would updating a new kernel require userspace changes in these
things?  Kernels are always forward compatible, minus random driver bugs
for crazy subsystems (drm does have some problems at times as people do
point out.)

> Thus base layer software update need long time testing for
> compatibility and stability.

Why isn't that happening constantly?  Why wait a few years to do this
for new versions?  Why is the test frameworks that people have not
always churning away at this type of thing to find our bugs as soon as
possible?

> Then rebasing to upstream is too luxury to them.

Then they end up with a kernel, and a product, that is insecure and
vulnerable when it ships.  Not a good thing for something people trust
personal data to...

thanks,

greg k-h
