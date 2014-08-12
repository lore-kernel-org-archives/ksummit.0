Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E16DD523
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 16:52:02 +0000 (UTC)
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 367B71F951
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 16:52:02 +0000 (UTC)
Received: by mail-lb0-f176.google.com with SMTP id u10so7340978lbd.35
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 09:52:00 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <53EA3F22.8080607@hitachi.com>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<53EA3DA0.2070407@roeck-us.net> <53EA3F22.8080607@hitachi.com>
Date: Tue, 12 Aug 2014 18:51:59 +0200
Message-ID: <CAMuHMdWLyTdBQr5OOky1UiY1ehK_N02xQ+GL17uhKtWR3p4cUg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Content-Type: text/plain; charset=UTF-8
Cc: Shuah Khan <shuah.kh@samsung.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 12, 2014 at 6:21 PM, Masami Hiramatsu
<masami.hiramatsu.pt@hitachi.com> wrote:
>>> I'm interested in this as well. I'm working on a tool that crossbuilds a
>>> very simple busybox rootfs and boots in QEMU for as many architectures
>>> as possible. I want to make it easy to sanity test all the major
>>> architectures. Right now it does little more than boot to a login
>>> prompt, but I'd like to get the kselftests into it also.

Like Aboriginal Linux (landley.net/aboriginal/)?

>> Do you have that public yet ? I might want to use that for my -stable sanity tests.
>
> IMHO, We'd better share those testing tools/environments as much as
> possible so that each developer can ensure no regressions in their
> patches before sending it.

Yes!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
