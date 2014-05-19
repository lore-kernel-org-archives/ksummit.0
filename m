Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0C15F48E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 07:30:36 +0000 (UTC)
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 13C801F9D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 07:30:34 +0000 (UTC)
Received: by mail-ig0-f182.google.com with SMTP id uy17so3151662igb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 00:30:33 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CAKocOONFuv5paQ8S8R8CTwa=pPu6034+qH7dJ_ohc_Y8xoFxPA@mail.gmail.com>
References: <1872038.43ncqEMWSx@avalon> <15219046.LHbmDh0AgC@avalon>
	<CAKocOOOzE3vMyU9pvVVc_-umNBdZH7+oJA1oLqXANfRTnMdM-w@mail.gmail.com>
	<1676170.vWBylJTWsK@avalon>
	<CAKocOONFuv5paQ8S8R8CTwa=pPu6034+qH7dJ_ohc_Y8xoFxPA@mail.gmail.com>
Date: Mon, 19 May 2014 09:30:33 +0200
Message-ID: <CAMuHMdWUh3daPm6PkLAmjfiy=sPC5xAA-H8NSmO7HUNE5cFgEA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Shuah Khan <shuahkhan@gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 19, 2014 at 3:00 AM, Shuah Khan <shuahkhan@gmail.com> wrote:
> On Thu, May 15, 2014 at 5:43 PM, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
>> On Tuesday 13 May 2014 08:26:09 Shuah Khan wrote:
>>>
>>> Can we use pm domains concept to solve the problem? As it exists today, it
>>> probably can't support loosely associated devices, however, could it be
>>> extended to support handling device groups that don't necessarily share
>>> power source and/or clock.
>>
>> If I understand them properly, power domains model groups of devices that
>> share common power handling. I'm not sure how they could be used to model PM
>> dependencies between devices. Feel free to prove me wrong though :-)
>>
>>> I started looking at this as a way to solve media device PM issues,
>>> however I haven't had a chance to experiment with this idea.
>
> Right now, PM domains currently support grouping of devices that share
> power source. What if we extended PM domains to support a concept of

Physical power domain...

> logical grouping of devices that have PM dependencies with a way to
> specify dependency ordering?
>
> For example, a media usb device example:
> The main driver could create a logical power domain and rest of the
> drivers add their devices to the same domain specifying their
> dependencies. logical power domain pm handlers can handle ordering. In

... and logical power domain...

> some cases, there is a need to save and restore state of tuner i2c and
> the existing save_state and restore_state could be used to within the
> scope of this logical domain.
>
> I think PM domains can definitely be used for media device case, but I
> am not sure about the specific case you are looking at where there is
> a clearly identified master driver/device.

Sure, it can be done.

> These are at the moment ideas and I need to do some work to test these
> theories. :)

.. and we also have clock power domains (cfr. pm_clk_notify()).

Now we do have hardware that would benefit from all three of the above.
AFAIK a device can be a member of only one power domain, through
the struct device.pm_domain pointer. Can/should this be extended,
cfr. the RPM_GET_CALLBACK() stack for Runtime PM (but we do want
to call into more than one of them).

I'm still too pm_domain-illiterate to say much more about this though...

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
