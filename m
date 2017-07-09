Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21C686C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Jul 2017 08:32:02 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56FDE8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Jul 2017 08:32:01 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id o202so9278491itc.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 09 Jul 2017 01:32:01 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CACRpkdZB9g3rCgRDnZFDT2g9qQTtUZhKG2Pxp8qKrGP3u1p5+Q@mail.gmail.com>
References: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<20170706144208.6hlgxwo37gntk6qm@mwanda>
	<CAJKOXPfE+ffRWq_1JB_1LSpg4gDne5pWNN2fKd-3t1hwX7amFA@mail.gmail.com>
	<20170707090206.uiry6j7yizpl7yw4@mwanda>
	<CACRpkdZB9g3rCgRDnZFDT2g9qQTtUZhKG2Pxp8qKrGP3u1p5+Q@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sun, 9 Jul 2017 10:31:59 +0200
Message-ID: <CAMuHMdUBt4g=VHNBeN9OCq76hWMtR=_Giu55MkeqQZT9+TsX4w@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>, Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 2/2] kconfig: new command line kernel
 configuration tool
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 9, 2017 at 5:56 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
>> Krzysztof Kozlowski wrote:
>>> However why not extending existing scripts/config? It
>>> already has the feature for setting kconfig options (without looking
>>> at dependencies - so like >> of yours).
>>
>> I didn't know about scripts/config when I wrote it.  scripts/config is
>> essentially a UI around "echo CONFIG_FOO=m >> .config".  It's totally
>> useless.
>
> Maybe useless for you but i use it every day in my work. To compile a kernel

I assume the script has it uses.
But to scratch Dan's itch (and mine, for generating .config from DTS), which
is the non-trivial case, it may not work.
So I'll definitely give Dan's script a try, thanks!

>         yes "" | make $(make_options) oldconfig

That will become an infinite loop if "y" is not a valid answer for the newly
introduced option (e.g. if it needs a number)?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
