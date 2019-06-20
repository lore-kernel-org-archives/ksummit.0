Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D8DE1A7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jun 2019 10:34:06 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26BB27DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jun 2019 10:34:05 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
	Chehab <mchehab+samsung@kernel.org>
In-Reply-To: <1560959179.4729.10.camel@HansenPartnership.com>
References: <20190614124305.65eb8dbd@coco.lan>
	<1560527386.27102.23.camel@HansenPartnership.com>
	<20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
	<20190617103115.670bf968@coco.lan> <20190619075351.GP28859@kadam>
	<CAKMK7uEZ0nvSZaOnQGxpghK+Md0YA0xfh+KjiferuJueeHDfwg@mail.gmail.com>
	<20190619113902.76bd169a@coco.lan>
	<20190619144808.GI21753@pendragon.ideasonboard.com>
	<1560959179.4729.10.camel@HansenPartnership.com>
Date: Thu, 20 Jun 2019 13:36:54 +0300
Message-ID: <87v9x0sfuh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: media-submaintainers@linuxtv.org, kbuild@01.org,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [media-submaintainers] [MAINTAINERS SUMMIT]
	Pull network and Patch Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 19 Jun 2019, James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> On Wed, 2019-06-19 at 17:48 +0300, Laurent Pinchart wrote:
>> Hi Mauro,
>> 
>> On Wed, Jun 19, 2019 at 11:39:02AM -0300, Mauro Carvalho Chehab
>> wrote:
>> > Em Wed, 19 Jun 2019 10:33:23 +0200 Daniel Vetter escreveu:
>> > > On Wed, Jun 19, 2019 at 9:56 AM Dan Carpenter wrote:
>> > > > On Mon, Jun 17, 2019 at 10:31:15AM -0300, Mauro Carvalho Chehab
>> > > > wrote:  
>> > > > > Also, usually, the bots don't build with W=1, as, on most
>> > > > > subsystems, this cause lots of warnings[1].
>> > > > > 
>> > > > > [1] On media, we have zero warnings with W=1.
>> > > > 
>> > > > We could ask the kbuild devs if they would consider making W=1
>> > > > a per tree option.  
>> > > 
>> > > No need to ask, just add a Kconfig which sets additional cflags
>> > > for you for your tree and your good. The usual combinatorial
>> > > testing will discover the new warnings. That's at least what we
>> > > do for i915.ko (including -Werror). Gets the job done.
>> > 
>> > While this works, having a W=1 per tree would, IMHO, work better,
>> > as, as new warnings get added to W=1, we'll get those for free.
>> > 
>> > -
>> > 
>> > I don't like the idea of having -Werror being automatically added,
>> > as this may cause problems when people try to compile with a
>> > different compiler version - or on some weird architectures.
>> 
>> It's not automatic though, if it depends on a Kconfig option that is
>> disabled by default. The built bots can enable it, while users would
>> ignore it. That being said, having it as a per-tree build bot option
>> should work as well.
>
> I really don't think well made build bots would enable this.  The
> problem with -Werror is it's single threaded on the first problem. 
> What a generic build bot wants to do is compile the entire tree and
> then diff the output to find the additional warnings for everything.  I
> could see a tree specific build bot being more interested (until the
> build fails on an unrelated subsystem).
>
>> > Specially on drivers that build with COMPILE_TEST[1], depending on
>> > the architecture they're built, false-positive warnings rise,
>> > specially on unusual architecture with has different defines for
>> > some arch-specific typedefs (signed/unsigned, different integer
>> > type, usage or not of volatile, a different address space, etc).
>> 
>> All my kernel compilation scripts use -Werror, and that does a great
>> job at catching problems. It can be a bit annoying at times when
>> someone introduces a warning, but usually a fix will already be
>> posted when I notice my build breaks. The more we use -Werror
>> globally, the faster those new warnings will be caught.
>
> I buy this for small projects, and would own up to using it in my own
> because it's a great way to force contributors not to introduce
> warnings in their patches if the build breaks.  The problem with
> something huge like linux, especially when it is fairly deeply entwined
> with compiler specifics, is twofold:
>
>    1. You're going to force us to annotate all those spurious warnings
>       that we've been ignoring because gcc should get fixed; incorrectly
>       flagged uninitialized variables being the most annoying.

In i915 we basically start off with -Wall -Wextra, and then disable the
warnings that we want ignored. Some of the disables are on a per-file
basis. We then have -Werror behind a config knob.

It's a nice way to clean up warnings in our corner of the codebase, and
ensure it stays that way. I'm sure other drivers and subsystems would
have a slightly different set of warning disabled, and necessarily the
global config needs to be a union of those sets of warnings.

>    2. Different versions of gcc produce different warnings: so now we'll
>       eventually have to target a specific gcc version and not upgrade
>       until we're ready because newer versions come with shiny new
>       warnings.

On the other hand this allows us to be more aware of the new warnings
and take advantage of them. But with -Werror it obviously only works in
a limited or local setting.

> That's not to say we should forbid bots and subsystems from doing this,
> that's what we're currently doing with the per-subdir enabling of
> -Werror using subdir-ccflags-y if you look, but we shouldn't globally
> mandate it.

Agreed.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
