Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8A9C151C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:21:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7EE847F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:21:41 +0000 (UTC)
Message-ID: <1536164497.3627.9.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Takashi Iwai <tiwai@suse.de>, ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 05 Sep 2018 17:21:37 +0100
In-Reply-To: <s5hbm9ccbie.wl-tiwai@suse.de>
References: <s5hbm9ccbie.wl-tiwai@suse.de>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Wed, 2018-09-05 at 15:35 +0200, Takashi Iwai wrote:
> The staging driver is a wonderful process to promote the downstream
> code to the upstream, but I have doubt whether it's working really as
> expected for now.
> 
> - Often the drivers live forever in staging although they should have
>   been moved to the upper, properly maintained, subsystems.
> 
> - Code changes in staging are mostly only scratching surfaces, minor
>   code style cleanups, etc, what checkpatch suggests.
> 
> - There are little communications with the corresponding subsystem;
>   already a few times I was surprised by casually finding a staging
>   driver code by grepping for preparing API changes.
> 
> - Then some drivers are pushed back after long time stay in staging
>   (lustre is the recent remarkable case);
>   it's understandable, but is definitely no happy end in both sides,
>   after all.
> 
> So, I'd like to hear how we can improve the staging driver situation,
> a better communication with staging driver people and the subsystem /
> core devs.

I think subsystems should be able to opt out of staging entirely.  For
SCSI, we want to look at the substantive command interaction issues and
(for our manifold sins) are used to reading code that makes your eyes
bleed, so polishing staging drivers with whitespace changes for months
doesn't serve us at all.

James
