Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48519BAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 16:51:33 +0000 (UTC)
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2DADC165
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 16:51:32 +0000 (UTC)
Received: by oihq81 with SMTP id q81so10595964oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 09:51:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1455994.zAMIqEIJx2@vostro.rjw.lan>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<7hlheo9b7m.fsf@deeprootsystems.com>
	<CAKMK7uHH=YdktPHMWoo21YEHP8jB_A-369GpYU5syi-a0idPaw@mail.gmail.com>
	<1455994.zAMIqEIJx2@vostro.rjw.lan>
Date: Tue, 14 Jul 2015 18:51:31 +0200
Message-ID: <CAKMK7uHfcwLe-HWz72LJDhe-HvKTBu65DaJmR3tW3TOze4uyVQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset=UTF-8
Cc: "Brown, Len" <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Kristen Carlson Accardi <kristen@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] System-wide interface to specify
 the level of PM tuning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 14, 2015 at 1:07 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> However, there are places in the kernel where there is a real tradeoff between
> power and performance (or power and capacity in general) and there are places
> that tend to keep conservative settings for fear of exposing latent bugs to
> a wide community of users.
>
> Those might benefit from allowing the users to relax the settings globally
> if they want to.

Well that's the approach I don't like personally. Essentially we
should be the experts on what works and what doesn't. But then kernel
developers chicken out and dump this problem onto users, which happily
enable all kinds of options they hear about. And then when it eats
their data or crashes machines everyone shrugs and says "oh well you
probably have one of the broken machines, don't enable this" and moves
on.

There's certainly the case that some tuning stuff in core kernel has
real downsides to either perf or power, but generally (for device
drivers) I feel like simply not enabling the all the power features is
a cheap way to chicken out of bugs reports and responsibility. I'm
somewhat opionated on this ;-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
