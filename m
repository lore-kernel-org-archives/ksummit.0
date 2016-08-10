Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 12482A19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 15:01:49 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E137C213
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 15:01:47 +0000 (UTC)
Date: Wed, 10 Aug 2016 17:01:44 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20160810150144.GH1437@8bytes.org>
References: <s5h60rs31z3.wl-tiwai@suse.de> <1560409.5vnWShrmDy@vostro.rjw.lan>
	<4b6ef14c-cea6-b51d-62db-ba3e708916ea@leemhuis.info>
	<20160809094046.GA1437@8bytes.org>
	<a9abc71f-7070-3f60-3f4c-16ac7a082fc9@leemhuis.info>
	<20160809223118.GG1437@8bytes.org> <87h9asx23l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h9asx23l.fsf@intel.com>
Cc: Thorsten Leemhuis <regressions@leemhuis.info>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 10, 2016 at 03:03:42PM +0300, Jani Nikula wrote:
> How about adding an entry, say "B:", to MAINTAINERS to let each
> subsystem/driver specify the preferred method of reporting bugs? For
> example, most drivers/gpu/drm bugs would get more attention at
> https://bugs.freedesktop.org/ than https://bugzilla.kernel.org/.

I thought about that too, it might make sense if we can't agree on
anything better. In the end it is more hassle for the users and requires
more knowledge on their side. They have to know at least in which part of
the kernel the problem occured and then look that part up in the
MAINTAINERS file to find out how to report the bug. There are probably
quite a few users who give up somewhere on that path.


	Joerg
