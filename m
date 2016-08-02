Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B8D9F959
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 08:41:22 +0000 (UTC)
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id EE14E20E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 08:41:21 +0000 (UTC)
Date: Tue, 2 Aug 2016 10:41:09 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Josh Triplett <josh@joshtriplett.org>,
	"Yann E. MORIN" <yann.morin.1998@free.fr>
Message-ID: <20160802084109.GC13682@piout.net>
References: <0e76826b-6552-e880-42fc-17be0c5bf3fe@infradead.org>
	<20160802050232.nzgtuijqw46qopyr@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160802050232.nzgtuijqw46qopyr@x>
Cc: Michal Marek <mmarek@suse.cz>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Jiri Olsa <jolsa@kernel.org>, Arjan van de Ven <arjan@linux.intel.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] tools/Makefile: Fix Many Many
 problems and inconsistencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 01/08/2016 at 22:02:33 -0700, Josh Triplett wrote :
> A higher-level item that I think would make a good topic: extracting
> Kconfig into a library usable outside the kernel.  Several other
> projects use a copied and hacked-up version of Kconfig.  I'd love to see
> it more widely used as a build-time configuration system for more
> projects, but not by forking it out of the kernel each time.  I've heard
> kbuild/kconfig maintainers mention that they're interested in seeing
> this done, but don't have the bandwidth to do it.
> 
> The thing that makes this a topic, rather than just a thing someone
> needs to just do and submit a patch for, is determining the necessary
> requirements from both the kernel and other projects, so that Kconfig
> doesn't depend on the kernel but that the kernel build system doesn't
> get any more complex to support that.

Well, what about http://ymorin.is-a-geek.org/projects/kconfig-frontends
by the Kconfig maintainer?


-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
