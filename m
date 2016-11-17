Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 077B98A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Nov 2016 16:02:54 +0000 (UTC)
Received: from mail-yb0-f196.google.com (mail-yb0-f196.google.com
	[209.85.213.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8DD2023D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Nov 2016 16:02:53 +0000 (UTC)
Received: by mail-yb0-f196.google.com with SMTP id v78so7186239ybe.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Nov 2016 08:02:53 -0800 (PST)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <2923918.nyphv1Ma7d@wuerfel>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 17 Nov 2016 08:02:50 -0800
Message-ID: <CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
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

On Thu, Nov 17, 2016 at 3:07 AM, Arnd Bergmann <arnd@arndb.de> wrote:
>
> [adding Linus for clarification]
>
> I understood the concern as being about binary files that you cannot
> modify with classic 'patch', which is a separate issue.

No. That is how I *noticed* the issue. Those stupid pdf binary files
have been around forever, I just didn't notice until the Fedora people
started complaining about the patches.

My real problem is not "binary" or even "editable", but SOURCE CODE.

It's like including a "vmlinux" image in the git tree: sure, you can
technically "edit" it with a hex editor, but that doesn't change the
basic issue: it's not the original source code.

I don't want to see generated binary crap.

That goes for png, that goes for gif, that goes for pdf - and in fact
that goes for svg *too*, if the actual source of the svg was something
else, and it was generated from some other data.

We have makefiles, but more importantly, few enough people actually
*generate* the documentation, that I think if it's an option to just
fix sphinx, we should do that instead. If it means that you have to
have some development version of sphinx, so be it. Most people read
the documentation either directly in the unprocessed text-files
("source code") or on the web (by searching for pre-formatted docs)
that I really don't think we need to worry too much about the
toolchain.

But what we *should* worry about is having the kernel source tree
contain source.

                 Linus
