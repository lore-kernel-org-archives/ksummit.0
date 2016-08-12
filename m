Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 837E488A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 13:05:15 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1DA541D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 13:05:15 +0000 (UTC)
Date: Fri, 12 Aug 2016 18:42:59 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Andy Lutomirski <luto@kernel.org>
Message-ID: <20160812131259.GP9681@localhost>
References: <1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
	<CACRpkdYSsZ9S5KKu76YZD2m6tfBr=310Vaij1LPoRybYnHVDXw@mail.gmail.com>
	<1470147214.2485.8.camel@HansenPartnership.com>
	<CACRpkdaeeOed5g+teLyOfeuqx1SijeDuyPAWq1-vQd3Z7uozTA@mail.gmail.com>
	<20160812123830.GO9681@localhost>
	<CALCETrVy8edVwuCcWT9Dkvr0xY0fAm8KsU-=xzoBxF_pu9iADw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrVy8edVwuCcWT9Dkvr0xY0fAm8KsU-=xzoBxF_pu9iADw@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
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

On Fri, Aug 12, 2016 at 05:54:25AM -0700, Andy Lutomirski wrote:
> On Aug 12, 2016 3:30 PM, "Vinod Koul" <vinod.koul@intel.com> wrote:
> > One more point worth mentioning here...
> >
> > Whatever solution we decide, some firmware is already signed. Some of
> > the Intel firmware we submit to linux-firmware is signed and a firmware
> > with bad or unsigned keys will fail to load on these devices. Now how
> > much we are willing to trust that is entirely different question.
> >
> > Any solution needs to comprehend that additional signing might be
> > present.
> 
> I see device-verified signatures as orthogonal: the kernel loads a blob,
> optionally verifies the blob, and that blob just happens to contain a
> signature.

In that case we should not optionally verify. But if we trust vendors
sign, we don't need to verify..

-- 
~Vinod
