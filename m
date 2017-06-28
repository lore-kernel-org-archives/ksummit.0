Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 426224A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 08:04:20 +0000 (UTC)
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6189E3D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 08:04:19 +0000 (UTC)
Received: by mail-io0-f195.google.com with SMTP id 84so4655410iop.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 01:04:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170627190424.GW21846@wotan.suse.de>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<alpine.LSU.2.20.1706221422360.30709@cbobk.fhfr.pm>
	<20170627175321.GS21846@wotan.suse.de>
	<s5hh8z1wadm.wl-tiwai@suse.de> <20170627190424.GW21846@wotan.suse.de>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 28 Jun 2017 10:04:17 +0200
Message-ID: <CAKMK7uHvCLXLoq9m8asZwZeHBtK3qm-c2EK3UVpv9TmPwuBD8Q@mail.gmail.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
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

On Tue, Jun 27, 2017 at 9:04 PM, Luis R. Rodriguez <mcgrof@kernel.org> wrote:
>> I guess it shouldn't be too difficult to build a kernel package based
>> on subsystem for-next branch regularly like we do for KOTD and
>> linux-next kernel packages.  You'd need to set up some cron job to git
>> pull, repackage tarball and adjust config file somehow automatically,
>> then feed it to osc (in the case of openSUSE/SUSE OBS).
>
> That'd be great. It sounds like we have trees like this for media, and
> wireless. Not sure of others.

In case anyone cares, I'm trying to make drm-tip _the_ integration
tree for graphics. Doesn't contain everything yet, but generally a
good place for build-bots, and iirc at least ubuntu has a ppa for it:

https://cgit.freedesktop.org/drm-tip

And the integration manifest:

https://cgit.freedesktop.org/drm-tip/tree/integration-manifest

Probably the neatest thing is that there's no single person
maintaining it, but conflicts get resolved and stored when they
happen, by the person who pushes the patches creating the conflict.
See

https://cgit.freedesktop.org/drm-tip/log/?h=rerere-cache

So yeah we've managed to scale maintaining an integration tree to a
team of 20+ people, everyone with commit rights in the various trees
essentially :-)

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
