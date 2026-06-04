Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4323E2ABF
	for <ksummit@lists.linux.dev>; Thu,  4 Jun 2026 08:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780562381; cv=none; b=o2gTqI1yiPneQg2CRncL3U1IihPR4uieHQNyxplmq/PE8rU4IU+MWbb9GfUsSqVsvRA4mQSsS9yZfovWTd1tkmRrNqlxwOVPMmY8adfEqy7p0+6GUgoHqGIcathspUB5ib0pqzE3Qwv0NL31mz7qBKlDG9CKVXSOrj3vEiqFbng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780562381; c=relaxed/simple;
	bh=ayV24kuyulAnsg8vtRj9pImFZgZShIyj3RS1YJguujk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mHTfTXYJ+WWkXthlCMLOKgB53SAHEOjtVJrJqr/TwSYah9hlV59zESKPB8bNw2ZWaDISmqu2e2qzzuydt6lZXyxe1nRJLXXr/hYhRsmGMPrNaN8JkYQt+BmUe26gBY3xL1HNdECZlRKnR9myd7Sk4EsQuVRZXtrFgBBvrtmNYvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+evXqpN; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+evXqpN"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 397291F0089D
	for <ksummit@lists.linux.dev>; Thu,  4 Jun 2026 08:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780562378;
	bh=ayV24kuyulAnsg8vtRj9pImFZgZShIyj3RS1YJguujk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=d+evXqpNJtOzaGdxvlVsp/DblSnp/SrulvLe43DCJXNeHlyxMVvpjMbRVDPcOXuvg
	 0mtq2IkTWPltWjiUGln2WO9JDhkQH3SYKM7dpDm5JOu5+N19JXKrrbCBwQ638UFKd0
	 gGyRySr6SdXBl7H8IE5m0fneNiQuwCW8wY5WgZjQ3agQVcBs6PMRksQu7M9luKx9X9
	 yCM4KjjYBsuHp8/7cVrUZ/2Fv18fN4au0Nwr1Eah/ifOhHjlrSlgL5NVdzRo5SfZME
	 WPVldbjgrmd2ayW6D+Vd6dSm1MaPsDVOPlGjObk4eGvBntcofWPeY73fXa8h/71nTc
	 uu6RGptCp+Zvw==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-39677245e15so3472891fa.1
        for <ksummit@lists.linux.dev>; Thu, 04 Jun 2026 01:39:38 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9iTMQADDX2yDk2yEkCU+YR9E7ZaH+aZEmOdxIUk0qGg6ED/rv7aR3jmZMWG6wzBO/aR5QJ/4Qb@lists.linux.dev
X-Gm-Message-State: AOJu0YzXPlWYqCwkKAL1nhxRpDCfCDVbZFmTvfxzCD8bfl/iBYU4saul
	32GeLHd3SVrXRLW1fz6LUi6m+MHLOuv4aBPs/PMdKKAWwmTTWLzjN81gaDeQA78G2P5fOovukET
	4y0PH1E6zDp9bCndyFBVjF06+YlkeAZU=
X-Received: by 2002:a2e:a901:0:b0:38c:63df:82a2 with SMTP id
 38308e7fff4ca-396af52fd55mr25464331fa.27.1780562376902; Thu, 04 Jun 2026
 01:39:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <0fa2fb42-0714-49f7-ba43-22928e1dd488@linaro.org>
 <CAD++jLnM0VjQ-51MaW49y6-JukcOiV8aZeq2uHy-T+f8mPWOxg@mail.gmail.com>
 <45bfff63-3584-4228-929d-38722f1c564b@linaro.org> <6eb7200a-4e5c-4cb3-ad21-85ed9c477338@oss.qualcomm.com>
In-Reply-To: <6eb7200a-4e5c-4cb3-ad21-85ed9c477338@oss.qualcomm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 4 Jun 2026 10:39:24 +0200
X-Gmail-Original-Message-ID: <CAD++jLnPP49A6E3hbyR9R6Y7P=Zy1rOHqCztj3uRtDHUfDQBVg@mail.gmail.com>
X-Gm-Features: AVVi8Cc_AbzCxyzjcMkPq6eAJAfanED5GukVW3A7YebzaqLJ4UVIQhYevnqKkds
Message-ID: <CAD++jLnPP49A6E3hbyR9R6Y7P=Zy1rOHqCztj3uRtDHUfDQBVg@mail.gmail.com>
Subject: Re: DRM/panel: Bringing Linux DRM Display Panel support in the modern age
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, ksummit@lists.linux.dev, 
	Douglas Anderson <dianders@chromium.org>, Maxime Ripard <mripard@kernel.org>, 
	Jason Gerecke <jason.gerecke@wacom.com>, Ping Cheng <pingc@wacom.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 4, 2026 at 12:05=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:

> > I agree, but on the Camera Sensor side they had the same issue and star=
ted
> > speaking directly to some vendors which actually accepted to provide do=
cs
> > and even write sensors drivers themselv es.
>
> Unfortunately, for display panels you need two counter parties, the DDIC
> vendor and the glass / panel vendor, with the panel vendor usually
> having the NDA with the DDIC vendor.

This has been my impression as well, the two-layered structure
of the supply chain DDIC -> panel vendor -> system vendor
complicates things.

> >> Do we have any indication that there is interest from the companies
> >> actually doing display controllers?
> >
> > They mainly speak to panel makers so I don't think they really care.
>
> We have been going through this for all other classes of hardware. What
> would be the selling point that would make panel vendor learn about the
> upstream Linux process?

The unique selling point would be a vendor that deliver professional
equipment and which require full control over the display, i.e. full
gamma correction for example.

A typical such vendor would be Wacom.

These tablets have excellent input device support in Linux thanks
to Wacom working for years with the community, but most if not all
of their devices these days are panels that you draw directly onto,
so they are a panel and an input device.

I don't know how much control they have over the deep
aspects of the display today, I would expect at least factory
calibration but that may be done with separate (non-linux)
tooling. But certainly lifetime color correction is something
I think they already support albeit possibly with custom tools?

Cc to Jason & Ping to check if they have an interest in this.

Yours,
Linus Walleij
