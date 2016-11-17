Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D11578A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Nov 2016 16:04:39 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DDE37347
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Nov 2016 16:04:38 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id n68so16064455itn.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Nov 2016 08:04:38 -0800 (PST)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
	<CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 17 Nov 2016 08:04:37 -0800
Message-ID: <CA+55aFw6s_1iGjNqf+t1XJ-d0RKNzacLery+JoQk-9_dmnosew@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Nov 17, 2016 at 8:02 AM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> No. That is how I *noticed* the issue. Those stupid pdf binary files
> have been around forever, I just didn't notice until the Fedora people
> started complaining about the patches.

Side note: my release patches these days enable both "--binary" and
"-M", so they require "git apply" now. So we handle the binaries fine
in patches now, but as mentioned, that was just what made me notice,
it wasn't a fix for the deeper ("source") problem.

                   Linus
