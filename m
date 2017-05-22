Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5722FB44
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 May 2017 15:11:33 +0000 (UTC)
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7E551A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 May 2017 15:11:29 +0000 (UTC)
Received: by mail-ua0-f193.google.com with SMTP id j17so7937498uag.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 May 2017 08:11:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACRpkdaRdZTB39-=sAojO+OyHtP02KaFChqGcxy+fWA8qaB2bw@mail.gmail.com>
References: <20170519193455.GA24206@localhost>
	<CACRpkdaRdZTB39-=sAojO+OyHtP02KaFChqGcxy+fWA8qaB2bw@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 22 May 2017 08:11:27 -0700
Message-ID: <CAOesGMhfrWSvLtDtGRWBTJiAoeSwzGgsdUTm26j1mpoVu0ghDg@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
	"arm@kernel.org" <arm@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: Re: [Ksummit-discuss] [GIT PULL] ARM: SoC fixes (and a cross-arch
	dt-include fix)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

[adding ksummit-discuss]

On Mon, May 22, 2017 at 4:44 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
> On Fri, May 19, 2017 at 9:34 PM, Olof Johansson <olof@lixom.net> wrote:
>
>>  - We've started telling people to avoid cross-tree shared branches if all
>>    they're doing is picking up one or two DT-used constants from a
>>    shared include file, and instead to use the numeric values on first
>>    submission. Follow-up moving over to symbolic names are sent in right
>>    after -rc1, i.e. here. It's only a few minor patches of this type.
>
> OK it seems like a reasonable process.
>
> It's not like I can think about anything better.
>
> I was more opting for doing things this way:
>
> - Create bindings and <dt-bindings/foo/bar.h> merge it into the
>   foo subsystem.
>
> - Merge driver into drivers/foo/bar.c that use <dt-bindings/foo/bar.h>
>
> - Submit DTS patch to ARM SoC (or whetever) using only numerical
>   values.
>
> - After the merge window, follow up with a patch replacing the
>   numerical constants with #defines from <dt-bindings/foo/bar.h>

You're describing exactly what we've been pushing people towards.

If it's just a few simple references it's not significantly more
awkward, and decouples merges and removes need for stable branches.
Essentially we've become slightly more lax in what we're willing to
consider _right after_ -rc1 to include these tweaks (and often patches
to turn on new drivers in defconfigs).

If the amount of contents grows too large we might need to tweak
things further, maybe with something pre-rc1 but that's more awkward.

> An alternative would obviously be to wait for the next merge window
> after merging the driver patch but I guess people are too impatient
> to do that (including me).

Yeah, asking people to spread out across releases would remove
dependencies a lot, but it would also slow down progress and frustrate
a lot of contributors so we don't do that.

> We discussed cross-tree dependencies a bit on ksummit-discuss
> but this solution was not mentioned back then.

I thought it was, but I wasn't fully engaged in the discussion. We've
also only started this over the last release or two so it's early to
tell just how well it'll work in reality. Cc:ing the list.



-Olof
