Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBB03D3008
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 15:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784734939; cv=pass; b=TTSAvunbc+WnKTtSCfoyrmg8ozLDBCWzeNtHLxVbgTV5YS4EeGRhdm5evcluDjP1eFS/tKuqWgzFCeV+8tK4IZaYiQu56OdO4wkxj2tgCR5jiEHWco67lGYfTxLFXol7txmN7ZvGzHE2bCgBWz6wEQHeyjtPNIKku4WlZZOY8y8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784734939; c=relaxed/simple;
	bh=W3qDeXLetR0TsLy6YU/1B34IhqeSacUbQ8FGxwJODhs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Beuu7Zwsq8lMPbTQpzAxWdTHenWQm1OGO1GQoOFIbVt5EXbuBSyZoPfwVemZXilBwFc/SuVuwVy0qfrhYKlWpxPoBHqHoLnBPDdLken0RQDwDwGyetuaWEy/4YFPe+3JVN6tb4N5+0l4dzQRGuycgBmtg3qDsnKoA+cysKAyPWc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RmWsHBbS; arc=pass smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RmWsHBbS"
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-ca6d9c91206so661a12.2
        for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 08:42:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784734934; cv=none;
        d=google.com; s=arc-20260327;
        b=PFKtAnoHnzK+mlvWT9rXpFTkmo7oh35s2NARVJrCwkaGfWwofjTM8i99oEVzAyXF2Q
         ZgY59Jaswr8lIP/gf+raQU3FCEz0+iXl0zTup6pMEyVQhwbM0BE2skIp64NfqkJuqXvi
         R/0CL7wQ4jQUlhOAu2f3+Bbik6ln4zwWk8g12KMvkpsae2jA7/LDS/zcT2nS9+MR71Ao
         wdpNAFqD6I1oXcZzJp7M8wJdPvBtPEc6VNNVKRZfbx0TRo5syvOaI7lqEP3xKvn+gImP
         bF28nlhPcYIOWxaarPoDAoHHoHPHa7fpVCxIV2MqJuJoqnrHgEb+3FrcKjL8/WXkn9FQ
         KI2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TTqYZMK9fGKKUMNkPtpKKlAD3TWJJcDsNL9MVJWEDng=;
        fh=LAhGWwsUL8RGFHZpUV60gM7sn8/VnC+0dxogyuOYe+g=;
        b=sT+Q4wigyt50HqS9WZI3mvbHyryc2Jh5RIPPDAx0ZGwRGWOUuVDFo2o0hmB4/RUQDe
         LBOycVoFmyZolIYg1bgJCcU8Vfgt0kXQVZAT8SYx2YnN18tEAWrT0HF0ddp3yAwvRtLz
         OCJm1jPde37VxVqpZjC7FgLjTW/0lq6wRJM2qIxfurg4te48l7FMe3Y2F9jW1m7J3yN9
         nkB+3OB6CZmnp4QeqZLDiQx7c12ZB53NvL+iIO//h5FkTENLDoXWjSK4LOOQOCHfQ2F2
         jktY0gO4Rmu81W7/3rmW4Qfb5CqXURxBkodj9OGm5DguRNbFiF1e+muDEMq9qRClI7mh
         7LXg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784734934; x=1785339734; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=TTqYZMK9fGKKUMNkPtpKKlAD3TWJJcDsNL9MVJWEDng=;
        b=RmWsHBbSclZysffIm8o0qv4PW3uJ1NP0r2q8cQhY5g1B7XOXj1dqd2e718ki9CWg/+
         Sqn836D3MvDnUIwd3kdloJ33hdxShSoFc/w3Cw+grOycH6H1uafTIR4kH3QkN71Jvp8w
         20QZDbOvyZn7JVdA/C06jzhFBn06qojb6h8F6qOrJOVrqVeareg34KieEod6ykY7lIq/
         6qsjZBXDC7pIOz1yrqR0DYIyi1DbDm2C2ASukreIq5NO6xbQTBygzfv8q5zsj/m2aa3e
         uf6bJOu0WV317tOpNi1tl5BYK/nzkoE1q78ufPmoaaPpx+lPts0OdQ37Eh+g38aUGaAO
         7CGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784734934; x=1785339734;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TTqYZMK9fGKKUMNkPtpKKlAD3TWJJcDsNL9MVJWEDng=;
        b=gqP4SrEgIfZV6rqNCSDadT3Rq10BetnW7MQgCfgmiQuzZ6p54k/dmifEXbN04PuAgv
         5cLb3CTxpMr0wQYSEOOPXl7sGgQ5lTzBfjafaHwi4Neoh0rkmpje1fpgHBfmZ+ar4KYE
         mHgVmNnX3Ou+nyFKdLTQdNeSbj7NPvuPpE6hZWhXDelzvexeQ41OzyOA2aSlgDX9wJK3
         okccCNgoD7job7cAPuitnmaVsOA1NMqZcg3/JhI/bbOdaU3eaByfaxt2RCAj/bwMyxl7
         ERunpEE9WHv4nXiW3fYYu2LKgtb82Zhco1PmflbMthDUYP/E6gjJrTJ7iDSw5IMRE0X4
         WKpw==
