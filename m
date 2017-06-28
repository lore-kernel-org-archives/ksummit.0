Return-Path: <mcgrof@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA914ACB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 00:26:25 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 643BECE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 00:26:25 +0000 (UTC)
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0E3CC22B60
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 00:26:25 +0000 (UTC)
Received: by mail-yw0-f180.google.com with SMTP id j11so18483425ywa.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 17:26:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFzgumwC-HqDpsj-OEVoQdhcnRo9Fh2Kg7SMPL6+wP4ctg@mail.gmail.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
	<CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
	<CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
	<20170627231011.GA10543@mail.hallyn.com>
	<CAB=NE6Wd9WWCyRzO=TjaTiPNruSwt24G3BD2qTuUue8B3kRX5g@mail.gmail.com>
	<CA+55aFzgumwC-HqDpsj-OEVoQdhcnRo9Fh2Kg7SMPL6+wP4ctg@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Tue, 27 Jun 2017 17:26:03 -0700
Message-ID: <CAB=NE6VS9iA+VN_-QOL1f8WGO-wrcQP5n+W=R6yjwQ=_OO3Sfg@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Cristina Moraru <cristina.moraru09@gmail.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 5:14 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> The config options that don't enable drivers, but enable particular
> behavior - *those* are actually the nastiest ones.

Ah yes... addressing this with the meta thingy would certainly be
nice. It can help close one of the big gaps and flaws of
localmodconfig.

  Luis
