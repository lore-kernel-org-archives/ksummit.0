Return-Path: <mcgrof@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4EAF5ACB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 00:09:24 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CEBD51E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 00:09:23 +0000 (UTC)
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 765972170D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 00:09:23 +0000 (UTC)
Received: by mail-yw0-f173.google.com with SMTP id 63so18481824ywr.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 17:09:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170627231011.GA10543@mail.hallyn.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
	<CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
	<CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
	<20170627231011.GA10543@mail.hallyn.com>
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Tue, 27 Jun 2017 17:09:02 -0700
Message-ID: <CAB=NE6Wd9WWCyRzO=TjaTiPNruSwt24G3BD2qTuUue8B3kRX5g@mail.gmail.com>
To: "Serge E. Hallyn" <serge@hallyn.com>,
	Cristina Moraru <cristina.moraru09@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 4:10 PM, Serge E. Hallyn <serge@hallyn.com> wrote:
> Quoting Linus Torvalds (torvalds@linux-foundation.org):
>> For example, how about a script that takes a list of PCI devices, and
>
> Or uses lspci and lsusb output?

Cristina looked at evaluating precisely *this* first as part of her
GSoC project, details on her post I linked.

Each subsystem can use different buses, so each bus might have a
different way to map to a driver. Then the driver can also change
names over kernels.

The *easier* thing to do for now was to just map a loaded module to a
kconfig symbol, and she proposed fairly simple patches to do this.
That'd allow one-to-one mapping of module from udevadm output to a
kconfig symbol. It'd try to de-hackify streamline_config.pl.

Sure built-in is still a problem, but the current logic in
streamline_config.pl to keep that enabled seems sensible.

Part of another problem is the symbol renames that happen over
kernels, but if a map existed for this, then that should enable a
forward conversion. The GSoC effort was actually partly with a focus
on backporting, so this map would ultimately be important.

 Luis
