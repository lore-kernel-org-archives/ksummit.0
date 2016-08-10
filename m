Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 86C5A71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 16:19:45 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7356114B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 16:19:44 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id j124so3337068ith.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 09:19:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160810150144.GH1437@8bytes.org>
References: <s5h60rs31z3.wl-tiwai@suse.de> <1560409.5vnWShrmDy@vostro.rjw.lan>
	<4b6ef14c-cea6-b51d-62db-ba3e708916ea@leemhuis.info>
	<20160809094046.GA1437@8bytes.org>
	<a9abc71f-7070-3f60-3f4c-16ac7a082fc9@leemhuis.info>
	<20160809223118.GG1437@8bytes.org>
	<87h9asx23l.fsf@intel.com> <20160810150144.GH1437@8bytes.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 10 Aug 2016 18:19:43 +0200
Message-ID: <CAKMK7uGtyGoGDzLcgw8GDwhVkiCanHkigSfy869a5U4LJBLN2g@mail.gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Content-Type: text/plain; charset=UTF-8
Cc: Thorsten Leemhuis <regressions@leemhuis.info>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 10, 2016 at 5:01 PM, Joerg Roedel <joro@8bytes.org> wrote:
> On Wed, Aug 10, 2016 at 03:03:42PM +0300, Jani Nikula wrote:
>> How about adding an entry, say "B:", to MAINTAINERS to let each
>> subsystem/driver specify the preferred method of reporting bugs? For
>> example, most drivers/gpu/drm bugs would get more attention at
>> https://bugs.freedesktop.org/ than https://bugzilla.kernel.org/.
>
> I thought about that too, it might make sense if we can't agree on
> anything better. In the end it is more hassle for the users and requires
> more knowledge on their side. They have to know at least in which part of
> the kernel the problem occured and then look that part up in the
> MAINTAINERS file to find out how to report the bug. There are probably
> quite a few users who give up somewhere on that path.

We already have this trouble on the gfx side, just worse: Users
generally have no idea which one of kernel driver, X driver, mesa/gl,
libva/video or whatever exactly blew up. Which is why we're
redirecting everyone to bugs.freedesktop.org, there we can at elast
reassign between the different parts.

Of course that then means we can't easily reassing to other kernel
components, but that seems to happen far less often (for us).

Anyway, +1 from me for B: in MAINTAINERS to make it at least possible
for users to figure out where to file a bug. Default would be mailo:
<mailing list from same maintainer entry>.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
