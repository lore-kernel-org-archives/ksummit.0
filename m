Return-Path: <andrew@lunn.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 16157947
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 14:17:44 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [178.209.37.122])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B4A3D2024E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 14:17:43 +0000 (UTC)
Date: Mon, 12 May 2014 15:58:36 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20140512135836.GD3378@lunn.ch>
References: <20140511053037.GQ12708@titan.lakedaemon.net>
	<536FBA0E.5090301@gmail.com> <20140511190752.GC2527@linux.com>
	<20140511192630.GA14115@kroah.com>
	<20140511195011.GD2527@linux.com> <536FDE91.3050708@xs4all.nl>
	<20140512083825.GB2665@katana>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140512083825.GB2665@katana>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] hobbyist recruiting
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> Agree. That is why I point people to OpenWRT which has tons of hardware
> support which is not mainline. And old routers can quite easily be
> obtained. Yet, one must be willing enough to get support of a mostly
> outdated HW into the kernel, just for the fun of it.

I've had some success contacting the authors of kirkwood SoC based
board ports that are in OpenWRT and asking them to contribute there
patches to mainline. It has not been too much effort helping them
clean up the contribution to get the code in mainline. Nobody has made
the transition to a regular contributer, but they do tend to help with
testing when patches affect there board and you ask for tests.

arch/arm/boot/dts$ ls -1 *.dts | cut -f 1 -d - | sort | uniq -c| sort -rn

     57 kirkwood
     33 omap3
     19 imx6q
     18 imx28
     14 armada
     12 imx6dl
     10 tegra20
      9 ste
      9 imx53
      7 sun4i
      7 omap4
      6 am335x
      5 imx27
  
With the usual declaimer of lies, damn lies, and statistics, it looks
like we are doing something right. And kirkwood is mostly hobbyist
maintained.

     Andrew
