Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65CF53B5FD
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 14:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788877984; cv=pass; b=SSecwEiUAfv1tICPsbL5OJIQTPIfpDLaxYOrTWcNpqYC1CmMfBglsddRzDn8FYM3pOEO6D5ASxUC4meG8hZrmXuM9m0Bugp8Eq7UixNHII1cucH3dExOIYUOa/D3L3hGdewc1Ud/0EnqkPz2IYjpTTgF9CkUcWzGMMVdROPFHHo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788877984; c=relaxed/simple;
	bh=Y4bdR9FXtNbFyR7rGKMwevGiJwg09u/5EoftEPkwuHI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b0OEN9LtBEPZRcGJcnFB559uYeDSSAkpvupxA5pG8lqIl7BP/taAUMI3CH3tTBRXXvz7nAcgnK5zSb8CnDhXjBKRQK6+1qaWhsEX+YGbiNMwckBMvGvrXZaNqcxvx8HgSJv+Ew01lcHeQtGZQOSAJmcn8nuv5jo7hKRifBGjmDc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XaYRZuQL; arc=pass smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XaYRZuQL"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-495590dde14so66924675e9.0
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 07:32:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788877972; cv=none;
        d=google.com; s=arc-20260327;
        b=QGkDHFqNqlsJpiRQNSLE+On553UXfumcbFPFh4Rls72d74GsAg7WO1p80ijdqwqFgg
         bnWdE0YAMSbaDK8fkeRf1e03i2qBku9lakJ+UNpBMOGWUHDVCsujhk1N2T9buC9uyu7y
         hCN0M+qOAN/rzDO6CsFM49qzk2/gAuvYzFumuhjzl87u865H7hsSjBWFtEyIP4z4mun7
         rfoONyujFi1iufsUZgSuGeLftL4OUlFrnV/FpTdTITXwDEkFPppBd4XbJXSE2o4Y+09k
         rL21I8UmBlJGbvnzGJNqzUJLjppOaaaL6RV9HB/fZBOJjqSEWJCd92TV9m43Tx/UIco/
         SsPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y4bdR9FXtNbFyR7rGKMwevGiJwg09u/5EoftEPkwuHI=;
        fh=PSMedKZkcSr8f2IJtBRWReQ1qQGnR7Q3i+zYRKuJROI=;
        b=A4xr4kB3NRtTMwMFeXA4N3EEhQXolBwqOVDHqle5fHUhaCcRgIvB9GgykSIbbNBYwx
         P4yXGErlfTIbZKW8C7T+OnxWVps/QMzAHVgw8CT97shZa2zrHdkESAsqfj2v82haqr68
         eQaf7MjY0cd192zy41NXBJwddwlO/y47xYfi2krU+eI63KSKOMf79DVeFB9apEE1G7wz
         /yBhiiOzF24s8SL3UiKxJwhml2S/dUkhmIh+NFlsAaEwQ1wYSdg1BnPzYrM7LChiIwUx
         88TyBrue3xL/5xyx10We2PfkrePibOKIJV7QMNOHDerecskapzo3RdVtJO1zpgIzKLcL
         CR8Q==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788877972; x=1789482772; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y4bdR9FXtNbFyR7rGKMwevGiJwg09u/5EoftEPkwuHI=;
        b=XaYRZuQLK0LAnm6GiScRz0VESJEk6YKqglAjNP9HBVC5IqOwucdp52E5sHhbq8i5D0
         1NNMYan2E3LqH8ZE1+ti2fvTsXF7/0lyZPAk6tFLbLfiN9odWCipgGSPDks58Dt4XQoX
         aSlYryG6aEukOKjRSCVYOppvnExYLj3HeTx/yKfrQ5KpNV6N6fwYekETbHTjrBeGZn0t
         5V8GvqrD1Lmt00O2M5XCCE1WR9xm+w/YGrPFNrv60wpOjEv3yw7ioPXEZFqI2uQaf2Nd
         2InvqTJ/3NUoftIbWoRhpapi/WJruKGuoiQX63uxyZVZIY4iJDR84lzMXcBpnJx5FiDm
         OpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788877972; x=1789482772;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Y4bdR9FXtNbFyR7rGKMwevGiJwg09u/5EoftEPkwuHI=;
        b=Onp0t8EQwLHqX7g6SI4hoXcljtfOBc45pVawje1Obf9x+/PvXv9wafokmTb5BwcKSu
         4M0+SQEOMKPLtLcrkuT+MdXz/796v6ifZh4n7xdVA0p31yBln+4YEj1mlMU3aMN/A+jJ
         AfWJ6EKjGSLWVfvGpi4Ia8qKaw2zLuR4rwO37P03pnH3CJanEp1NCd0mlYkT9UZrqYGD
         VlzjTHhEibkMe9KtJHGTv3yh9reWVFIjUcZQFure1tsR6LT0wnffoxI0hDLuP/x/4zeS
         LUDW5ekhJT5Lx3MgdXajTeZMlZBSzVONU3wx8UpDSyL5bnI1mhjGShPGiberrpKBRHy6
         9xeg==
