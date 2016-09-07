Return-Path: <jack@suse.cz>
Date: Wed, 7 Sep 2016 10:33:12 +0200
From: Jan Kara <jack@suse.cz>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160907083312.GO28922@quack2.suse.cz>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<20160906162502.GA15434@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160906162502.GA15434@roeck-us.net>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
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

On Tue 06-09-16 09:25:02, Guenter Roeck wrote:
> On Tue, Sep 06, 2016 at 02:34:30PM +0100, Catalin Marinas wrote:
> > 
> > Things could be different if fewer entities control the software that
> > gets installed/updated on such hardware. E.g. Google controlling the OTA
> > updates of the Chromebook kernels, they will at some point take a
> > similar hard stance to Red Hat on upstream first, single kernel Image.
> 
> Seems to me that Redhat and Google are in different boats. Chromebooks,
> unlike "standard" PCs, have lots of "custom" hardware, where "custom" means
> hardware for which upstream support is not available. chromeos-4.4 currently
> (as of this morning) carries 5,594 patches on top of v4.4.14. Out of those,
> roughly 2,700 are tagged as backports, ~200 are tagged as from an upstream
> submission which was not accepted by the time the patch was added, and ~2,000
> are tagged as chromeos specific. And that is with (as far as I know) no
> products shipping yet with the 4.4 kernel.

Just to give a comparable numbers for SUSE. The coming SLE12 SP2 release is
based on 4.4 as well. On top of 4.4.19 we currently carry some 4700 patches
which together add/delete some 390k lines. Out of these some 280 patches
are not backports of upstream patches (or at least in the process of going
upstream), adding / deleting some 35k lines. So indeed we do have much less
non-upstream stuff in the distro kernel. OTOH I'd note we still do have a
considerable amount of backported stuff in the product that haven't even
shipped yet...

> We are trying to upstream as much as we can, but it will take a while.
> Given time constraints, I don't think "upstream first" will ever work.
> Products have to ship and simply can not wait for upstream patches to be
> accepted.

Well, it works reasonably for us... Actually most of the backports are HW
support so server HW vendors seem to be better in getting their drivers
upstream before actually shipping the HW. But I understand this is easier
for servers as that is a more mature / slower market than phones / tablets.

> > For phones, however, that's unlikely to happen given the multitude and
> > short life-time of new products.
> > 
> > > Unless customers start boycotting devices that are not 
> > > upstream-friendly - and I don't think anyone expects this to happen - we'll 
> > > need to give SoC vendors a different incentive.
> > 
> > One way to make SoC vendors understand the benefits of upstream is for
> > them to first feel the pain of rebasing their SoC patches to newer
> > kernel versions regularly. But forcing them to do such rebasing means
> > to stop helping them back-port the features they need to older kernel
> > versions like LSK ;) (this may be difficult from a corporate perspective
> > where significant support contracts are involved; that's where kernel
> > maintainer goals don't always match the business ones).
> 
> This is a two-edged sword. Make rebasing too hard (eg by on purpose
> changing the in-kernel APIs constantly, as I think was suggested
> elsewhere) and they will simply never switch to a newer kernel.
> 
> Ted was making an excellent point about the complexity of backporting
> features.  Out of personal experience, I fully agree. Instead of reducing
> risk by avoiding a newer kernel version, backporting actually adds risk.
> Maybe it would help to educate people about the risks of backporting, and
> do a better job explaining why a new kernel may be a better choice.

Well there are risks both way - updating to a newer kernel certainly has
risks (otherwise our kernel team & QA wouldn't have to spend several months
working on testing & tweaking the distro when creating new release based on
the new kernel) and backporting has risks as well. You want to find a
kernel version where the added risk from all the backports does not
outweight the additional time for testing the kernel and generally
stabilizing the product.
 
								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
