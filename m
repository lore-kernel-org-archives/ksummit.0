Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20DDA156C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:35:21 +0000 (UTC)
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5B1271C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:35:20 +0000 (UTC)
Received: by mail-io0-f195.google.com with SMTP id n18-v6so6471225ioa.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 09:35:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1536164497.3627.9.camel@HansenPartnership.com>
References: <s5hbm9ccbie.wl-tiwai@suse.de>
	<1536164497.3627.9.camel@HansenPartnership.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 5 Sep 2018 18:35:19 +0200
Message-ID: <CAKMK7uGkg5FJZiAT=qV7m61VRmDSJuCSEy-SCT1OUCoE7SePgg@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
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

On Wed, Sep 5, 2018 at 6:21 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Wed, 2018-09-05 at 15:35 +0200, Takashi Iwai wrote:
>> The staging driver is a wonderful process to promote the downstream
>> code to the upstream, but I have doubt whether it's working really as
>> expected for now.
>>
>> - Often the drivers live forever in staging although they should have
>>   been moved to the upper, properly maintained, subsystems.
>>
>> - Code changes in staging are mostly only scratching surfaces, minor
>>   code style cleanups, etc, what checkpatch suggests.
>>
>> - There are little communications with the corresponding subsystem;
>>   already a few times I was surprised by casually finding a staging
>>   driver code by grepping for preparing API changes.
>>
>> - Then some drivers are pushed back after long time stay in staging
>>   (lustre is the recent remarkable case);
>>   it's understandable, but is definitely no happy end in both sides,
>>   after all.
>>
>> So, I'd like to hear how we can improve the staging driver situation,
>> a better communication with staging driver people and the subsystem /
>> core devs.
>
> I think subsystems should be able to opt out of staging entirely.  For
> SCSI, we want to look at the substantive command interaction issues and
> (for our manifold sins) are used to reading code that makes your eyes
> bleed, so polishing staging drivers with whitespace changes for months
> doesn't serve us at all.

>From drm's pov I second this. I have no problem with looking at very
un-kernel coding style from new drivers, if that allows us to
course-correct them on the fundamental issues right away. Polishing
can happen onces the fundamentals are sound. Before that it's just
busy work imo. Which I think is ok, it makes for great starter tasks,
but we already try to collect more relevant cleanup tasks for drm
under Documentation/gpu/todo.rst. Heck I'm totally fine merging a
driver that violates half of the checkpatch.pl bikesheds directly into
drm, as long as it's up-to-date with latest drm helpers and concepts.
Gives us good fodder for newbies and interns :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
