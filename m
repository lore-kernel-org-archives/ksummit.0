Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C0DD4899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 05:02:42 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 48D0FE1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 05:02:42 +0000 (UTC)
Date: Mon, 1 Aug 2016 22:02:33 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20160802050232.nzgtuijqw46qopyr@x>
References: <0e76826b-6552-e880-42fc-17be0c5bf3fe@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0e76826b-6552-e880-42fc-17be0c5bf3fe@infradead.org>
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

On Mon, Aug 01, 2016 at 08:46:05PM -0700, Randy Dunlap wrote:
> and subdir Makefiles.
> 
> Examples:
> 
> Use/honor O=outputdir consistently instead of building in <kerneltree>/tools.
> (check/compare kernel commit bf35182ffcd00d8b36d56210ffdac110e5624d7d)
> 
> Honor MAKEFLAGS (well, they aren't even passed to tools/Makefile AFAICT.
> from an execution log:
> make LDFLAGS= MAKEFLAGS="" O=/local/lnx/kernel/lnx-47/TOOLS subdir=tools -C ../tools/ all
> 
> Use make's "findstring" correctly (see patch below)
> 
> There are lots of other problems unless I have just had too much too drink tonight,
> so here's the TECH TOPIC:
> 
> In a 1.5 hour code crunch session, get a bunch of interested people together to fix
> a lot of problems quickly.  Then I will be a guinea pig tester.  :)

Another pattern to look for: any instance of
ifeq ($(CONFIG_FOO),y)
where CONFIG_FOO is a tristate symbol should generally become
ifneq ($(CONFIG_FOO),n)

A higher-level item that I think would make a good topic: extracting
Kconfig into a library usable outside the kernel.  Several other
projects use a copied and hacked-up version of Kconfig.  I'd love to see
it more widely used as a build-time configuration system for more
projects, but not by forking it out of the kernel each time.  I've heard
kbuild/kconfig maintainers mention that they're interested in seeing
this done, but don't have the bandwidth to do it.

The thing that makes this a topic, rather than just a thing someone
needs to just do and submit a patch for, is determining the necessary
requirements from both the kernel and other projects, so that Kconfig
doesn't depend on the kernel but that the kernel build system doesn't
get any more complex to support that.
