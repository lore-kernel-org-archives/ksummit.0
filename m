Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4FA5A9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 06:52:44 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [5.9.151.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C5E628E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 06:52:43 +0000 (UTC)
Message-ID: <1444978357.2370.8.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Rob Herring <robherring2@gmail.com>, Theodore Ts'o <tytso@mit.edu>
Date: Fri, 16 Oct 2015 08:52:37 +0200
In-Reply-To: <CAL_JsqLxYRBhnLj0SyEtgwWaCPM+UcPindxZ2NswB3WKopCyPw@mail.gmail.com>
References: <20151012190137.GA1992@thunk.org>
	<CAL_JsqLxYRBhnLj0SyEtgwWaCPM+UcPindxZ2NswB3WKopCyPw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2015-10-15 at 19:41 -0500, Rob Herring wrote:
> 
> - Gaps in driver subsystems:
>   - WiFi - Android gaps: mode switching, P2P, Chromecast, roaming,
> ePNO, Passpoint

I will be there, I can talk about this if desired, or you can poke me
on the hallway to talk about it :)

The overwhelming problem isn't our unwillingness to upstream this work
though, it's the unwillingness of Google to release requirements early
enough to make that possible, along with the unwillingness of chip
vendors (hi Broadcom, Qualcomm, MediaTek) to have an upstream driver
that they actually use (some of those do support an upstream driver,
but don't ship that one and it doesn't nearly have the necessary
features, while the actually used (still open source [1]) driver is a
pile of spaghetti code that we'd probably never merge upstream...)

[1] except for MediaTek, I think, who seem to never be releasing source
code for any of their kernels

johannes
