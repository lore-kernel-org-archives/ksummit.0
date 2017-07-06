Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E5AB59AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 14:40:43 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8B977A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 14:40:43 +0000 (UTC)
Date: Thu, 6 Jul 2017 17:40:29 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170627135839.GB1886@jagdpanzerIV.localdomain>
Cc: ksummit-discuss@lists.linuxfoundation.org, Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

People have mentioned "make oldconfig" but I've never had a lot of luck
with that.  It always just prints "* Restart config..." and deletes my
config.

Also I hate menus.  It's such a pain if you want to enable a feature and
you have to do a dungeon crawl through our menu system to try find it.

I wrote a script a couple years ago to create kernel configs.  I do a
make defconfig, then I take a distro config and I do:

    for i in $(grep =m old_config) ; do
	./scripts/kconfig/kconfig set $i
    done

This prints a lot of errors and the code is only half implemented but
it's honestly the easiest way for me to get a bootable kernel these
days.  If someone wanted to the could add a "./scripts/kconfig/kconfig
file <name>" command that would read a line at a time and call
`./scripts/kconfig/kconfig set $line` over and over.

regards,
dan carpenter
