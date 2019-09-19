Return-Path: <SRS0=kjsK=XO=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A74DC4CEC4
	for <ksummit-discuss@archiver.kernel.org>; Thu, 19 Sep 2019 01:48:06 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2B8E9218AE
	for <ksummit-discuss@archiver.kernel.org>; Thu, 19 Sep 2019 01:48:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l18z6PSk"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2B8E9218AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 90C53D9B;
	Thu, 19 Sep 2019 01:48:05 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA827C3F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 01:48:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0AA5A81A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 01:48:02 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id a1so3907006ioc.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Sep 2019 18:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:reply-to:from:date:message-id
	:subject:to:cc;
	bh=j7UplxfvlaNssCr6oCt4Jqh0D1Ecm9XiJyM1NfVqkHk=;
	b=l18z6PSkHLvLsBCEMcUB7eO/ydKKYvS6qeiwmcO36wdJs7BYWKO5JLOPssUfvQ2uur
	+vL/+UNFUOWMxcsPFa0WyY+2q1Bg+Vd1TNzdVPUda1V4BVS+AxFcqLy7/BCuvlCjKlBh
	VOzwfyFfUt7rJt39fI4ig1CH6AeVTNEDocXdpDORnng5w4cJcWp90EE9RbzeD6uzH5JV
	TeJ3o6iM+/l922fURD4LY+N0Dfe5qKFqiGKJ/KcjePh+FUmU2sQ0x0hs6MVg4WO8E8lw
	9101IFelQ5nO01F5nkCcaunEnXXdr9RAtKXrMbbPX3BLlUdQHRrkuPeptJqBv8K088mi
	tkVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
	:from:date:message-id:subject:to:cc;
	bh=j7UplxfvlaNssCr6oCt4Jqh0D1Ecm9XiJyM1NfVqkHk=;
	b=PW7JOtIFeK+/BVPE4QYKD50NuYICd7VBsZa3lHAq4LkG/wniRHHOvAIeA3lIEBFtJH
	uRDUuBkSJc3E4nqDlue6DccCpof+sK4OHcMfAfeF/g5IS2mJLqu4rxkE9PZpJ5drGjTc
	llqeG1/11/wbmx9zndwOl5sBQ9QgXyG2P7SWK0UlclbvUHaVIkHhFFWyRKPdpFlvP3qP
	Ph3LFGV/hkcYYvpRLG+kNuHxfzC/+M7IV64tXbPHwZWfnAV20wALilsKcYB+Npv6s6eH
	GjIIr27tnpH/7n+Yc+Sjn7qhON1qP3hQe8Vz1DxdoieLEP2Nrb6DZFo+NcvahYY0AFgG
	RalA==
X-Gm-Message-State: APjAAAW1ROBQc0hkuxGZJEqyT+NBDblsidpd34owifGW5ATlp9N2xqPg
	kvpChQq+0uR0hvv0ZgSrjzqKyxzSV3311c3zXhI=
X-Google-Smtp-Source: APXvYqwetCc8lEv/f6F4xhvR02QljMkMN9Uc/5z14jUzfhj2TZQOzq+1VbtZ3ZxR4rW+yN9WLOPkJd0/qD5R9+95Y2c=
X-Received: by 2002:a6b:640a:: with SMTP id t10mr7985846iog.37.1568857682126; 
	Wed, 18 Sep 2019 18:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<CABhMZUUzyMXyKthjt31qU-p-2=6s2Cvw5jb=bw3=T76kzfUyKA@mail.gmail.com>
	<CAL_JsqJTpA68gAkT2k5ziHF8RbVsmKcf2ZLTGSexPkrwL6Vkzg@mail.gmail.com>
In-Reply-To: <CAL_JsqJTpA68gAkT2k5ziHF8RbVsmKcf2ZLTGSexPkrwL6Vkzg@mail.gmail.com>
From: Bjorn Helgaas <bjorn.helgaas@gmail.com>
Date: Wed, 18 Sep 2019 20:47:50 -0500
Message-ID: <CABhMZUXq5Qy4seNYfc_0CDz=jqhB0kUgL2+dNxWq84=VcpPQOA@mail.gmail.com>
To: Rob Herring <robherring2@gmail.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Reply-To: bjorn@helgaas.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Fri, Sep 6, 2019 at 5:21 AM Rob Herring <robherring2@gmail.com> wrote:
> You might like my set of bailing wire using patchwork and mutt. It
> works offline if you download the patchwork state beforehand and
> queues up state changes. The basic flow is:
>
> Load the "New" list from PW (my PW instance is pre-filtered on paths,
> so I don't have to sort thru everything on the DT list)
> Check for multiple versions of patches, auto email on failure to add
> my review tag, check for already applied (to next).
> Iterate thru the patch list:
>   - Run checkpatch.pl
>   - open mutt for each patch. Mutt has the full DT list, so I can look
> at the rest of the series if I want.
>   - After exiting mutt, prompt for PW state change
>   - Possibly apply it
>   - Generate replies for applied, reviewed-by or acked-by
>
> Happy to demo it at LPC if you are interested. You can find it
> here[1]. The main script is pw-review.

Thanks for the demo at LPC!  I'm trying to understand how all the
pieces fit together.

How do you download the patchwork state beforehand for working
offline?  For me, actually working offline is nice but rare; my
complaint is that I have to wait for every little interaction
(delegating, superseding, changing state, etc) to talk to the server.
The waits aren't long, but they make the whole process feel sluggish.

You mentioned some CI bits (to run checkpatch, change patchwork state,
etc).  Is there a way to look at that?  I'm guessing you also have
some mutt keybindings or macros?

Is http://patchwork.ozlabs.org/project/devicetree-bindings/list/ the
patchwork you're using?  ISTR one that showed the CI results.

I guess you keep your mbox trimmed somehow?  Starting mutt on my
linux-pci folder takes 5-10 seconds.  But for this purpose there
wouldn't really be a need to have the *entire* history, I guess.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
