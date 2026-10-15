Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C815B51C041
	for <ksummit@lists.linux.dev>; Thu, 15 Oct 2026 14:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792073171; cv=pass; b=JRZMcz8wl/KG53UOFAibu0THGlkTzNhIc8qpJngBI0YswfuqGf2BdguehjO6QRIHagyiudq+uF9nvhwuYeS8uvnwkFu2vDpJA0alD+dtDCRt3aAwYkpXc3ziaAN/bizH9YJr9vdFPyMb83XElz+XJZOoV/x0riXFCw+GKx7bWlI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792073171; c=relaxed/simple;
	bh=Ult2wbEPNmy3iN+NrU+/md6eFZJXKg3OExFz3pyUCCQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BXL+kbPYsVjaL6i/Uw4B9ODYkz+4lxPErI5Su9P6I6OK/Vs/Kof+TrjyW11omegVlC+7Gjozz01tV20fydyxpwzBvchZazegAPQrubtyj5hCLMhYKO3kaXVGEoPcT4QoanPfFHL6xOuv5P/P5LpdeDGdVnVOzCBzbsRJmQRDbmM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aFkLRbdO; arc=pass smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aFkLRbdO"
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-3584f70a5aaso701002eec.1
        for <ksummit@lists.linux.dev>; Thu, 15 Oct 2026 07:06:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792073170; cv=none;
        d=google.com; s=arc-20260327;
        b=kmsoy96KPFZAkY1E/YfMntMnRBW9BtgwSB3GCYOIKy3hOp6xZymfB0JYYjcJehcrK9
         LJ3gbkyuk7x0iWURbbGh3MC9yH6qc8kFw5hQrS2NE1sgujN+iQB9J9LkADko1c4fyCUv
         38yokpZSh7SK8Iija4vtvSEqiLlW/d0C2QuZ4RyxJQOj1ucfc3kgFjLL8rnsZr5N4/8H
         6iKKYvuUnGlSV1Cz7W5ggP78BuA9jKgxeOFtVwzymnhMR9WK9jnA3KkxvZ6pOZVqZoXu
         ppNQzzSc5ADLucRaj1f91tEJNcVX7D9jyxeKprUQ6tEUnPEx1vqplOZaQ6WucSlCwcrM
         iS0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=P2P5MXeugorL2l1zb5x+FuUUdQZHK5/NjbEjCV7Jqx8=;
        fh=Um3rMI551RC01u+blesBO2qku5f6ZTOM12NuuZa9hio=;
        b=khtB3idcYg3JJPGt4QP3GdeP4QFh/tq9CHVLr4eDeMtyQ7vsViqeheBEissQ8wbRiJ
         GG4svzqIV7l0FhK5bvbCOOVCCjXdndXFQm8s7IRSkgW5jbg1ery+wVVLM2YMLSCpLRCI
         J6/dQnkQ79WNPb7HYRb9BA4NhNtI07DAdmnnw8fuSu+w56mwRYm5K8ZvVMBWaGpxNZp9
         5US9R5Qcu8I7/bdv+R+RqECWa4AyP98jDwUlq/i0J7Tl1AjRnz0uJz2xIm5srgIfn+LN
         8smHXZvY8oISvY7uL2r7C3zcY+xqCfE3KM1t6oCMVA9z1vvE5nqe40sbieOI7XFFeV+s
         PDQg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792073170; x=1792677970; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=P2P5MXeugorL2l1zb5x+FuUUdQZHK5/NjbEjCV7Jqx8=;
        b=aFkLRbdOmjbcVWajNkQQdODQpahbCF+kabi1dYrKeh92SIjVha4b+A5M0ly6Dw63c7
         dCvpBWbc4paiy71fRiu07bv/1lkCsLMVG3To5xupQsDAmUqOdf6Nnnn1Z4sJTJhlY1rB
         evP+bcDzPXFsvPFa2ZH03gciJ801OA0oXVRUbLuBky1LcxeYJRCvVHnhNketQvUQrO53
         xyWPr6XrCGTsZRYMqn+gtkhNe8oW9/6fcXMUSHEoKuYYk3OdiqcKktJd188gyptokLuN
         W/APaKzo0tZ4HJIQaQjzOSU0CwwyqabQrIAyrPPbvs8i2AQxu2JZviT0UWd+h0VlVE8J
         5xwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792073170; x=1792677970;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P2P5MXeugorL2l1zb5x+FuUUdQZHK5/NjbEjCV7Jqx8=;
        b=gUxBCf9SizR1yMtdk/QtCcTwA57zUrTN+Dd6xjux3vi6/gNc1hY/dummfAVTPRRIqU
         GJmxROJ5gUECEBEkWzgsN+mgG5FoxxtEK9TBrZ5Tp7n0RBEAVj4RLJ5dxcKoinz+w+kg
         orgfKEzYT4j0UO2G5fhNYRewWT+jnpPkDF5oOGgBedhvad2UO93y3X1aPoJYKL7ETHQ3
         4dtRRk8Gm2TaLHk18f+Jl+7PT6W2sHiqKGsxiR97NSFM5pFlnnEJhlGPF2lKcWlxh6JF
         QxRmWbPycsUrL0IVxSZ7te4yg7G1vl5LYpMormGHj29PIudNWz8EZKTouCH8qJz8tewm
         VMzQ==
