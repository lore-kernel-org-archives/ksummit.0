Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3992F82D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 13:46:11 +0000 (UTC)
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 270D51F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 13:46:10 +0000 (UTC)
Received: by mail-oa0-f50.google.com with SMTP id i7so5581744oag.37
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 06:46:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+kOu82okhJn0_ftwemE_m4nsTRawrF-fWAU2XTJ9xRcA@mail.gmail.com>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140516184205.GL27822@titan.lakedaemon.net>
	<1400278842.2647.62.camel@deadeye.wl.decadent.org.uk>
	<4931877.zNfKfvcgox@wuerfel>
	<CAL_Jsq+kOu82okhJn0_ftwemE_m4nsTRawrF-fWAU2XTJ9xRcA@mail.gmail.com>
Date: Fri, 23 May 2014 15:46:09 +0200
Message-ID: <CACRpkdaPStOjWeH9SgHKjcyrOfebbnvs_p5rWueNBdt9oBBMzg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>,
	Linus Walleij <linus.ml.walleij@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
	finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 20, 2014 at 1:06 AM, Rob Herring <robh@kernel.org> wrote:
> On Mon, May 19, 2014 at 7:20 AM, Arnd Bergmann <arnd@arndb.de> wrote:

>> We should really have this in multiplatform soon, I think the last issue
>> for versatile is common clock support, but Linus Walleij may have more
>> details about what remains here.
>
> While not necessarily the same thing, but does move versatile in the
> right direction, I've got patches in progress which fully move
> versatile over to DT.

Doing this two-stage rocket:
Legacy -> DT -> multiplatform

Is usually the smoothest. That is what I did on U300, U8500
and will do on the Integrator.

> I'd like to do this all in one step to avoid doing things like non-DT
> common clock init. It's blocked on the common DT PCI code and my free
> time.

I agree. And invariably this will confuse a lot of QEMU users
until they figure out how to boot their new image with a device
tree. But that is business as usual I guess.

> There are then a few bits related to mach/plat headers needed move
> versatile to multiplatform. I think these issues are mostly the same
> changes that have been done or are needed on integrator which is what
> Linus has been working on.

I'm onto these as part of both Integrator and RealView modernization.

Yours,
Linus Walleij
