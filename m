Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A712F0F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:40:17 +0000 (UTC)
Received: from mail-vk1-f194.google.com (mail-vk1-f194.google.com
	[209.85.221.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B645BA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:40:16 +0000 (UTC)
Received: by mail-vk1-f194.google.com with SMTP id 125-v6so551981vke.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 01:40:16 -0700 (PDT)
MIME-Version: 1.0
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180906224541.27a9c8fe@vmware.local.home>
In-Reply-To: <20180906224541.27a9c8fe@vmware.local.home>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Sep 2018 10:40:03 +0200
Message-ID: <CAMuHMdV=m7y_Jj7mgSo1SZGCEpXJz4R-y-KbXSoi+OaDmBtwHQ@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 7, 2018 at 4:45 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> Another issue about having fixes sit in linux-next for some time after
> -rc5, is that by that time, linux-next is filled with new development
> code waiting for the next merge window. A subtle fix for a bug that
> wasn't caught by linux-next in the first place (how else would that bug
> still be around by rc5?) is highly likely not to catch a bug with the
> fix to that subtle bug.

Or the issue may never show up in linux-next at all.

With strict by-subsystem merge policies, splitting a complicated patch set
by subsystem and scheduling it for inclusion across multiple kernel
versions can be challenging.  If anything slightly related is applied
independently, or due to a scheduling oversight or merge window miss, this
may lead to a regression in mainline that is never present in linux-next,
and usually only detected late, leading to a fix after -rc5.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
