Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 10947847
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 08:45:43 +0000 (UTC)
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0B555E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 08:45:41 +0000 (UTC)
Received: by oiev17 with SMTP id v17so12907600oie.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 01:45:41 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20151016075735.GC11271@zurbaran.home>
References: <20151012190137.GA1992@thunk.org>
	<CAL_JsqLxYRBhnLj0SyEtgwWaCPM+UcPindxZ2NswB3WKopCyPw@mail.gmail.com>
	<20151016075735.GC11271@zurbaran.home>
Date: Fri, 16 Oct 2015 10:45:41 +0200
Message-ID: <CAMuHMdVOK-e4KN5aG77SkZmieeem3ADrCYOUPsoPg+tz6oUfxg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Samuel Ortiz <sameo@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Samuel,

On Fri, Oct 16, 2015 at 9:57 AM, Samuel Ortiz <sameo@linux.intel.com> wrote:
> On Thu, Oct 15, 2015 at 07:41:15PM -0500, Rob Herring wrote:
>> - Gaps in driver subsystems:
>>   - WiFi - Android gaps: mode switching, P2P, Chromecast, roaming,
>> ePNO, Passpoint
>>   - DRM/Graphics
>>   - BT/GPS/NFC - proper kernel drivers for serial devices
> Could you elaborate by what you mean by "proper" drivers in that
> context?

I think this is about the ongoing work to represent serial devices as a bus,
so serial slaves can connect to them using a standard API.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