X-Forwarded-Encrypted: i=1; AHgh+RqpEYltXnj3wOgG/S/28Ye5NYIvAbqR5UDSDhV1QhBO0R5K7RO3FYYiN4TiNHGwKYJzQyeoB4L5@lists.linux.dev
X-Gm-Message-State: AOJu0YyY9pfl1HLDMF3LHbamsyQUkvRR1XmFwXRrPi6Kmn1ZrHD1Gv1U
	NEtr9iJocGIAw0hG88LXMdW+SLs1YOBk7VFoEIvWES7uHNCfUPhN/140tQHhv8CQVnPL04kbUgj
	+hFg25WIsozSWd0vLQgAKX6xa7x+tXZo=
X-Gm-Gg: AR+sD11eZUiu/7keXZ5Ax/AwLI52lBiunkikOkIH2dvutBRJOMFgCDNPJiZyJTxUFu9
	HjeBwpHB4YW4EskPlEKc8AnAbFGQhLFBwzpWg4zAVrlK+z5e/pKr7dou5wl8aMdWhXB/5FLOSgM
	v+QYoWJDYF3rHkLP38TXUTcxBP1fElokvLipZVYCYdXApDSOGP5mB8WBM6rpPdn/vrduv8y11BI
	NU2MORVaEtKzwCDJRz5KTnBd5bF6im1fjLpAD0e9yPTl+z1XhQsi+HHYcUt7a3O2nKMJD1c5hom
	GG/5WPX+AUVTonMvCDknIpmTxxlihSCCQWN7uxfJq/hVWwVYttXap4YuG/U1EXoFkbcdYAS8iGZ
	gDw==
X-Received: by 2002:a17:903:324d:b0:2ca:ecf6:9115 with SMTP id
 d9443c01a7336-2cf802b7fcamr62975835ad.2.1784734933954; Wed, 22 Jul 2026
 08:42:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20260722041257.1557-1-pengpeng@iscas.ac.cn> <20260722042744.5C1B01F000E9@smtp.kernel.org>
 <dcadf40a07a616de931c484bbe68f4b3f1f83b80.camel@HansenPartnership.com>
 <2026072224-moisture-gonad-409f@gregkh> <f2eb5423-b5e8-4b8a-9d28-974dc0eef892@roeck-us.net>
 <8cb7a4a8a13bb003daa1d1413517e104955772d3.camel@HansenPartnership.com>
In-Reply-To: <8cb7a4a8a13bb003daa1d1413517e104955772d3.camel@HansenPartnership.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 22 Jul 2026 17:41:58 +0200
X-Gm-Features: AUfX_mxNJUq41Ky7nzLh3VQVuQID0gIoN9NG7LbJh_SeLBjqg6uwGAOlwPy3vjM
Message-ID: <CANiq72mwwG6M1=d-UW8CU=R+PoNzZii_mxZ_5=k5NehGP87mzQ@mail.gmail.com>
Subject: Re: How to fix problems with the sashiko review model
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Greg KH <gregkh@linuxfoundation.org>, 
	sashiko-reviews@lists.linux.dev, Chris Mason <clm@fb.com>, 
	Roman Gushchin <roman.gushchin@linux.dev>, linux-scsi@vger.kernel.org, 
	ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 22, 2026 at 5:29=E2=80=AFPM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> OK, now I'm confused.  I thought
>
> https://github.com/masoncl/review-prompts
>
> was the source of truth for this, but that project seems to have been
> copied into sashiko rather than pulled in as a module.  If you want to
> improve the review prompts do you now have to submit to both (which is
> getting to be a bit wasteful)?

As far as I understand Mason's is being pulled from Sashiko's, so we
submitted to Mason too.

Maybe they also sync the other way around?

Cheers,
Miguel
