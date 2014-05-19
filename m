Return-Path: <dh.herrmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AC396912
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 11:59:15 +0000 (UTC)
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BA28B1F8A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 11:59:13 +0000 (UTC)
Received: by mail-ie0-f175.google.com with SMTP id y20so5205729ier.34
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 04:59:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKMK7uE5F+_kwtRKjkjbr0d+-r8VjVD7UD5b1rGizhkfCVRkxQ@mail.gmail.com>
References: <20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <53739333.30108@zytor.com>
	<20140514185449.GB4475@jtriplet-mobl1>
	<20140514200043.GA2516@linux.com>
	<CAKMK7uE5F+_kwtRKjkjbr0d+-r8VjVD7UD5b1rGizhkfCVRkxQ@mail.gmail.com>
Date: Mon, 19 May 2014 13:59:13 +0200
Message-ID: <CANq1E4TsYT+qPVrQaRKZ8ZL6vt1DbMtU=ZxCWLHWDBZYqwoo6A@mail.gmail.com>
From: David Herrmann <dh.herrmann@gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset=UTF-8
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Sarah A Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Anton Arapov <arapov@gmail.com>, Dirk Hohndel <hohndel@infradead.org>
Subject: Re: [Ksummit-discuss] Fwd: [TECH TOPIC] QR encoded oops for the
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi

On Wed, May 14, 2014 at 10:24 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Wed, May 14, 2014 at 10:00 PM, Levente Kurusa <levex@linux.com> wrote:
>> I as well would love to support QR codes in textmode, but I think that
>> it's really not possible at the moment.
>
> David Herrman is working on some new infrastructure for emergency log
> services on top of drm/kms drivers since we really, really want to
> move away from the horrors called fbcon. His design is fairly neat and
> there shouldn't be that big an issue with replacing the current
> character-painting code he has with some oops-painting code. Adding
> him to the discussion so he can point at some of the patches.

Still working on that, but I have no public tree for it right now. The
design basically asks all registered graphics driver for a
kernel-mapped framebuffer and the current mode/format. In case the
current FB is not / cannot be mapped, we try to flip to a fallback
buffer with the same mode/format. If even that fails, we try to do a
full modeset and DPMS stuff and more (this is all the responsibility
of the driver).
To avoid expensive call-paths, we do this step-by-step: first all
drivers are asked for the current FB and we render on all successfull
mappings. Then we continue with the remaining drivers and the
remaining options, and so on..

Note that setting a modern DRM driver into text-mode is far more
expensive than asking for the current FB. This is even mostly true for
any VESA-compatible card (through SimpleDRM). So I don't see why
anyone should bother using textmode for QR codes (but if you think
that's fun, I won't stop you).

The kernel-core will see one function, drm_render_oops() (or something
similar), which will try to do its best to render on all screens.
Default mode is rendering the kernel-log (through drm_log), but any
other stuff like QR is possible. There's a helper called
drm_draw_pixel() that can draw pixels in _any_ RGB format (maybe even
YUV and stuff), so the renderers don't even have to deal with DRM
formats.

I will show a prototype at LPC14, if anyone is interested.
David
