Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30AFDD54
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 10:35:21 +0000 (UTC)
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C1DB1798
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 10:35:20 +0000 (UTC)
Received: by mail-it0-f65.google.com with SMTP id e14-v6so2317943itf.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 03:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <BY1PR0501MB14623C8F42765E4852FD5A39C51B0@BY1PR0501MB1462.namprd05.prod.outlook.com>
In-Reply-To: <BY1PR0501MB14623C8F42765E4852FD5A39C51B0@BY1PR0501MB1462.namprd05.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Sep 2018 12:35:07 +0200
Message-ID: <CACRpkdb8c51RABEVhn5tibVxiqTDBRXJ5A5wU5nDfubr6p3nMw@mail.gmail.com>
To: tiejunc@vmware.com
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] A Safety-critical Linux system
	architecture
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 12, 2018 at 3:18 AM Tiejun Chen <tiejunc@vmware.com> wrote:

> software contexts need to be certified according to different specifications
> like ARINC 653, Automotive Safety Integrity Level, and so on. So we
> need to explore making Linux itself certified.

There is a bunch of these certifications and specifications. Many of them
include manual review of "all code on the system", which is why several
approaches to this includes stripping down the kernel source to only
the code (after removing all Kconfig buzz and ifdefs) that will compile
and run on the target.

This should of course be possible to integrate into the existing Linux
build system, like "make sources" that would create a reduced
kernel tree that will also compile (russian matroska dolls come to
mind). I think such projects exist in Japan but I haven't heard from
them recently.

My pet peeve is that the review process appears to be something
along the lines that a "certified person/consultant" who has training
in this standard is supposed to review all the code for safety, so
after reviewing IMO we should work on (A) making sure that these
reviews and comments and the exact lines of the kernel and which
version/commit ID of it it pertains to is made public and (B) that the
review persons statement be merged into the kernel git log as
some kind of annotation along the lines of:

Reviewed-for-ISO-26262-by: Linus Walleij <linus.walleij@linaro.org>

This way we can help the safety community by making the safety
critical review process more open and public, and also making these
reviewers put their personal names behind it.

If they also propose patches and follow up on them: even better.

The idea is not (as one could maybe think) that of public shaming
for all the stuff these people invariably are going to miss, but to
create a space where they can learn about the kernel and the
weaknesses pertaining to safety critical deployments and also
spread this knowledge to kernel maintainers instead of keeping
it all in their private safety engineering bubble.

Yours,
Linus Walleij
