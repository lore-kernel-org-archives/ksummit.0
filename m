Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C152CF0C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 10:17:47 +0000 (UTC)
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56B2E102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 10:17:47 +0000 (UTC)
Received: by mail-it0-f65.google.com with SMTP id u13-v6so750486iti.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 03:17:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXOk42QhHD28+2SJcMQGgV9TrtbVm-Gf8ZqA+WTmQrVog@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809101709371.15880@cbobk.fhfr.pm>
	<2620504.doLR7ekjFm@avalon> <878t482zki.fsf@intel.com>
	<CAMuHMdVNQZ1=WzhjKu7FUsJPHE7RoZQkM8FQ4Lvo_Nt6_fpEVw@mail.gmail.com>
	<CAKMK7uHZ2Ofh3usg3wasS0vx8VfBgzcDAicFcZY+fw7-LAP+5Q@mail.gmail.com>
	<CAMuHMdXOk42QhHD28+2SJcMQGgV9TrtbVm-Gf8ZqA+WTmQrVog@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 11 Sep 2018 12:17:45 +0200
Message-ID: <CAKMK7uEcz9d05fGekZgNZKB6KT+A4QJXgV2A05uGL7C3XFMQpQ@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 12:09 PM, Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
> On Tue, Sep 11, 2018 at 12:01 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>> On Tue, Sep 11, 2018 at 11:08 AM, Geert Uytterhoeven
>> <geert@linux-m68k.org> wrote:
>> > On Tue, Sep 11, 2018 at 10:44 AM Jani Nikula <jani.nikula@intel.com> wrote:
>> >> On Mon, 10 Sep 2018, Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
>> >> > That's also one of my concerns. The differences between subsystems that all
>> >> > use an email-based review process can already be confusing, or just annoying
>> >> > to handle, especially when specific tools are mandated (the DRM dim tool or
>> >> > the ARM patch system come to mind).
>> >>
>> >> Note that you don't need to use dim unless you become a committer or a
>> >> maintainer to a tree that's maintained using dim.
>> >
>> > Which unfortunately cannot be said about the ARM patch system...
>>
>> Is there some docs about this ARM patch systems? Or just a link to
>> what it is? I've never heard of it, until this thread here.
>
> http://www.arm.linux.org.uk/developer/patches/info.php

Thanks.

> It does take git-send-email patches, IFF they follow the rules.
>
> I've just discovered it's even linked to from Documentation/arm/README,
> which is horridly out-of-date (2.6? FTP?).

>From a quick look: This is essentially another reimplementation of the
patchwork idea (but probably predating that)? With the difference it's
not all that accepting as patchwork, and it doesn't just automatically
read a mailing list en-passant. Or am I off the mark?
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
