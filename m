Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A4BF7E2F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 20:06:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 478BAA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 20:06:28 +0000 (UTC)
Date: Fri, 7 Sep 2018 16:44:54 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20180907164454.3713a8be@coco.lan>
In-Reply-To: <s5hbm9ccbie.wl-tiwai@suse.de>
References: <s5hbm9ccbie.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] How can we treat staging
 drivers better?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 05 Sep 2018 15:35:53 +0200
Takashi Iwai <tiwai@suse.de> escreveu:

> The staging driver is a wonderful process to promote the downstream
> code to the upstream, but I have doubt whether it's working really as
> expected for now.
> 
> - Often the drivers live forever in staging although they should have
>   been moved to the upper, properly maintained, subsystems.
> 
> - Code changes in staging are mostly only scratching surfaces, minor
>   code style cleanups, etc, what checkpatch suggests.
> 
> - There are little communications with the corresponding subsystem;
>   already a few times I was surprised by casually finding a staging
>   driver code by grepping for preparing API changes.

What we do in the case of media drivers is that we have a
	drivers/staging/media
directory with a proper MAINTAINERS' entry:

MEDIA INPUT INFRASTRUCTURE (V4L/DVB)
M:	Mauro Carvalho Chehab <mchehab@kernel.org>
P:	LinuxTV.org Project
L:	linux-media@vger.kernel.org
W:	https://linuxtv.org
Q:	http://patchwork.kernel.org/project/linux-media/list/
T:	git git://linuxtv.org/media_tree.git
S:	Maintained
F:	Documentation/devicetree/bindings/media/
F:	Documentation/media/
F:	drivers/media/
F:	drivers/staging/media/
...

This way, we receive notifications (both on my e-mail and at the media
ML) about changes there.

I also asked Greg to avoid picking patches directly to it. So,
we're able to manage what's there.

> 
> - Then some drivers are pushed back after long time stay in staging
>   (lustre is the recent remarkable case);
>   it's understandable, but is definitely no happy end in both sides,
>   after all.

We had a recent case: the (really big) atomisp driver.

It is not good to apply a driver and remove it some Kernel versions
later without actually merging it at the "real" mainstream , but
I guess this is unavoidable, if we want to have a staging area.

In the case of media, we've been succeeded on promoting drivers
from staging, and to use staging as a step before drivers removal.

But yeah, I feel the pain: sometimes stuff gets "stucked" there
for a long time without any significant changes, as it is easy
to forget what's under the staging carpet.

Not sure what's the best way to solve it. Perhaps we could have a 
"soft" policy of removing drivers from staging after a certain number of
Kernel releases, and some robot monitoring it, dropping e-mails to
both subsystem maintainers and patch authors when a driver takes
longer than that. The maintainer could then check if the patches
submitted along that time were in the direction of removing it
from staging and if it would be worth to give more time to the
developer to fix, or otherwise if all he says is just whitespace
and checkpatch cleanup to just ditch it.

> 
> So, I'd like to hear how we can improve the staging driver situation,
> a better communication with staging driver people and the subsystem /
> core devs.
> 
> 
> thanks,
> 
> Takashi
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



Thanks,
Mauro
