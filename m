Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E716E318ECD
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 16:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786120683; cv=pass; b=BJbOvRF24BQ134UckOYvTOP7bVtqF+G/gqFSyq1WRbVR5/NmSt7H+WxzYGDv0mitFC8DaLL3+o2CkV+2uWX0u0sQyoJlzGvTcOvtSa5pzOw/sjn/VVgq+7uU6u4nEfaMYUpkc+giGQkzidIVCgNrtqCHHfcBkLOYYcPvjursODo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786120683; c=relaxed/simple;
	bh=ao7OsNnKLzUX1zT4s1SoQatWQzZV+FIhyAq0CgLo5KY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jc6ppWwv0NigItOQ5BZRww+2CEaFbrHmeQNIe7feWSm2Q1Yo8ETluJCx45BNDhdsD6DmP+iSYFpj7tD/PSgaSY+Uib8b03A0uHRngRdapuikRpewOslCDP6dOHMXhdaeZ23Ela1o8ff0jFyfGmK/oOBSHH7a0icv/MPQMHn5sAc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=itLC8tmG; arc=pass smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="itLC8tmG"
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2d027b7c8easo6051455ad.3
        for <ksummit@lists.linux.dev>; Fri, 07 Aug 2026 09:38:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786120681; cv=none;
        d=google.com; s=arc-20260327;
        b=mAOkbWCFXr//1qVCUlGVUWAgHgSxLGPzFmxFhqYEgbrdbt1Mijn4Rx8QX3yI16cHtf
         HjeXnUci+ZjbhP1HDyxGaA9tHrumuMSnidtr/QiKn5L8qPu9yPa52RcJqz5pUZ9BYkml
         CrGc8uFzjqqVowkPpCA5Wu/lcbWsdqP32GSmFH1iZyPo05ty7CoU+Lxom49orwt3HPg6
         /s9C87jigpnswx2RPKiJs+A1ukAOltlLUQK4qgFmxD1nylMn26CURYAHCTVXLH0VElfN
         pHXYnWv+LMPcJC2BgbN6Re1qPQI8tpRMKd3hXrtskAaqaUyjEAPTjbHHlFgo6gxxawGG
         qQng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YgmcbjN9E8kJ6h+DfBYLrYzD5lZ8/TZbJ50JovaVIEc=;
        fh=LBhENARN20Y7a0HzjNTxbusNCWaeImEsZj7rRwFGP5w=;
        b=V/rH0tHQCfeI9nztK7DozeeP0lXYH7AhvTxddw/PIQhh2IR8A/ZApJKNqoyV+z1Bqy
         F5GZgmPFNbjpBUI5HKvcfnBBHQwFAz0MImgq9fW/ZqNNh8PMuNv8p7FrIoGXixDlBpWv
         qok4ASePPKuOEIq4z/FOA6NScQy73/L771rAENpjlGtwsrkAzds6YOQ/ogXciXJb+pUk
         KX/QNdbkVJ5Lqj7MQ80dAUQmADj1sy1lrRVbFfQ7PBrJUaCzYl/Jjc7hp3ulZ3LiIZXf
         Y72qY1Jt1eW9tCHxT4YNkp/RRUMPya20mz/lvtB4GxZ8flvZNUcxdHqAeL/I0CagIUNS
         +/Cg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786120681; x=1786725481; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=YgmcbjN9E8kJ6h+DfBYLrYzD5lZ8/TZbJ50JovaVIEc=;
        b=itLC8tmGcC/62YkGIR+ZqO9Eg863WLLGVJ7JGDVbRM3f0vb0PyTWJ1bif/fdwZr1s9
         dmItwjQzeKlwvLhFvUFZ4+FpaNiz5wMBE3Vt2O98knAXfnUpPADTk5g86JqB9ztQcGL4
         MJ8+VAsHycdadHzh6MpLymljcagwKSoVMetU0olMGjsyFI60wN5WBVfyqp07GhOaZ6VI
         MTYA3oGa6vDeo+A70mff6WRU1FMzLX86toM0ddrBGvqIA05SlpQZjAgnQxAFwgt8DBM/
         tjlmWfwQ4ff8QOsYY2oLuPGlGJgi1wsdHNZj5exqfIXE8JO6Ik2ieIu2Z+D7VE7oTpLC
         pIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786120681; x=1786725481;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YgmcbjN9E8kJ6h+DfBYLrYzD5lZ8/TZbJ50JovaVIEc=;
        b=V5yj4ioqBp1uwF+GbUhkaS84eFMw1EAJcZB1rwMZErh7OQevbQEvQ3jAqL/DF0AkSm
         ii+PE2pe3hvCIxBXXlo44K3it9pngN/aTTEoTG147in3Zcyvf9Co6ijXM54dTPtW24fC
         HcAXlit+G+Uwqr/7zqg+l9PCwnto1f1p8Z4YsZg+xsbGnO15WnYBQFFjzNNtjo5g5Q56
         5DjRxUL7WPl6EpoIG8woHOLWsq2lHDHHFUgFrg4zOExcd2g3ebFH4Aeb0aqafXm+9RAA
         P1EX7RN2ZMLp8tc8dEcTCBplzy8VtZIoNrex/On/WyIaE5GQsKpYDngxCEvS6p8+L0Qh
         I/vQ==
