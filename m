Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B029B2994
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 09:25:48 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4BCBBEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 09:25:48 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Joel Fernandes <joelaf@google.com>
In-Reply-To: <20190828090837.GA31704@kroah.com>
References: <CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
	<20190828090837.GA31704@kroah.com>
Date: Wed, 28 Aug 2019 12:25:43 +0300
Message-ID: <87r2557iaw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
	like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 28 Aug 2019, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> Then, when the "final" patch is added, the message id of that will be
> committed to the tree with the git hook that has been posted here, and
> then, if someone _REALLY_ wants to go look up past history of versions,
> they can see it all linked together in a nice pretty tree on
> lore.kernel.org or elsewhere.
>
> And really, this whole discussion has been for the VERY RARE case of
> when someone wants to do some code spelunking and try to figure out
> older versions of a patch history before it was committed and they don't
> feel like searching for the author's name instead.  The HUGE majority of
> kernel developers never actually care about this as they don't have to
> do it.

For me the Link: tag is also a bit of audit trail, if you will. You can
easily check that the patch was actually posted for review on a public
list, and nobody sneaked it in without review. (And in drm/i915 we point
the Link: tag at our patchwork which also contains the CI results we
require.)

When I've found myself looking at the actual discussion or earlier patch
versions, it's almost always because the commit message falls short. A
link to the discussion should never be a replacement for a proper commit
message.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
