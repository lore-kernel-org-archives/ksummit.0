Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2B5D27AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 10:54:07 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 94DA9146
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 10:54:06 +0000 (UTC)
Date: Fri, 5 Aug 2016 12:54:20 +0200
From: Greg KH <greg@kroah.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20160805105420.GB1057@kroah.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160804102058.GT10376@sirena.org.uk>
	<CAL_JsqLFPdO5jfzA=eCnxMXa=oDb4ak=B3KkZ-T5_aV7cM653g@mail.gmail.com>
	<2402711.Aor2uS9Chj@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2402711.Aor2uS9Chj@wuerfel>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 05, 2016 at 11:01:43AM +0200, Arnd Bergmann wrote:
> On Thursday, August 4, 2016 9:59:30 PM CEST Rob Herring wrote:
> > On Thu, Aug 4, 2016 at 5:20 AM, Mark Brown <broonie@kernel.org> wrote:
> > > On Thu, Aug 04, 2016 at 11:50:49AM +0200, Greg KH wrote:
> > >
> > >> Nope, it doesn't work that way, sorry.
> > >
> > >> Nice try, just unwind your initialization properly 
> > >
> > > Deferred probe is probably the best thing that ever happened for the
> > > quality of kernel error handling 
> > 
> > Now we just need a way to force testing of the remove functions.
> 
> Hmm, instead of calling just 'probe', we might first call probe,
> then remove, then probe again as a compile-time option.
> 
> What could possibly go wrong? ;-)

Ooooh, that would be fun to see what blows up, anyone want to try it?

greg k-h
