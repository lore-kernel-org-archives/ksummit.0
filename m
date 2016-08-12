Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C89DF724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 12:30:46 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2114B1D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 12:30:46 +0000 (UTC)
Date: Fri, 12 Aug 2016 18:08:30 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20160812123830.GO9681@localhost>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
	<CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
	<1470147214.2485.8.camel@HansenPartnership.com>
	<CACRpkdaeeOed5g+teLyOfeuqx1SijeDuyPAWq1-vQd3Z7uozTA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdaeeOed5g+teLyOfeuqx1SijeDuyPAWq1-vQd3Z7uozTA@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Signature management - keys,
 modules, firmware, was: Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 03, 2016 at 11:47:26AM +0200, Linus Walleij wrote:
> On Tue, Aug 2, 2016 at 4:13 PM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Tue, 2016-08-02 at 14:54 +0200, Linus Walleij wrote:
> 
> >> What I always intuitively felt is that I would be happy if the same
> >> GPG keys we use for pull requests of kernel code would extend
> >> to firmware signing, so that we move from the overall-industry
> >> focus on legislative bodies (Thawte, ...) signing certificates with
> >> OpenSSL and thus being the root of trust, over to putting the root
> >> of trust for any software related to Linux into the same web of
> >> trust that we already use for developing the code per se.
> >
> > This is the vision that Monkeysphere is based on
> >
> > http://web.monkeysphere.info/
> 
> That looks nice.
> 
> >> I would certainly trust a firmware signed by say Laurent Pinchart,
> >> but not sure about one signed by E.Corp.
> >
> > Really?  Assuming E.Corp is the one actually producing the firmware,
> > why would you say they're less qualified than Laurent to certify their
> > own firmware.  Half the SCSI chips I see have proprietary firmware.
> >  Even if I were willing to sign it, would you really trust my signature
> > when I can't even decompile it?
> 
> I would trust an Intel WiFi driver if it was signed by Dirk Hohndel
> or H. Peter Anvin whose GPG keys I have in my own web of trust
> and work for Intel. And this is simply because I trust these guys
> more than the corporate entity they work for.

One more point worth mentioning here...

Whatever solution we decide, some firmware is already signed. Some of
the Intel firmware we submit to linux-firmware is signed and a firmware
with bad or unsigned keys will fail to load on these devices. Now how
much we are willing to trust that is entirely different question.

Any solution needs to comprehend that additional signing might be
present.

And I am ofcourse interested in this discussion :-)

-- 
~Vinod