X-Forwarded-Encrypted: i=1; AHgh+RrLcNbSmK1yQIlVVyTY9s/dfETO/x8U6Ey61oS4mArFHrtTwXi1tnc3baS8v498lRz1t9JMEbkq@lists.linux.dev
X-Gm-Message-State: AOJu0YyaBvZ0Nih+rGa6Vg6OtjTBd4z3q14lt4TfWllzKBsfRYswr4cq
	RQs+xJgzChBR+1sdPHnIN3nyabziS/xHmDM/4iy6HUF/Cl6zn9N/AQEjguIoKDEpJ+5w1s69+Qj
	SQFDLCIfPAycijyA3vGbPowTAuiV3rSOQmHlqH0I=
X-Gm-Gg: AR+sD11Ohrv6/aDA0idw+CVkeZOEYrOeNWKb1Js/4b0TtxxPBMPDgcPEtavUGyGAFQw
	BZG7zgvePCG5g4+/DJ1FaMkkkfSxO2k/WmlxivyRH7Y0782u6ty2vPdOb5Hzu9/ZWPloKN0XHuX
	3NZ7CqpGYNC/nzwzfTQ6GvTNVKVifnEe6PlzG2ohEDDLwEwF0t0aukYeexavIdsTc560U0qUbRU
	NhKk9rCPSl0sRbtgSo2OaQ2U7d8v4k3azZMVN+A4HWqGncCQ2nlUTikIY07EXqG+m2JHlONsC68
	pPrgPUi7FAnA9I0bnEsMGrcb3jZBdDtwbg+rhRL/tRD+1fW+rpjRSLw5b4kpcxb6Y0VQngkot43
	Vh9+ZPrN+asK7FHTC/b/r8cYEMMXaJWap0brfqrrSNZlmF4gHXCmhP90J3aXj
X-Received: by 2002:a17:903:2f8f:b0:2ca:d803:5c8f with SMTP id
 d9443c01a7336-2d0ca73a210mr185354705ad.1.1786120681012; Fri, 07 Aug 2026
 09:38:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <87y0ekm9nw.fsf@trenco.lwn.net> <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh> <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
 <anThWLhqipEM34kg@stanley.mountain> <anVK-qkUOaIJkt9M@mit.edu>
 <b0dfeb4bc8ca60768fdd6853e7fed7fdd22aa26f.camel@linux.ibm.com> <anXZuBSeZddyT_xm@stanley.mountain>
In-Reply-To: <anXZuBSeZddyT_xm@stanley.mountain>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 7 Aug 2026 18:37:47 +0200
X-Gm-Features: AUfX_myaDpl1Le_bb8Drk-oRp1Rpj1R6ythGD0MZkkRYFyHso8a4JUCwDKvTp3U
Message-ID: <CANiq72m8se6AYJu_qDc1T=nCEank25nAu2ooZSox_1VQg7SOtQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
To: Dan Carpenter <error27@gmail.com>
Cc: Mimi Zohar <zohar@linux.ibm.com>, Theodore Tso <tytso@mit.edu>, 
	Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>, Jonathan Corbet <corbet@lwn.net>, 
	ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 7, 2026 at 3:32=E2=80=AFPM Dan Carpenter <error27@gmail.com> wr=
ote:
>
> Send a patch to stable@vger.kernel.org with an commit message that
> explains why it isn't needed upstream.

Yeah, please see:

  https://docs.kernel.org/process/stable-kernel-rules.html

In particular last paragraph in Option 3.

Cheers,
Miguel
