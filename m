Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F2B62483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 21:00:55 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 23D721F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 21:00:54 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 29 Aug 2016 23:00:35 +0200
References: <1472330452.26978.23.camel@perches.com>
	<1472473855.3425.18.camel@perches.com>
	<87lgzfihel.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87lgzfihel.fsf@kamboji.qca.qualcomm.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <201608292300.35292.arnd@arndb.de>
Cc: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>,
	Sasha Levin <levinsasha928@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday 29 August 2016, Kalle Valo wrote:
> MSLEEP: I think this is just noise, we don't care if it's actually 20 ms
> even if ask for 10 ms. That's the minimum time to wait, not the maximum
> (from our/HW point of view).
> 
> drivers/net/wireless/ath/ath10k/ahb.c:422: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt
> drivers/net/wireless/ath/ath10k/ahb.c:427: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt
> drivers/net/wireless/ath/ath10k/ahb.c:432: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt
> drivers/net/wireless/ath/ath10k/ahb.c:437: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt
> drivers/net/wireless/ath/ath10k/ahb.c:442: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt
> drivers/net/wireless/ath/ath10k/pci.c:2244: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt
> drivers/net/wireless/ath/ath10k/pci.c:2251: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt
> drivers/net/wireless/ath/ath10k/pci.c:2275: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt
> 

I've seen way too many patches addressing this warning in various ways that
do not improve readability or behavior of the driver. Typically a driver
calls "msleep(1)" in a loop as a way to poll for an event that will happen
at some point in the future but that generates no IRQ or other event we
can wait for, the stuff that used to be handled with "yield" a long time
ago.

Now every third caller of usleep_range() uses '1000' as the minimum time
and an arbitrary upper bound.

	Arnd