X-Forwarded-Encrypted: i=1; AKwUvBz8GL+Qhu2cVVsTqcWUbgQ1hE+H8JG/Qst33DlUQcl3u3YlBfz9CvSP716bCzL11WH7WbT0jwkt@lists.linux.dev
X-Gm-Message-State: AFuF++mfmrWiHtSctxi8TneEmHowdM4I83TbDpn5+FCN1AkxrT0XtcRI
	OGDLBIddMpJADTVBFiZMXU6dHdWqcVJzLujPNUkLWV8y4i1hyepkNrqljKnWNWbQkGblUuI0rRB
	5oHsL8WNBjlFz9my6cXvNtEHMMaYNVvw=
X-Gm-Gg: AYBFou0mV1Z8A7rYocoiaSUindTBaV97dfDhLdpcxQVLq2C9GbbnIIBREx2nvEJqO3z
	tUZOTWje+VY5gAW5etUGcK30K98kNfE7IyrJq/4h3pMyB9Zz4Wb0bui+AtCKP5bsTNAfH7G9hPH
	Po37wlQ5BfhKhqYXK/oDNbM1pLiyJEDeJ1TTgvC4aYwSJaDX1sH15eP0EL187O0Um9TjALMw3UX
	7EP0xerO095N/qoKO+xSXKMB2X9jSyd8OHx058nW1eSvStajK1NF79Rq6iZ6WTxEhrDx9RJxmqd
	0vZd+VvJS9HoSwvJN+dNwOuCU17uT3fOzwl5qSYtszOwSQ==
X-Received: by 2002:a05:600c:860b:b0:49c:ee20:e787 with SMTP id
 5b1f17b1804b1-49cf7fe62e9mr597899775e9.1.1788877971973; Tue, 08 Sep 2026
 07:32:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <ap-AmsGgDNFYLlw8@mit.edu> <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
 <aqARgWGWYG5kZW9g@mit.edu>
In-Reply-To: <aqARgWGWYG5kZW9g@mit.edu>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Tue, 8 Sep 2026 17:32:40 +0300
X-Gm-Features: AcwNN1X-O_b1RExhp1Jdl-_A_eEGlhNvj-_by0P2Ti29s4aZqmciFRXEBU9VGwQ
Message-ID: <CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Theodore Tso <tytso@mit.edu>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Sept 2026 at 16:56, Theodore Tso <tytso@mit.edu> wrote:

> If the certification requires restricting and slowing down what 99% of
> the other Linux developers need to do,

No. It doesn't. At least not in our case.
I've replied also in the other mail to @Miguel Ojeda about it.
The need is mostly about preserving certain properties of the "fences mechanism"
that we would be providing.

What you describe is the "pure-process-based" approach that has been
chosen by many.
There, one tries to prove that something is safe, through evidence
related to the
development processes, because it's needed to be safe.
Or else there is no product.

What we do, instead, is to let the 99.9% of the kernel to be non
safety qualified.
But behind provable barriers. We qualify the barriers as a fraction of
the code base.
The barriers might use some simple kernel functionality.
"Simple" as in "easy to evaluate its safety" e.g. like linked list management.
Mostly, stateles/lib level code.

So the real concern, there, would be that in case the fences get
merged, their qualifiability
should be preserved.

Most of your objections seem to be inferred based on others' previous attempts,
but they do not actually apply to what I've described.

In fact, we truly do want the kernel to stick to its present process,
because we can
rebase easily on it, since we are not tied to qualification of
extensive portions of it.

The idea is that once a core safety framework is present, then whoever
wants to use a
specific driver can choose to go the extra mile and make it compliant
with the framework.

Fully voluntary opt-in.

Or if they do not care about its safety, they can still use it, just
not as a safe component.
So it would be really on a case-by-case basis.

And for those who do not care about safety at all, even the core
framework can be fully compiled off.

--
igor
