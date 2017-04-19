Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9380BBA3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 21:52:42 +0000 (UTC)
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1574618F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 21:52:41 +0000 (UTC)
Received: by mail-io0-f194.google.com with SMTP id x86so7930107ioe.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 14:52:41 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CAFbkSA0RhZrrBx3Scq_QHKjFNFwMVxzgBWhOWKJGMXN38QKTOA@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
	<CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
	<CAFbkSA0RhZrrBx3Scq_QHKjFNFwMVxzgBWhOWKJGMXN38QKTOA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 19 Apr 2017 23:52:39 +0200
Message-ID: <CAMuHMdXTXv_rW0OY8zoKUdj4Sra0md4kpgo51TP6TcSc7P8SWA@mail.gmail.com>
To: Justin Forbes <jforbes@redhat.com>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Justin,

On Wed, Apr 19, 2017 at 8:11 PM, Justin Forbes <jforbes@redhat.com> wrote:
> For instance, while stable has been a great success over the years, the
> policy is no fixes in stable until they are in head.  Unfortunately a lot of
> simple fixes end up in queued in maintainer trees for -next and never end up
> in head until the next merge window.   I don't know what the answer here is,
> changing the stable policy in this regard doesn't seem like the best
> solution.

I think this has been discussed before: it's about finding a good balance
between fixing bugs, and making sure the fixes don't cause regressions.

Even with the policy of no fixes in stable until they are in head, we sometimes
end up with fixes in stable that do introduce regressions.

I believe someone has statistics about that?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
