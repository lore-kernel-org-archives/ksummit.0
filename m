Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0612ADD1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 08:56:04 +0000 (UTC)
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
	[209.85.217.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6DFD26CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 08:56:03 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id v18-v6so10948978vsl.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 08 Oct 2018 01:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20181007085102.17795-1-geert@linux-m68k.org>
	<20181007113514.GA21217@localhost>
In-Reply-To: <20181007113514.GA21217@localhost>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 8 Oct 2018 10:55:50 +0200
Message-ID: <CAMuHMdVS6QVfg6=-a9+qgnhjT4f1aEMdEm54jKFy7MnSxCj_1g@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH] code-of-conduct: Remove explicit list
 of discrimination factors
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Josh,

On Sun, Oct 7, 2018 at 1:35 PM Josh Triplett <josh@joshtriplett.org> wrote:
> On Sun, Oct 07, 2018 at 10:51:02AM +0200, Geert Uytterhoeven wrote:
> > Providing an explicit list of discrimination factors may give the false
> > impression that discrimination based on other unlisted factors would be
> > allowed.
> >
> > Avoid any ambiguity by removing the list, to ensure "a harassment-free
> > experience for everyone", period.
>
> I would suggest reading the commit message that added this in the first
> place. "Explicit guidelines have demonstrated success in other projects
> and other areas of the kernel." See also various comparisons of codes of

The first paragraph of the commit message (the "why" part) is exactly the
part we've been waiting for a clarification since the inception of the
commit...

> conduct, which make the same point. The point of this list is precisely
> to serve as one such explicit guideline; removing it would rather defeat
> the purpose.

Then (at least) the list should be marked containing examples, cfr. the other
examples in the document.

> In any case, this is not the appropriate place for such patches, any
> more than it's the place for patches to the GPL.

There are precedents:

Until recent, the file named "COPYING" (which you referred to in another
email related to patching the CoC), was a verbatim copy of the GPL, with
clarifications added at the top.

Documentation/process/code-of-conduct.rst is already a slightly modified
version of the original.

Now, if amending the CoC locally is not an option, I'm afraid a plain revert
is the only option, like for any other commit that breaks the userspace ABI
(Linux kernel developers are also users ;-), until the raised issues have
been resolved upstream.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
