Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA3F8FAA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 19:44:22 +0000 (UTC)
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF6C6716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 19:44:21 +0000 (UTC)
Received: by mail-io0-f170.google.com with SMTP id y3-v6so1656920ioc.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 12:44:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <06539e48-f20c-431d-51aa-3d299ef894ac@linuxfoundation.org>
References: <06539e48-f20c-431d-51aa-3d299ef894ac@linuxfoundation.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 10 Sep 2018 21:44:20 +0200
Message-ID: <CAKMK7uGLyP4yk+gcJfAdJxr5h7q4F5d9+UTHr9_juFATBM4HZA@mail.gmail.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Gitlab (or similar)
 hosting at kernel.org
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 9:00 PM, Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> Hi, all:
>
> The topic of Gitlab comes up quite a bit recently, so I think it's worth
> having a separate conversation about it. Kernel.org provides gitolite
> hosting, which works great for most "old skool" maintainers who are
> comfortable with "everything over email" (see Greg's talk about patches
> carved into stone tablets [1]). However, just in case I'm stuck in an
> echo chamber, I wanted to ask if providing a more "holistic" platform
> like Gitlab (or one of its alternatives like Pagure, pending evaluation)
> is something we should be actively considering to be offered centrally
> as a standard kernel.org service.

Except I'm massively misreading the tea leaves I don't expect drm to
move from fd.o to k.org. Our interaction surface towards the userspace
projects hosted on fd.o (mesa, X11, wayland, ...) is much bigger than
towards the other parts of the kernel, I expect us to stay with those
folks. Being able to reassign/move issues and have simple
cross-project discussions with those guys matters a lot. Same reasons
really for us abandoning kernel bugzilla in favour of the fd.o one.

Of course that's just drm, no idea who else might entertain this.
-Daniel

>
> .. [1]
> https://kernel-recipes.org/en/2016/talks/patches-carved-into-stone-tablets/
>
> Regards,
> --
> Konstantin Ryabitsev
> The Linux Foundation
> kernel.org
>
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
