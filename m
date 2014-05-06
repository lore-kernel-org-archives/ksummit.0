Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 324F9AAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:42:04 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.231])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6880520118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:42:03 +0000 (UTC)
Date: Tue, 6 May 2014 16:42:01 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20140506164201.69611e7d@gandalf.local.home>
In-Reply-To: <20140506203426.GA15428@jtriplet-mobl1>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506190024.GA1004@kroah.com>
	<20140506160740.1245d1f4@gandalf.local.home>
	<20140506203426.GA15428@jtriplet-mobl1>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Tue, 6 May 2014 13:34:26 -0700
Josh Triplett <josh@joshtriplett.org> wrote:

> On Tue, May 06, 2014 at 04:07:40PM -0400, Steven Rostedt wrote:
> > On Tue, 6 May 2014 12:00:24 -0700
> > Greg KH <greg@kroah.com> wrote:
> > 
> > 
> > > We do have linux-api, which should be cc:ed for new api additions.  But
> > > it usually isn't :(
> > 
> > That's the first I've heard of that list. Maybe that's the reason it
> > hasn't been cc'd much. Hard to Cc lists that you don't know about.
> > 
> > /me goes to look in MAINTAINERS for linux-api mailing list. Nope, not
> > there.
> 
> Here's a patch:
> 
> ---8<---
> >From 424c7365ed5ed64190a1d08fe30c8e86832368b4 Mon Sep 17 00:00:00 2001
> From: Josh Triplett <josh@joshtriplett.org>
> Date: Tue, 6 May 2014 13:20:25 -0700
> Subject: [PATCH] MAINTAINERS: Add linux-api for review of API/ABI changes
> 
> This makes it more likely that patch submitters will CC API/ABI changes
> to the linux-api list, and tools like get_maintainer.pl will do so
> automatically.
> 

Although patches need to go to LKML.

Acked-by: Steven Rostedt <rostedt@goodmis.org>

-- Steve

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
>  ABIT UGURU 1,2 HARDWARE MONITOR DRIVER
>  M:	Hans de Goede <hdegoede@redhat.com>
>  L:	lm-sensors@lm-sensors.org
