Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 78E7E8CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 17:52:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [65.50.211.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 181263CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 17:52:04 +0000 (UTC)
Date: Fri, 30 Jun 2017 10:52:01 -0700
From: Darren Hart <dvhart@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170630175201.GC26257@fury>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 10:18:04AM -0700, Linus Torvalds wrote:
> On Tue, Jun 27, 2017 at 6:58 AM, Sergey Senozhatsky
> <sergey.senozhatsky.work@gmail.com> wrote:
> >
> > am I the only one who struggle with the Kconfig sometimes?
> 
> I hate our Kconfig. It's my least favorite part of the kernel. It asks
> questions about insane things that nobody can know the answer to.
> 
> Taking a distro default config and doing"make localmodconfig" is what
> I end up doing on new machines, and it has all kinds of suckage too.
> 
> I don't have a solution to it. But I think part of the solution would
> be for us to have various "sane minimal requirement" Kconfig
> fragments, and trhe ability to feed them incrementally, so that people
> can build up a sane Kconfig from "I want this".

This was, in part, the intent behind the configuration fragments and the
merge_config.sh script. I use this with the x86 platform drivers:

$ make defconfig pdx86.config

But I have to generate, also scripted, the pdx86.config by scraping the
Kconfig file. The kvm_guest.config. There are other things I would like
to see subconfigs for, like "efi.config" - but I wasn't sure what the
current view on such things were. I'm glad to know I'm not along in my
frustration with the overly granular nature of Kconfig.

The problem with this model of course is keeping the config fragments
current with Kconfig changes. The mergeconfig script does call out
problems with specified config options. We can address this with
a configcheck target or similar which would audit the config fragments
to ensure they are kept in sync with the Kconfig files.

...

> 
> And note that none of this is about technoliogy, and SAT solvers and
> resolving the KConfig depdendencies that some techie people love
> talking about. It's all about "what if we just had some kconfig
> fragments to enable some commonly used stuff" (where "commonly used"
> is obviously architecture dependent, but also target-dependent - a
> "simpleconfig" for a PC workstation kind of config is very different
> from a "simpleconfig" for a server or some ARM embedded thing).
> 

It sounds like the existing config fragment mechanism is sufficient for
what you describe and what we need to do is create these fragments.

One thing that would be nice is if we could have fragment nesting so you
could create your "simpleconfig" which in turn includes a few of the
more specific config fragments.

-- 
Darren Hart
VMware Open Source Technology Center
