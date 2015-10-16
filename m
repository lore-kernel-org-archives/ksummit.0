Return-Path: <marcel@holtmann.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 601B79B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 08:09:56 +0000 (UTC)
Received: from mail.holtmann.org (senator.holtmann.net [87.106.208.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D2BBFA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 08:09:55 +0000 (UTC)
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <8179129.ZdLT4uWW88@wuerfel>
Date: Fri, 16 Oct 2015 10:00:18 +0200
Content-Transfer-Encoding: quoted-printable
Message-Id: <8E20B896-416E-4C76-877B-26B558D44422@holtmann.org>
References: <20151012190137.GA1992@thunk.org>
	<CAL_JsqLxYRBhnLj0SyEtgwWaCPM+UcPindxZ2NswB3WKopCyPw@mail.gmail.com>
	<1444978357.2370.8.camel@sipsolutions.net>
	<8179129.ZdLT4uWW88@wuerfel>
To: Arnd Bergmann <arnd@arndb.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Arnd,

>> On Thu, 2015-10-15 at 19:41 -0500, Rob Herring wrote:
>> the unwillingness of chip
>> vendors (hi Broadcom, Qualcomm, MediaTek) to have an upstream driver
>> that they actually use (some of those do support an upstream driver,
>> but don't ship that one and it doesn't nearly have the necessary
>> features, while the actually used (still open source [1]) driver is a
>> pile of spaghetti code that we'd probably never merge upstream...)
>>=20
>> [1] except for MediaTek, I think, who seem to never be releasing =
source
>> code for any of their kernels
>>=20
>=20
> (getting offtopic here)
>=20
> My understanding is that MediaTek has improved much recently and their
> mt76 wireless driver source is available and getting upstreamed now
> and integrated into openwrt now. OTOH, Broadcom apparently regressed =
and is
> no longer releasing any source code to their newer softmac parts =
(bcm4360,
> bcm4352) or patching brcmsmac to support them, while they on the other
> hand got better at upstreaming their SoC support recently.

are sure that Mediatek got better? I am not convinced by that.

I think there is also a large difference in their MiniPCI cards compared =
to their connectivity hub in their SoC. The Bluetooth side for example =
is largely copying existing drivers, hacking their vendor specific =
behavior in and then throwing it over the wall.

Regards

Marcel
