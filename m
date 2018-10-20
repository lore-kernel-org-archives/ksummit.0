Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF0A0900
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 19:02:10 +0000 (UTC)
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
	[209.85.217.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 188C1701
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 19:02:10 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id e206so27304992vsd.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 12:02:09 -0700 (PDT)
MIME-Version: 1.0
References: <20181020134908.GA32218@kroah.com>
	<20181020135058.GF32218@kroah.com>
In-Reply-To: <20181020135058.GF32218@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 20 Oct 2018 21:01:57 +0200
Message-ID: <CAMuHMdUR_7GgFL0wqh9AdEq=HWmxPB=HzarEgY5TeLo67+S1LA@mail.gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org, mishi@linux.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 5/7] Code of Conduct Interpretation:
 Put in the proper URL for the committee
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Greg,

On Sat, Oct 20, 2018 at 3:53 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> There was a blank <URL> reference for how to find the Code of Conduct
> Committee.  Fix that up by pointing it to the correct kernel.org website
> page location.
>
> Acked-by: Chris Mason <clm@fb.com>
> Acked-by: Olof Johansson <olof@lixom.net>
> Acked-by: Theodore Ts'o <tytso@mit.edu>
> Acked-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Thanks for your patch!

> --- a/Documentation/process/code-of-conduct-interpretation.rst
> +++ b/Documentation/process/code-of-conduct-interpretation.rst
> @@ -123,8 +123,9 @@ Enforcement
>
>  The address listed in the Code of Conduct goes to the Code of Conduct
>  Committee.  The exact members receiving these emails at any given time
> -are listed at <URL>.  Members can not access reports made before they
> -joined or after they have left the committee.
> +are listed at https://kernel.org/code-of-conduct.html.  Members can not
> +access reports made before they joined or after they have left the
> +committee.

This seems to be the wrong URL? It just points to the CoC, not to the TAB
members.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
