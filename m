Return-Path: <arndbergmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EAFA2FB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 11:08:24 +0000 (UTC)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E0899786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 11:08:23 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id j7-v6so16423393qkd.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 04:08:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<s5h36ulrdps.wl-tiwai@suse.de> <87zhwtybr3.fsf@intel.com>
	<alpine.DEB.2.20.1809071135090.3036@hadrien>
	<87r2i5y6n6.fsf@intel.com> <20180910095123.4d83fd9c@coco.lan>
	<87ftyg315d.fsf@intel.com> <20180911063436.2f6d696e@coco.lan>
In-Reply-To: <20180911063436.2f6d696e@coco.lan>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 11 Sep 2018 13:08:03 +0200
Message-ID: <CAK8P3a1r0Ufr9Vsf1qZ4L1UFFCjgQjEfASsVFCCq6hrf7RsbfQ@mail.gmail.com>
To: mchehab+samsung@kernel.org
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
	replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 11:35 AM Mauro Carvalho Chehab
<mchehab+samsung@kernel.org> wrote:
>
> Em Tue, 11 Sep 2018 11:10:22 +0300
> Jani Nikula <jani.nikula@intel.com> escreveu:
>
> > On Mon, 10 Sep 2018, Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> > > IMHO, whatever solution, the best would be to have a makefile
> > > target equivalent to allmodconfig and allyesconfig that would
> > > add such extra maintainership logic.
> >
> > There's 'make W=n' for enabling extra gcc checks. Seems like a good fit.
>
> I wouldn't mess with W. On media, we work to have zero warnings with W=1.
> However, W=2 (and W=3) is almost unusable: lots of complains about
> signed/unsigned mix and other things that usually are ok. With gcc 8,
> the amount of warnings with W=2/W=3 at core kAPI functions makes them
> useless.
>
> People will very likely ignore or miss deprecated stuff if we
> place it as W=4.
>
> Perhaps we could add a D=1, in order to point for deprecated stuff.

I don't like the idea of adding another dimension with D=1, but I'm all for
reviewing the sets of warnings we enable at W=2/W=3  and possibly
introducing a W=4.

I've done some research on this in the past, and can probably do that
again (not sure how valuable my old data still is).
https://github.com/Barro/compiler-warnings has a list of warnings
for all compiler releases we support, and some categorizations.

I would like to add a line for each of those warnings in
include/linux/compiler-warnings.h with the compiler version that
introduced it and the warning level we want to have it enabled at,
plus some comment about why that level. We can start with the
status quo (listing the level that each warning is currently
enabled at) and then do changes based on the output of
'make W=123', which I'm sure immediately shows some that
are misclassified based on the number of warnings they produce
for randconfig and allmodconfig builds.

The definitions that I'd use for the levels would be (close to the
current definition)

W=0 (default): -Wall warnings and some -Wextra warnings that
      have zero known false positives
W=1: Most -Wextra warnings, plus everything from -Wall
      that didn't make it into W=0
W=2: clang -Wmost and the the gcc equivalent, as long as
     they are useful in the kernel context. There should be no
     warnings in common header files
W=3: clang -Weverything warnings and the gcc equivalent,
     including very noisy ones, but still only the ones that make
     sense for the kernel.

I think being able to warn for deprecated functions would fit
into W=1 or W=2 if we want to bring that back, though given that
Linus just removed __deprecated with prejudice, I wouldn't
invest any work into that part myself.

        Arnd
