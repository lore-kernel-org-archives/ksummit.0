Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E086582B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 12:03:44 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7270A8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 12:03:44 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Joerg Roedel <joro@8bytes.org>,
	Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <20160809223118.GG1437@8bytes.org>
References: <s5h60rs31z3.wl-tiwai@suse.de> <1560409.5vnWShrmDy@vostro.rjw.lan>
	<4b6ef14c-cea6-b51d-62db-ba3e708916ea@leemhuis.info>
	<20160809094046.GA1437@8bytes.org>
	<a9abc71f-7070-3f60-3f4c-16ac7a082fc9@leemhuis.info>
	<20160809223118.GG1437@8bytes.org>
Date: Wed, 10 Aug 2016 15:03:42 +0300
Message-ID: <87h9asx23l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 10 Aug 2016, Joerg Roedel <joro@8bytes.org> wrote:
> In my case, I am only looking into the kernel.org bugzilla if someone
> pings me about it. Usually I get the upstream bug reports via email. And
> this is part of the problem, that we have multiple ways that we teach
> users how to report bugs/regressions. That really increases the effort
> needed for you to compile the regression list and keep track of
> everything in there.

How about adding an entry, say "B:", to MAINTAINERS to let each
subsystem/driver specify the preferred method of reporting bugs? For
example, most drivers/gpu/drm bugs would get more attention at
https://bugs.freedesktop.org/ than https://bugzilla.kernel.org/.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Technology Center
