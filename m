Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72A346DFEF
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 15:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784734172; cv=pass; b=EqQrjluTkySlx+tE3xmspw+TNJ+nfzoynYVzGfrntFTrOrKQZD8d/CvTueAmtxiw9x5htZB3nxwsUw+Mgc8f9MYjGdsvAn8OvHvdmhH1qXuI0j7pNl1BZtYl3qNXcYIadMU1IKCisKc8PytGa93vrAFiXDf+CjROF43ialAvDiA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784734172; c=relaxed/simple;
	bh=om92Vg1MT06YPtu4FZa6UsTxYYkEP2jooVYJUsl6Wn0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fzTZkHWwb0KzORPQcGtjylcdZzb8mdkKp8DtA5I5nFXZjc5DupytbxcApV0hscVH/VLV5L+34vnDxzAv2WJY46L8hPDoU7GZyYK89CpBbgeUvrp94QpHJ9qy2Az2iwrHtGSxUXdwcLeid/uw9y/CAS5u4NX7c6DGsLnyWpXZjkQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l92BlLN7; arc=pass smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l92BlLN7"
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-381f03d7be0so1840078a91.1
        for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 08:29:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784734157; cv=none;
        d=google.com; s=arc-20260327;
        b=hORrqYFUVKDpULdhv+VRmNFXTUQ1J++CPGptgMRHrPurSHze9P84T7b+2tS10aNcWL
         tEhDMVrPoj2ApDyBtF5fq77BuC7xX6jJu8/3MqvoM/R1wMVBJGglB/k/h7+idCufQ7sJ
         9ktYOdOubpy8dsONZFdhY4sn4gba9GWwTSgDRPbxPHobT1dnqewRK/31NT8k1Kjo6ALU
         JVD5Pq9lyhKRbRIqIZCQ1SOGciohhCHVPU49ZN5FzGV8yZZwEFlWyteTWmJAPi8BTt2C
         MEJ6o2ckLcDlWt2vtTl6Wr9BWWAjpYQONobSWabc4rYpAjApiqJ4RNV/2Mp1MQM4/PTz
         JI/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2Aoj5jAfbWafkO/PX+megQ9fW1pG8YJPAHZMTkiGVzA=;
        fh=GiKnmoOoZCrVytYN6ariSvpRtV4vjRs45YneobZwo9Y=;
        b=ecxYnlmYQAiGJRIyjQMIvtW8Lm4+CHRacBohAd61mNV7rp4zni/xea/jI9GjIiRWrE
         TV2OiA3of8vzLG4+KW04jB4gRvbE/jWzH4/Aktg3kWhxd+ajFqvdYv5Ql9/CuBmJlOoM
         Ce/LDVz8auNpsYB3Vw8fmpSxz5SLmYvJgwuP//ichz3WGKXAfOMRLgJWxpTsaA2vniJH
         NQmKN1+j95OwBioRxAimJyV7Y1DM9B6lFJcwHJ93Tj0T3CuSiqURQeQ3Uchr+9vGE/j4
         kYOh///AW9LjPCF9Er5T7hKCHtqeDvnPlxgXjyr9liXcuSLPXpZgI+Ztedx8Ow5KRFjw
         EQ8A==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784734157; x=1785338957; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2Aoj5jAfbWafkO/PX+megQ9fW1pG8YJPAHZMTkiGVzA=;
        b=l92BlLN75gougtWVe6FNnkZBSHG/XMPInkPa7scCmAQhbT6Y92WIr4OPkutK0/g+BS
         UKckyP766YKMNYDdTHLe7+mrmolVBp7J5fi3zePXqAjF6ZmwUlP13SPA2BtIPizEzeXb
         jEBRVZeo6VMGUSW9g57uT77PMdTeXVAZkZOUU6YhN/eCKLDqiwSLgPFqatqevJkBu1dB
         KX8qECXDRWpcsami8V4sqLSQ2b8ilRBh+j5dslHbs3H5lnvezT1g105b2HDWHRH3uqU1
         mxKTSdPTsO/097LrpHlO9x2QgYKpYWoOLahaNLZaa1YbyhP5nWqXGqjApZrIMm8B4ukC
         cD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784734157; x=1785338957;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2Aoj5jAfbWafkO/PX+megQ9fW1pG8YJPAHZMTkiGVzA=;
        b=Wvcqq4a1jUtPR5zueDIq4EhnaqF3HluYX69+AKGuVvEVEKLC5fdQSDUubIHOZ+CUIT
         6pQe1Gvo19uevGJe5OaaI2gR2a63WseAdcJhYSKK4yH4hZ5PjRVSbuULkkjGsojvcnQM
         MewpOx0z59+aJdyEYCqaDHZHU/mb5n3fK+NUaFx9shM2KEw060qs/K7bkL9VarkEY5pn
         v11/tclwcDTPQS0o1MSPzpEflXtiUFeye9iqqjUUpluNdKdRd5B7HYP/fG+P7GJ53i7T
         tAc+DCmVcHm6zbj86aYQkHpoB/HLvOIkYV2fyTSpcPDkqU5tzMykRFaPO2XVIwz/GdBJ
         Oa0Q==
