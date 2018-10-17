Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B669230F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 09:31:49 +0000 (UTC)
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
	[209.85.221.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45E9D623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 09:31:49 +0000 (UTC)
Received: by mail-vk1-f193.google.com with SMTP id l186so5567817vke.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 02:31:49 -0700 (PDT)
MIME-Version: 1.0
References: <20181017071902.30102-1-geert@linux-m68k.org>
	<20181017091325.GA15991@localhost>
In-Reply-To: <20181017091325.GA15991@localhost>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 17 Oct 2018 11:31:35 +0200
Message-ID: <CAMuHMdX0G767xYYcd8TDMLBp3cY9+fz_aJFAuz8OxgmCmhbNrg@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org, tomi.valkeinen@iki.fi
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

Thanks for your comments!

On Wed, Oct 17, 2018 at 11:13 AM Josh Triplett <josh@joshtriplett.org> wrote:
> On Wed, Oct 17, 2018 at 09:19:01AM +0200, Geert Uytterhoeven wrote:
> > Providing an explicit list of discrimination factors may give the false
> > impression that discrimination based on other unlisted factors would be
> > allowed.
>
> This impression is, in fact, false, as has already been discussed
> elsewhere. I had hoped that discussion would suffice.

The CoC FAQ is not part of the CoC, and not part of the Linux kernel.
If the CoC is imprecise, it should be fixed in the CoC, not in a separate
document hosted elsewhere, as discussed elsewhere.

Comparison with the GPL and the GPL FAQ is not appropriate, as the GPL
is still the precise legal document, while its FAQ is a clarification using
laymen's terms.

> As mentioned there: The original commit explicitly said "Explicit
> guidelines have demonstrated success in other projects and other areas
> of the kernel."; this is precisely the kind of explicit guideline it

Given the original commit was not submitted for and objected to public
review, nobody had the chance to question these statements, and ask for
pointers of proof, which would surely have happened.

> refers to. Listing explicit cases to cover does not imply other cases
> are not covered;

It does, if not accompanied by "examples of...", like in the other sections.

> it does, however, ensure that the listed cases *are*,
> and helps people know that they're covered.

So you agree people cannot know if the unlisted cases are covered or not?

> This patch is not OK, and defeats one of the purposes of the original
> change.

So the purpose of the original change was to list a number of factors,
without saying that it was just a list of examples?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
