Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 847B38A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 09:50:36 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6A5D010A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 09:50:35 +0000 (UTC)
Date: Thu, 4 Aug 2016 11:50:49 +0200
From: Greg KH <greg@kroah.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20160804095049.GA30029@kroah.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727192040.GL5537@wotan.suse.de>
	<10281749.h0nm8HgLR9@vostro.rjw.lan> <4826466.kMrAaT2rsn@avalon>
	<87d1lpose8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87d1lpose8.fsf@intel.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
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

On Thu, Aug 04, 2016 at 11:22:23AM +0300, Jani Nikula wrote:
> So I admit to being pretty clueless wrt the fine details of module
> loading, but I'm wondering if there could be any way of the module being
> loaded telling the kernel (via a call, not by returning from probe) to
> hold its horses for a while, and keep loading other modules. Sort of
> like deferred probe, but without the full cleanup-retry cycle. The call
> would return to the module later (not unlike deferred probe retries the
> probe), and you could try again whatever it was that made you realize
> you need to defer.

Nope, it doesn't work that way, sorry.

Nice try, just unwind your initialization properly :)

greg k-h