X-Forwarded-Encrypted: i=1; AHgh+Rop8rY9LJXGcXY/Cbs0goaS3wtYw23J9b8ISIcJ8bd0aJPLRMUHf/OhxfgCqi9mXjvt1nLWVkfr@lists.linux.dev
X-Gm-Message-State: AOJu0Yzhu4HLfdx2cKyNtqfo8+iFteFHg/yjaGQfITG6eIAn72HeI9p6
	Jj1GbIv9X0MIfIrFqQK5w8uEuhOVXTlcqOUIGjIgJErcPdeqGLWDsrOUZtOq3mdIRNuaB81HwWz
	z2yJTeVe1pz5HQ1MuxyBf3vfWnsqb4sE=
X-Gm-Gg: AR+sD12IYnX0tkUuqkKNfKzGbk2VrJSVbuwLh5hmUjLdexc6KDt5lD7WrEQnl5fRjRc
	D00eiaZG1ndL9jZum2wxy3LzWQ5xpCAacnUBtRdymuRZmZ+QpUm3GBl2ovebkMK0L0MjpcLwMwE
	X8At51rT0JHDCGwfoOIqNGOBE7KgXixhSvY7TfyAdHb1N4Hd1c50k5eZb59yDbOoZykA95GzlTt
	/r2uvp2w0lLaosSuqYJVojAQwCDAaC5Vr5KSdddsXkXOzTqKMTBEuhqDBKpubEmGAvYibbe4qsk
	Nd8LUrexCD4sd1iv23q41gQQo0A3gI3Ux0PcT7TvqRBCH8ql+G1N8Z1nNhe1X7qEg4fFvp9Qalo
	Q+A==
X-Received: by 2002:a17:90a:bf92:b0:38e:ab3f:2c99 with SMTP id
 98e67ed59e1d1-38eab3f38a0mr1422489a91.2.1784734156982; Wed, 22 Jul 2026
 08:29:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20260722041257.1557-1-pengpeng@iscas.ac.cn> <20260722042744.5C1B01F000E9@smtp.kernel.org>
 <dcadf40a07a616de931c484bbe68f4b3f1f83b80.camel@HansenPartnership.com>
 <2026072224-moisture-gonad-409f@gregkh> <2026072205-unsealed-emcee-b243@gregkh>
 <ed0f74db3342ead9a36a0367b8a5cf694b0decf3.camel@HansenPartnership.com>
In-Reply-To: <ed0f74db3342ead9a36a0367b8a5cf694b0decf3.camel@HansenPartnership.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 22 Jul 2026 17:29:03 +0200
X-Gm-Features: AUfX_mwHR2f5q7FTmXaAPXY0LSHFQ4XQZ-onxLdgL2t_w3ErYqbkA-y1dJ2vX8w
Message-ID: <CANiq72m4XJcj+y-VnWYBwoMvJd+P8Xqs2dK3vaGEycFpqwAt_g@mail.gmail.com>
Subject: Re: How to fix problems with the sashiko review model
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, sashiko-reviews@lists.linux.dev, 
	Chris Mason <clm@fb.com>, Roman Gushchin <roman.gushchin@linux.dev>, linux-scsi@vger.kernel.org, 
	ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 22, 2026 at 4:15=E2=80=AFPM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> So you're thinking of this file:
>
> Documentation/process/threat-model.rst
>
> ?  It's already mostly in there, it's just that sashiko doesn't seem to
> be picking it up (otherwise it wouldn't have suggested the problem I
> noted), which is why I was thinking it needed to be a direct prompt ...
> unless the prompt should be to read that file?

Yeah, I had the same question for the Rust subsystem -- I have some
guidelines I want to add, which should be useful for both humans and
LLMs (e.g. not too many tokens), but I am not sure what is the best
practice here.

I think mentioning it in the prompt is needed, but perhaps it is best
to force it into the prompt `#includ`ing it somehow (ideally without
actually copy-pasting it every once in a while).

Either way, it would be nice to be consistent about this across
subsystems both on the kernel and on the prompts repository.

Cheers,
Miguel
