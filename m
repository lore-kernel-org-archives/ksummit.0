Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6A17471
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 08:22:27 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E32AE1EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 08:22:26 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
In-Reply-To: <4826466.kMrAaT2rsn@avalon>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727192040.GL5537@wotan.suse.de>
	<10281749.h0nm8HgLR9@vostro.rjw.lan> <4826466.kMrAaT2rsn@avalon>
Date: Thu, 04 Aug 2016 11:22:23 +0300
Message-ID: <87d1lpose8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: "vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex
	dependencies	and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 28 Jul 2016, Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> Let's not demonize deferred probing, I think it's a good safety net to
> be used as a last resort when everything else failed. The problem is
> that we're using it as our primary mean to order initialization, and
> that leads to all sorts of inefficient behaviours at boot time.

One problem we have with deferred probing (and the reason we're not
using it to fix a bug we still have) is that it essentially requires you
to undo everything you've done before realizing you should return
-EPROBE_DEFER. In our case, we have maybe 90% of our initialization done
at that point, and this goes into the full module unload/reload
territory.

So I admit to being pretty clueless wrt the fine details of module
loading, but I'm wondering if there could be any way of the module being
loaded telling the kernel (via a call, not by returning from probe) to
hold its horses for a while, and keep loading other modules. Sort of
like deferred probe, but without the full cleanup-retry cycle. The call
would return to the module later (not unlike deferred probe retries the
probe), and you could try again whatever it was that made you realize
you need to defer.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Technology Center
