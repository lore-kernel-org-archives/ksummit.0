Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C3E9D523
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 06:37:35 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DBDF20193
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 06:37:35 +0000 (UTC)
Date: Mon, 12 May 2014 08:37:32 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Li Zefan <lizefan@huawei.com>
In-Reply-To: <536B25AD.8040502@huawei.com>
Message-ID: <alpine.LNX.2.00.1405120833540.5813@pobox.suse.cz>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506190024.GA1004@kroah.com>
	<20140506160740.1245d1f4@gandalf.local.home>
	<20140506203426.GA15428@jtriplet-mobl1>
	<alpine.LNX.2.00.1405071343390.3969@pobox.suse.cz>
	<536B25AD.8040502@huawei.com>
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

On Thu, 8 May 2014, Li Zefan wrote:

> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index 7578deb..52a282b 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -210,6 +210,13 @@ S:	Supported
> >>  F:	Documentation/scsi/aacraid.txt
> >>  F:	drivers/scsi/aacraid/
> >>  
> >> +ABI/API
> >> +L:	linux-api@vger.kernel.org
> >> +F:	Documentation/ABI/
> >> +F:	include/linux/syscalls.h
> >> +F:	include/uapi/
> >> +F:	kernel/sys_ni.c
> >> +
> > 
> > It'd be nice to have also sysfs changes covered as well if this is not 
> > just about API, but also ABI; I am not sure whether this could be covered 
> > by MAINTAINERS pattern, but at least mentioning this list in 
> > Documentation/ABI/README seems appropriate.
> 
> If sysfs is in, 

Well, sysfs definitely is considered kernel ABI.

> what about cgroupfs? Which has been under dramatic changes.

This is of course interesting (and important) question per se -- the 
amount of interfaces between userspace and kernelspace is growing at a 
rapid pace (especially a lot of crap gets added into debugfs I guess), and 
it's not always clearly defined what is considered proper ABI and thus 
should be maintained stable.

Is "if we ever get a report about userspace regression because of kernel 
interface change" enough well-defined criteria? What if there is userspace 
depending on the contents of the kernel ringbuffer? Etc etc ...

-- 
Jiri Kosina
SUSE Labs
