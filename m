Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2DDFA71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 08:28:45 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B79311A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 08:28:44 +0000 (UTC)
Date: Tue, 9 Aug 2016 10:17:34 +0200
From: Greg KH <greg@kroah.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20160809081734.GA10279@kroah.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727192040.GL5537@wotan.suse.de>
	<10281749.h0nm8HgLR9@vostro.rjw.lan> <4826466.kMrAaT2rsn@avalon>
	<87d1lpose8.fsf@intel.com> <20160804095049.GA30029@kroah.com>
	<CAKMK7uH26eoLZSP=U5muv5U+O3Rr6RuYgw06UcGZzvcPq2f5eQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uH26eoLZSP=U5muv5U+O3Rr6RuYgw06UcGZzvcPq2f5eQ@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
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

On Tue, Aug 09, 2016 at 10:08:07AM +0200, Daniel Vetter wrote:
> On Thu, Aug 4, 2016 at 11:50 AM, Greg KH <greg@kroah.com> wrote:
> > On Thu, Aug 04, 2016 at 11:22:23AM +0300, Jani Nikula wrote:
> >> So I admit to being pretty clueless wrt the fine details of module
> >> loading, but I'm wondering if there could be any way of the module being
> >> loaded telling the kernel (via a call, not by returning from probe) to
> >> hold its horses for a while, and keep loading other modules. Sort of
> >> like deferred probe, but without the full cleanup-retry cycle. The call
> >> would return to the module later (not unlike deferred probe retries the
> >> probe), and you could try again whatever it was that made you realize
> >> you need to defer.
> >
> > Nope, it doesn't work that way, sorry.
> 
> Why? If I just postpone the entire driver load to an async worker and
> then block if it's not there, that should work?

Maybe, but the code patch from probe() in the driver core, and module
loader, might be assuming that all is ok, only to have your async init
later on realize that things are not ok.  How you could propagate that
error back into the driver core might be difficult, if not impossible.

> > Nice try, just unwind your initialization properly :)
> 
> There's a slight pratical problem of this being hard to test. Sure in
> theory it's easy, but given how often we bomb normal module unload
> already (and that's something our CI tests) practice disagrees.

probe()/disconnect()/probe() in the driver core as an option might be a
fun way to stress this as others have pointed out here.

thanks,

greg k-h
