Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2A6CCA80
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 21:19:49 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 829D23F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 21:19:48 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 07 Jul 2017 00:19:46 +0300
Message-ID: <1601331.LiGNiPeBdk@avalon>
In-Reply-To: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<20170706144028.46a2mt2mdzpt6ip7@mwanda>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Dan Carpenter <dan.carpenter@oracle.com>, Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thursday 06 Jul 2017 17:40:29 Dan Carpenter wrote:
> People have mentioned "make oldconfig" but I've never had a lot of luck
> with that.  It always just prints "* Restart config..." and deletes my
> config.

I like oldconfig as it makes it easy to find about new options when upgrading 
the kernel. However, there's one thing that bothers me. When jumping by more 
than one kernel version, the number of options can be quite high, in which 
case I sometimes make mistakes answering questions. I'd love it if Kconfig 
allowed me to go back and correct mistakes, instead of having to note the 
option down and modify it manually afterwards.

> Also I hate menus.  It's such a pain if you want to enable a feature and
> you have to do a dungeon crawl through our menu system to try find it.
> 
> I wrote a script a couple years ago to create kernel configs.  I do a
> make defconfig, then I take a distro config and I do:
> 
>     for i in $(grep =m old_config) ; do
> 	./scripts/kconfig/kconfig set $i
>     done
> 
> This prints a lot of errors and the code is only half implemented but
> it's honestly the easiest way for me to get a bootable kernel these
> days.  If someone wanted to the could add a "./scripts/kconfig/kconfig
> file <name>" command that would read a line at a time and call
> `./scripts/kconfig/kconfig set $line` over and over.

-- 
Regards,

Laurent Pinchart
