Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2A0054D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:22:05 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3010920327
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 19:22:04 +0000 (UTC)
Message-ID: <537513BC.6020401@zytor.com>
Date: Thu, 15 May 2014 12:21:32 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: David Woodhouse <dwmw2@infradead.org>, Jason Cooper <jason@lakedaemon.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>	<20140511162918.GA2527@linux.com>
	<1995824.rdvEX5SOIt@avalon>	<20140511171824.GB2527@linux.com>	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>	<20140512161539.GX12708@titan.lakedaemon.net>
	<1399992357.879.207.camel@i7.infradead.org>
In-Reply-To: <1399992357.879.207.camel@i7.infradead.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/13/2014 07:45 AM, David Woodhouse wrote:
> 
> With smart Internet-connected TVs and monitors, can't we embed the app
> in the monitor itself, and have it upload the oops? Why use a
> camera...? :)
> 

The whole point of doing this is for dealing with devices which don't
have any kind of reasonable path to the Internet.

If you have a device that can take a perfect screenshot, there are *way*
better ways to use that than making a QR code, and if there is another
path to the outside world, it is probably a lot better.

	-hpa (who is suddenly thinking extremely evil thoughts about
              modem tones and sound cards.)
