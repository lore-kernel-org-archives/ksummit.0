Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EA81B26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 08:53:12 +0000 (UTC)
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BA1811F9F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 08:53:11 +0000 (UTC)
Received: by mail-ie0-f170.google.com with SMTP id at1so6668147iec.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 01:53:11 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20140525141725.54db587a@canb.auug.org.au>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525141725.54db587a@canb.auug.org.au>
Date: Sun, 25 May 2014 10:53:11 +0200
Message-ID: <CAMuHMdXEEJnuV5tdv8kc=uaFxwTYn-Bh=T-e6n5zC4uFvRT3Ag@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Stephen,

On Sun, May 25, 2014 at 6:17 AM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> On Sat, 24 May 2014 13:53:45 +0400 James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>>
>> The latter was supposed
>> to be helped by having the Reviewed-by: tag so we gave credit to
>> reviewers.  I've found the Reviewed-by tag to be a bit of a double edged
>> sword: it is a good way of giving review credits, but I also see patches
>> that come in initially with it on (usually the signoff and the
>> reviewed-by are from people in the same company) ... it's not
>> necessarily a bad thing, but it doesn't add much value to the kernel
>> review process, because we're looking for independent reviews.  The
>> other thing I find problematic is that some people respond to a patch
>> with a Reviewed-by: tag and nothing more.  I'm really looking for
>> evidence of actually having read (and understood) the patch, so the best
>> review usually comes with a sequence of comments, questions and minor
>> nits and a reviewed-by at the end.
>
> Some stats (I know you all love stats :-)):
>
> for next-20140523, no merge commits, origin/master..HEAD^ (exclude
> Linus' tree and my Next files commit)
>
> commits: 7717
> commits with more than one Signed-off-by: 6291
> commits with Reviewed-by: 1369
> commits with Tested-by: 354
>
> Not sure what these show ...

Thanks for the numbers!

How many Acked-by? Sometimes there's only a thin line between Acked-by
and Reviewed-by.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
