Return-Path: <krzk@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1344ECD2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 May 2018 10:42:53 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 66E1D6A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 May 2018 10:42:52 +0000 (UTC)
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E31C52176F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 May 2018 10:42:51 +0000 (UTC)
Received: by mail-wr0-f174.google.com with SMTP id g21-v6so15446121wrb.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 May 2018 03:42:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180509224313.5e5fe381@canb.auug.org.au>
References: <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<20180509090346.GY13402@sirena.org.uk>
	<20180509204727.7ff38021@canb.auug.org.au>
	<20180509105534.GE7985@vkoul-mobl>
	<20180509224313.5e5fe381@canb.auug.org.au>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 15 May 2018 12:42:49 +0200
Message-ID: <CAJKOXPf=y_D4qA-M=cf4nuL3-J4D9k5UrVo=fDPjJwtntCUBFA@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 9, 2018 at 2:43 PM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> Hi Vinod,
>
> On Wed, 9 May 2018 16:25:34 +0530 Vinod Koul <vinod.koul@linaro.org> wrote:
>> >
>> > I currently have 44 such fixes branches.  More welcome!
>>
>> Great so do you want us to send fixes branch or scan the existing trees and add
>> them.
>
> The former.

Please merge following fixes branches from my trees:
Tree: samsung-krzk
git://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git
branch: fixes

Tree: pinctrl-samsung
git://git.kernel.org/pub/scm/linux/kernel/git/pinctrl/samsung.git
branch: pinctrl-fixes

Although both are currently empty... but I guess you are collecting
this also for future.

Best regards,
Krzysztof
