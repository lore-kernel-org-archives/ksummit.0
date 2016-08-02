Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B4ECB932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 07:31:24 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F1AE815D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 07:31:23 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 02 Aug 2016 09:31:05 +0200
Message-ID: <2484582.9IDmfFcZQi@wuerfel>
In-Reply-To: <20160802050232.nzgtuijqw46qopyr@x>
References: <0e76826b-6552-e880-42fc-17be0c5bf3fe@infradead.org>
	<20160802050232.nzgtuijqw46qopyr@x>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Michal Marek <mmarek@suse.cz>,
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

On Monday, August 1, 2016 10:02:33 PM CEST Josh Triplett wrote:
> On Mon, Aug 01, 2016 at 08:46:05PM -0700, Randy Dunlap wrote:
> > and subdir Makefiles.
> > 
> > Examples:
> > 
> > Use/honor O=outputdir consistently instead of building in <kerneltree>/tools.
> > (check/compare kernel commit bf35182ffcd00d8b36d56210ffdac110e5624d7d)
> > 
> > Honor MAKEFLAGS (well, they aren't even passed to tools/Makefile AFAICT.
> > from an execution log:
> > make LDFLAGS= MAKEFLAGS="" O=/local/lnx/kernel/lnx-47/TOOLS subdir=tools -C ../tools/ all
> > 
> > Use make's "findstring" correctly (see patch below)
> > 
> > There are lots of other problems unless I have just had too much too drink tonight,
> > so here's the TECH TOPIC:
> > 
> > In a 1.5 hour code crunch session, get a bunch of interested people together to fix
> > a lot of problems quickly.  Then I will be a guinea pig tester.  :)

I'd be interested in this too.

> Another pattern to look for: any instance of
> ifeq ($(CONFIG_FOO),y)
> where CONFIG_FOO is a tristate symbol should generally become
> ifneq ($(CONFIG_FOO),n)

I tend to use

ifdef CONFIG_FOO

which seems more straightforward (fewer parentheses). Anything wrong
with that?

	Arnd
