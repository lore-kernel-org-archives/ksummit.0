Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9048E8A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 10:28:00 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3FDF38E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 10:28:00 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Mark Brown <broonie@kernel.org>, Greg KH <greg@kroah.com>
In-Reply-To: <20160804102058.GT10376@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727192040.GL5537@wotan.suse.de>
	<10281749.h0nm8HgLR9@vostro.rjw.lan>
	<4826466.kMrAaT2rsn@avalon> <87d1lpose8.fsf@intel.com>
	<20160804095049.GA30029@kroah.com>
	<20160804102058.GT10376@sirena.org.uk>
Date: Thu, 04 Aug 2016 13:27:51 +0300
Message-ID: <877fbwq15k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 04 Aug 2016, Mark Brown <broonie@kernel.org> wrote:
> On Thu, Aug 04, 2016 at 11:50:49AM +0200, Greg KH wrote:
>
>> Nope, it doesn't work that way, sorry.
>
>> Nice try, just unwind your initialization properly :)
>
> Deferred probe is probably the best thing that ever happened for the
> quality of kernel error handling :)

Heh, I know. All part of the reason we're not propagating deferred probe
from the depths of drm/i915 yet. But even if we were, it's grossly
inefficient for a driver of i915's complexity.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Technology Center
