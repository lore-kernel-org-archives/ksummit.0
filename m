Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20D552B1E1
	for <ksummit@lists.linux.dev>; Thu, 15 Oct 2026 13:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792072284; cv=pass; b=WEUnLrNCccK7Q1JqFCasiu+X6uMETAZvo1ZZT5G0feNkOjGQYvreYGh1xWqz/pTI0YISmF8//ilHTAr7Rxz4cFR1k8+RFdMg2vTTKvnv6EXguRR9p+iWsmIajG/g/MsL81hctJoQw12TBVGYkql4ECThuZ5pinSQ8GYKhv9RrRc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792072284; c=relaxed/simple;
	bh=HmUmGGhgCmwu4QqELATIYyKkfGLgVxqbTfeFoXwzD+o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PsK/G6EE/A1PEHiLNbztOmk2VP5FEbjFVnRV/yiDa3cFWDayfF0Klq4cSdw1xrwOVUAjmrAGEMgu0OS91MXc02aPrhiAhv2Nsi48QVkNq+8PmWTGoyGHRvvi0OMlxxPw6gXm0GU5IdQQTf8g21F7iBZGKZgiLvFYW1GE39vcj3U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=oyWpBe5C; arc=pass smtp.client-ip=74.125.82.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="oyWpBe5C"
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-33bb5afa736so656645eec.1
        for <ksummit@lists.linux.dev>; Thu, 15 Oct 2026 06:51:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792072282; cv=none;
        d=google.com; s=arc-20260327;
        b=THTNTc967QqOQ0BENNSL5usB92NNwRcv0RKJSkVrlRjZphzyC1Y4OKeSCZy3xOw2Vk
         wRO1KnAj0Wf/YztV4QS0pHIeEpHgKN4Tjvfpc7+extUzT5HiJcTrqY3cx8Q6jYczBmT8
         ZBU8rQWVTfxGypj8fkQ083USFPImxWtC2lY0EYLcSI+0QL4pCnaT26SLrw50dvOQylzB
         PfL8WSsigZt9z2bF8sm4qw7f9DYU77NFYq2C9ZkopSYqoUlEszcRSkm13fHrRa1Hs+C2
         +bZwQnC6wQjYf+ngE2JmXwL6RWtG83FTRBu3Lce6KQp4PjJyi63Y4OfURL3nO5sLKwm7
         79rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HmUmGGhgCmwu4QqELATIYyKkfGLgVxqbTfeFoXwzD+o=;
        fh=pYPKjLK7LKXKlMMKX9ozVuvuAA4PBBPbs2gwWJeHnuo=;
        b=qekQiuI/0vuA4QcvsvTm/5JNHHZ/6Sxnwk3G6TldCGeYUoRP5WtfQwe1NVjyQyzBpY
         uECjZf4fpeLUizh+yrKQyq5oVI+ZXPAp2F09V0rL4rWy5GihT2W0McfrVENKrjY8Algt
         qJZj/K1OkXGXbwafyLFsMQXBcfYpHSr935rXWmtWL+hITY+H7ODAou7vA6RwJrOKaWfa
         OcC8ddmmsUmSiIG+pYL/Pf3NWXiodbUx9a6t9EUzHXWONJrRaR4pt5eL511yaesDCtwi
         GNVyLfrCFz5Q1LtmnG1W4u3gShqFKpi00GBTH5T2dQCykX70wPCvtsS7ZXKs2EIUY1Z7
         dxkQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792072282; x=1792677082; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=HmUmGGhgCmwu4QqELATIYyKkfGLgVxqbTfeFoXwzD+o=;
        b=oyWpBe5CupXY3B1WjvqhtR4qy1M5xhu6EGVMcEIgdhNufdngRv1P/K1fO5CY9RXHuI
         uW8D8+IbuDQc7m8plCjL5Cmla9JT/mH77+/ywmZ3w8sDWmZlurrIZvdQBjXxwgze8PhZ
         LQoMHLK1vY669wQyzlmQW7NYfdXmCo2M5AUXzA5VVfnfrzv2Q+iF4LVRRsk8FRCr1nhh
         X2zZF1x6EhQ79ziNN7yiuKBWLxe11SWYnhLB4URQAfEjGcQH7E9/NUaHLi/IVISGXiX2
         exUB6A8f1Vpg7dO1949RhjCdq9t5XB+D+3Syh1q1EzLrj2uyPJQitXOHTTGx62wZ3Cfp
         0yaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792072282; x=1792677082;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HmUmGGhgCmwu4QqELATIYyKkfGLgVxqbTfeFoXwzD+o=;
        b=u6jVp3EIRb/6SudcyOB8Y08WZcm5JoBZU5l4YBy2oBq6LZyxb8KQdOyha/HtkcSUVw
         gw8vIcJTNcKvzk1S9+Rnf2/REJ3SblLV0gBSeM/03KnSg0OggNAZ9w5bKBGxAddmztFu
         NkXtk2geZ8kUvqkD9odXDygVqp5Xjhy/S7AmRGWFi3NZ/RWX8fToxAlCD8e3l1X0eTUz
         F2nHyStaRI4jcK9iZPZwp3RWVl+R0Ks3qJ9PP9wmxDM/NiUoiXGIqEiC7KTkwkc0P5Fn
         idUUiJZ3nVVRZARgtz5h9ZWthIOaV+RA5BgxKfHS2LBzC8FLw7Fax4GxpZKHe7nxVATT
         Q+Eg==