X-Forwarded-Encrypted: i=1; AKwUvBxf6mWuaa7WTzoYmt4QYDCItbpUR95TuXZl+3E6+bPbyfrNkZYz1m26Rf3syiIrtClHzNZx2ZKT@lists.linux.dev
X-Gm-Message-State: AFq9FYJXrpEg3PUxX/6hj7fWuoN8Vu4q2rluTt6tynKCHum1Hmcoe6Vr
	3k6dP3ZKIHhwJyICE9z4sL5NkYVvUGD3CrTuM+1IAdF65SDmQ6dPraB8ib4MIxVZYK7423+v0OK
	jB1cjdgHiDK/0Z7AodX5iI18zIl6RgHU=
X-Gm-Gg: AYBFou13RNU2eQjgYYDk4iB0LE3VkbEbaywvkfiJFryzqCQlX2zX3q1PE0xUyXfxMlS
	RrR9fDMk2up7IO3keiG3rlR4/xDfbmEjYkQnpwV2KUU52blTuVvt+Xpj8IYU4cc8td1xL54DZFV
	w25+PpGmg76Vw8aknyWD88QIT5H6EPjwMFCsoSI6y5UQNx+XAGWK0ny3p9qaXExglZmosPaew0+
	CqL39awDEHf2vOlcqMQhAH8kn3AnPVdPnZ86iwzArP9UwOndz3mw64086At8Yy6ZKTP/aiBib7G
	Z1Y4T5IBL0pgHry/tU3yWDVaEdMQNGKWdZd8K2/mDCUkvWXZjL2JD1ywmuWkWuu4GhEiabvkvUn
	0d2lyBASv8+rpFtjnd+kNbdoePuWXJoEgE2YNgBmX+/y9lhPXj7cE4NfgtUKYu2ItwJQkng3l93
	TAcnPa7Tz31HCO+WRUzDATqOGHAi5Ez21tExjZcJjEUiCXvJwB4bo=
X-Received: by 2002:a05:7300:c8c5:b0:351:7e15:9c59 with SMTP id
 5a478bee46e88-3537dc89f58mr38177586eec.0.1792073169449; Thu, 15 Oct 2026
 07:06:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1791499378.git.sashal@kernel.org> <20261014174838.114990-1-ojeda@kernel.org>
 <as_Cr4FhzyAh-kC4@laps> <CANiq72m6okeCHuR8BCGENTw=wJhfXXZbXZtJq8xtoeVfvfo3TQ@mail.gmail.com>
 <atDYWe9L0tv90Xjk@laps> <CANiq72mgS15ZKwd-u1t1xvAaNf3ivpXdUMmVDfmGRyq1OewLvw@mail.gmail.com>
 <87jynjrrqo.fsf@trenco.lwn.net>
In-Reply-To: <87jynjrrqo.fsf@trenco.lwn.net>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 15 Oct 2026 16:05:56 +0200
X-Gm-Features: AclHuK_RBJcp0X4oQoi_VtfEgbv-ao9LCjdidR0Z2ASFU3BEFBe0eg2AJEUSzpQ
Message-ID: <CANiq72=raWNCedXQW9dSDwxQTE0hfs9ecyGChRPnWqO6DUvbOw@mail.gmail.com>
Subject: Re: [PATCH 0/2] agents: add portable agent skills and Fixes attribution
To: Jonathan Corbet <corbet@lwn.net>
Cc: Sasha Levin <sashal@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, broonie@kernel.org, 
	ksummit@lists.linux.dev, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, rdunlap@infradead.org, 
	skhan@linuxfoundation.org, tytso@mit.edu, workflows@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 15, 2026 at 3:57=E2=80=AFPM Jonathan Corbet <corbet@lwn.net> wr=
ote:
>
> For all that we hear about how smart these tools are, are they really
> incapable of dealing with two only slightly different markup formats?  I
> would really hate to bring in a separate format for this stuff...

I think it would work fine in practice. But it means that we have to
split every "skill" into two files (and reformat when we may want to
move details from one to the other), unless I am missing something.

So if we keep the files rendered and so on (possibly in
`Documentation/`), and make use of `.rst` features etc., then I think
it is worth doing it. If not, i.e. if we just use it as a place to
"dump text", then I think Markdown may be simpler.

Cheers,
Miguel
