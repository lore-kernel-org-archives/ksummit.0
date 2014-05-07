Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 875A3875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 11:48:07 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 55EE31FB51
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 11:48:06 +0000 (UTC)
Date: Wed, 7 May 2014 13:48:03 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Josh Triplett <josh@joshtriplett.org>
In-Reply-To: <20140506203426.GA15428@jtriplet-mobl1>
Message-ID: <alpine.LNX.2.00.1405071343390.3969@pobox.suse.cz>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506190024.GA1004@kroah.com>
	<20140506160740.1245d1f4@gandalf.local.home>
	<20140506203426.GA15428@jtriplet-mobl1>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 6 May 2014, Josh Triplett wrote:

> From 424c7365ed5ed64190a1d08fe30c8e86832368b4 Mon Sep 17 00:00:00 2001
> From: Josh Triplett <josh@joshtriplett.org>
> Date: Tue, 6 May 2014 13:20:25 -0700
> Subject: [PATCH] MAINTAINERS: Add linux-api for review of API/ABI changes
> 
> This makes it more likely that patch submitters will CC API/ABI changes
> to the linux-api list, and tools like get_maintainer.pl will do so
> automatically.
> 
> Signed-off-by: Josh Triplett <josh@joshtriplett.org>
> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 7578deb..52a282b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -210,6 +210,13 @@ S:	Supported
>  F:	Documentation/scsi/aacraid.txt
>  F:	drivers/scsi/aacraid/
>  
> +ABI/API
> +L:	linux-api@vger.kernel.org
> +F:	Documentation/ABI/
> +F:	include/linux/syscalls.h
> +F:	include/uapi/
> +F:	kernel/sys_ni.c
> +

It'd be nice to have also sysfs changes covered as well if this is not 
just about API, but also ABI; I am not sure whether this could be covered 
by MAINTAINERS pattern, but at least mentioning this list in 
Documentation/ABI/README seems appropriate.

(I am also wondering who is actually subsribed to the linux-api@ 
mailinglist, given the low general awareness of its existance :) ).

-- 
Jiri Kosina
SUSE Labs
