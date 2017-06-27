Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A82BCB9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 18:41:22 +0000 (UTC)
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 239891F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 18:41:22 +0000 (UTC)
Received: by mail-io0-f178.google.com with SMTP id h64so22911233iod.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 11:41:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1498588234.18166.29.camel@HansenPartnership.com>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<alpine.LSU.2.20.1706221422360.30709@cbobk.fhfr.pm>
	<20170627175321.GS21846@wotan.suse.de>
	<1498588234.18166.29.camel@HansenPartnership.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 27 Jun 2017 20:41:20 +0200
Message-ID: <CAKMK7uEwx=HHwxJ-AfVUVpwu9fAwsMHPORRFRTcD0MTm1rxZMw@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback
	loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 8:30 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>> But one day it comes that KOTD is not sufficient, and there is that
>> pesky delta on linux-next which *might* also have a fix for you.
>> Problem is booting linux-next can often fail.
>
> Just a minute: I'd like to question that assumption. -next is supposed
> to be all the upstream trees targetting the merge window.  Boot failure
> regressions in those trees are very rare.  Fine, not non-existent so
> that's why we run testing and inspection on them, but "often fail" is a
> mischaracterisation.  I think the correct characterisation would be
> "rarely fail", but I can compromise on "sometimes fail".

The merge window takes out about 30% of our CI machines when it lands
(not boot, also stuff like suspend/resume so a bit more than your
criteria here, but all because of issues outside of drm, we tend to
catch our own crap on our own machines). We probably should test
linux-next to catch this stuff earlier, but atm we just don't have the
time - just getting the -rc1 fallout back under control takes a lot of
time (e.g. we still have a e1000e regression fix in our CI branches
since the patch doesn't seem to go anywhere, despite nagging). I
wound't call this "rarely fails" when you can easily see the spacing
of merge windows in our CI stats. But maybe no one tests on random
piles of recent and semi-recent intel desktops and laptops, dunno.

Not sure what the solution would be since I'm pretty sure drm/i915
isn't innocent in taking out other systems, except much more testing
of linux-next (for which we simply don't have the machine time nor
people to triage the fallout right now).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
