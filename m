Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 34A5349F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 10:03:08 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AC15A13A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 10:03:07 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id e26so9280831lfc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 02:03:07 -0800 (PST)
MIME-Version: 1.0
References: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
In-Reply-To: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Nov 2018 11:02:54 +0100
Message-ID: <CACRpkdabmP3EhQGiRcg_aJ75U2hpjuLe+uH36i46O+Z=wE2H_Q@mail.gmail.com>
To: willy6545@gmail.com
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] XArray
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Nov 13, 2018 at 7:02 PM Matthew Wilcox <willy6545@gmail.com> wrote:

> Now that the XArray is in, it's time to make use of it. I've got a git tree which converts
> every current user of the radix tree to the XArray as well as converting some
> users of the IDA to the XArray.
>
> The XArray may also be a great replacement for a list_head in your data structure.
>
> I can also talk about currently inappropriate uses for the XArray and what I
> might do in future to make the XArray useful for more users.

This sounds like awesome.

I hope there will be an LWN article coming out of this for those of us
who cannot participate in person.

Yours,
Linus Walleij
