Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07F95480
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 15:32:42 +0000 (UTC)
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5E26934F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 15:32:40 +0000 (UTC)
Received: by mail-ua0-f169.google.com with SMTP id a3so9749077uad.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 02 May 2018 08:32:40 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20180501163818.GD1468@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 2 May 2018 17:32:38 +0200
Message-ID: <CAMuHMdW7dzsfwBr3fAZADA9NK4osuHqMDvXvN+MrV4u098vbAw@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>, "ksummit-discuss@lists.linuxfoundation.org"
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

Hi Sasha,

On Tue, May 1, 2018 at 6:38 PM, Sasha Levin
<Alexander.Levin@microsoft.com> wrote:
> Working on AUTOSEL, it became even more obvious to me how difficult it is for a
> patch to get a proper review. Maintainers found it difficult to keep up with
> the upstream work for their subsystem, and reviewing additional -stable patches
> put even more load on them which some suggested would be more than what they
> can handle.

Thanks for your work!

>  - For some reason, the odds of a -rc commit to be targetted for -stable is
>    over 20%, while for merge window commits it's about 3%. I can't quite
> explain why that happens, but this would suggest that -rc commits end up
> hurting -stable pretty badly.

Aren't more -rc commits targeted for -stable because they are bugfixes?
Ideally, new features are supposed to be merged during the merge window,
while -rc commits fix bugs.

So they can be categorized like:
  1. Plain -rc commits,
  2. -rc commits fixing a bug:
       a. in the same release cycle,
       b. in a previous release.

2a assumes the bug was backported to -stable, too, doesn't it?

Do you have statistics for which categories are most buggy?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
