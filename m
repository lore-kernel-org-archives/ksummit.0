Return-Path: <Nicolas.Ferre@microchip.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 69FACCCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Aug 2018 12:57:30 +0000 (UTC)
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
	[216.71.150.166])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 230A5177
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Aug 2018 12:57:30 +0000 (UTC)
To: Stephen Rothwell <sfr@canb.auug.org.au>
References: <551A9FAC.2010203@atmel.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Message-ID: <f15a82c8-5960-34ea-e7fc-dffdfdd369c6@microchip.com>
Date: Wed, 22 Aug 2018 14:47:56 +0200
MIME-Version: 1.0
In-Reply-To: <551A9FAC.2010203@atmel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Ludovic Desroches <ludovic.desroches@microchip.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: [Ksummit-discuss] at91 git tree in linux-next
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Stephen,

Alexandre Ludovic and myself are the group of maintainers for Microchip 
ARM SoCs. The current tree that we have in linux-next is mine [1] and we 
are moving to a common group kernel.org tree.

So, can you please add our new tree to linux-next:
at91 git 
git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git#at91-next

instead of:
git://git.kernel.org/pub/scm/linux/kernel/git/nferre/linux-at91.git#at91-next

In addition to that, we also have now a "fixes" branch. Can you please 
add it to your "fixes" tree?

at91 git 
git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git#at91-fixes

Thanks for your help, best regards,
   Nicolas


[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Next/Trees#n84


Reference of previous request below... back in the days...

On 31/03/2015 at 15:22, Nicolas Ferre wrote:
> Hi Stephen,
> 
> I am the maintainer for the Atmel ARM SoCs (aka at91) and I would like to
> know if it's possible for you to include my git tree in linux-next. It is
> usually pulled in by the ARM-soc guys (in copy).
> 
> Here it is, with the branch that you would pull: "at91-next".
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/nferre/linux-at91.git  at91-next
> 
> I usually merge branches in this particular one when I send a pull-request to
> Arnd, Olof and Kevin so the material is usually pretty "stable".
> 
> Thanks, bye,
> 


-- 
Nicolas Ferre