X-Forwarded-Encrypted: i=1; AKwUvBy5e7Gi1o/8sggCGdQLXQIgeyI9yd9T/NJBdFw3y6c5FCjk87iAn9xbEK5Bn34dqh0/n+NAEA0v@lists.linux.dev
X-Gm-Message-State: AFq9FYJ5TbYYw8ErrnSQpqYP7Z1RUqRlwfRJc97YC8YAvjx1Ouv4hCWn
	ZaTJi3+UK5FF2uvGhqHIfbVsVFbr0STsN60OGzyN1x4uGfEdGoWRJblpGZhYQK2uoX+1fP3ohz5
	OXXWuWa+KExv1yZeOoQY0LJ4IRixXEK4=
X-Gm-Gg: AYBFou0vrw1lhBTa9riZQhFApY3rO+k3b2hJlio2Gx0V6ueLGUOpWmNuX7Rtg42KXxb
	m+8G8aviJQzwvwl9KzVoTDBcFVnJHCaOMNbThkTx2B5jG+UOiukREDK0Z7oQkV2K2oO4eYQnYH1
	d2JqrVZ1Dh+p0xCW4mwJ5Pn/z/fniBIfYwuz35n2B7CAK6p65NPjCW4qtVFi85d5TJslN2CFmKI
	N5v0/cOI+TlG92+FIUzhxwFMvvNNtxK3602i2vzhcmQRyGM/l6+p9JczTr8s3mku3rS4pM/mLPK
	HEvsPdzMJ7Fa59o9JDGPWVBQquwVAV3URRHqWUe7EXiqpsNKhIYgIz/zh+A/bvud1KIdkzKCjRM
	tj19uAk3htpPrT9Q0K0Qk5PwPysh8kKB6na+iz9Axqz632L9G0xIE8gNk/ErHdtJYCoJYj3f+8r
	9bRdFiGTI728TgwgkBRJF4YIPFv1jh/78WBhjKdz0K1hK4TMNMR94=
X-Received: by 2002:a05:7301:5413:b0:358:c9f3:b055 with SMTP id
 5a478bee46e88-358c9f3b260mr33438025eec.1.1792072281724; Thu, 15 Oct 2026
 06:51:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1791499378.git.sashal@kernel.org> <20261014174838.114990-1-ojeda@kernel.org>
 <as_Cr4FhzyAh-kC4@laps> <CANiq72m6okeCHuR8BCGENTw=wJhfXXZbXZtJq8xtoeVfvfo3TQ@mail.gmail.com>
 <atDYWe9L0tv90Xjk@laps>
In-Reply-To: <atDYWe9L0tv90Xjk@laps>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 15 Oct 2026 15:51:08 +0200
X-Gm-Features: AclHuK933tu3BAWh-cwxecRjdQSXXLVeGjwcSrIBo12nakv0bx34xsgXHhrLXdA
Message-ID: <CANiq72mgS15ZKwd-u1t1xvAaNf3ivpXdUMmVDfmGRyq1OewLvw@mail.gmail.com>
Subject: Re: [PATCH 0/2] agents: add portable agent skills and Fixes attribution
To: Sasha Levin <sashal@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, broonie@kernel.org, corbet@lwn.net, 
	ksummit@lists.linux.dev, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, rdunlap@infradead.org, 
	skhan@linuxfoundation.org, tytso@mit.edu, workflows@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 15, 2026 at 3:42=E2=80=AFPM Sasha Levin <sashal@kernel.org> wro=
te:
>
> Sorry, what I meant to say is that the spec seems to require markdown as =
it's
> preferred format. We can experiment with other options, but then the risk=
 is
> that we'll break some tools.

Ah, got it, thanks! Yeah, at the very least the `SKILL.md` main file
should most likely be all Markdown inside (and of course the
filename).

Now, if we go with `agents/` instead of `Documentation/`, then I would
personally prefer Markdown for the other files in the same folder like
the `guide.rst`, but that is just my bias, and it has a small
disadvantage: if we happen to move things between `Doc/` and
`agents/`, then it is a bit painful to reformat.

In fact, if it is all Markdown, perhaps we don't need that file to be
separate? Actually, is it a separate file in the current patch because
of the markup language difference?

Cheers,
Miguel
