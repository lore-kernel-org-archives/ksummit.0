Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB44542EE7
	for <ksummit@lists.linux.dev>; Thu, 15 Oct 2026 16:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792080940; cv=pass; b=Q3tYiVOHmBjwjQka49zLByfXsQBnRjXhyPtEzONcCPOgsnz+HzHjgZHHoFjhhF0H3/98TOIQsbluISxGXk4Es49urvgV02mqpHdda+ZG99NGSVU71sIfS4KUZQwDRZ5eJOnxIw6oZa6X8OunTa45CSR5S7bXbJpm4+uGSUzr/KE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792080940; c=relaxed/simple;
	bh=G5AcZOU+pdoePF3JVJGwstAOUQkYC3WUg5uKVwxeFqQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I0bPOtdl+1TiBtdCkDR1LY/iSv6ebuTWs1QJbYgydiwIHMoaypbK7qNHBPZPsIaEErYHaTpwvYelZMYHksEJ/Zr8fcjaXI0yoHF2yohNRZGIAXseeOhPefupW8YIEIbtz937tnRUvL14vKaskp8fKFnFBryyniySEtzIt0dJWR8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rUy63LTO; arc=pass smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rUy63LTO"
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-35179d0747fso458818eec.1
        for <ksummit@lists.linux.dev>; Thu, 15 Oct 2026 09:15:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792080929; cv=none;
        d=google.com; s=arc-20260327;
        b=ULLkiR7I/HWeURBAwODDek3npE1CYE89WH9iITzDsnY9h+Z5zcAF2UsUNdGj9tzccI
         QQOCjy35+9PCp0YNuI2s6aaLaoDHqmjc7EwnANAeSIKRfvE07Tjk1wRnY1PgXmf2XzVw
         WXaKQDDv3A7nSE6IXcAY005kQvJAYdqLcD0gSTKBUmUZtDnfJWtOnqg68LOJ4hvh7se2
         bn1exPQyBEEGYFka+z4f1A9KjrVjFAFAYmBcw8DNR9Xw1/HAbPGsdv1b/LQOklMt2oFs
         VMKCOsP/1VuxoN6SHdKA8iQF41ZUi1eOuflpUjIfZa+xUxYntd77wc/FsM35X/XzDB8a
         AZJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=G5AcZOU+pdoePF3JVJGwstAOUQkYC3WUg5uKVwxeFqQ=;
        fh=z+n1ltVQpYpNpsM5reQuCilcANSODjarPyL3QDn4QE8=;
        b=NGLry7zSQ5xiQpcx+5i6OXvFEsWE0g+ZrsaeYdZAf2FuIHZFLgVPU8YZl8VM4whR5A
         Xm3TwyE8FRt7HhnseOnlx5omwryUV7u+RTKsmQZK6jNjDa0CSgOZc5fPhR5SUcN7aG6g
         DtjGYk1YDV2BWdUKd4Vl4UPojKCBQMRhLoxd8YRDVzNd43aKBiQSS3dLwroqJoTFLSIZ
         d9MlaLHiOMtd/cdlcvwIGdetstrKkBN0iJOt7eYJ/1NCD47wy3rgJLquHyVUT8OVhasZ
         02MPWCcR/FMsBTS80LNN08a3GgujW33auvaWRWwyX4H6foJ1L+h340CFW9KJGuEmB8jz
         wEaA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792080929; x=1792685729; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=G5AcZOU+pdoePF3JVJGwstAOUQkYC3WUg5uKVwxeFqQ=;
        b=rUy63LTOxUbHXj6cqYC8Bv2rD/K2jhCr0hg6uRDwn2qGnIkZ4fkHuCqc3WCGYSGQ9w
         YwiWo3W9iLoq6VOOAFVhoG5Qgq5AxaCnzBTdff4cjuewTS54el1SXhEV1S05QOrVmSI9
         hMfTcKrQJpqGyDVRseZxjjceLXRFkf9+Ttf9/WXADAqIlOCZH9gXxMEEjGV2Icd/cmJb
         bSKcx2Yads7PK+0azZdp5vIW9BI3tUXaWYGui51wz7srEuB5h7dATeqTqLXFwQeyP7CD
         oK8tiqEveOnAA8wgUhdozKtNlAW2vm5mcs/xjlF8IgkL5iupDdd6hmTKD5ttG1S0XhAM
         MYxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792080929; x=1792685729;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G5AcZOU+pdoePF3JVJGwstAOUQkYC3WUg5uKVwxeFqQ=;
        b=d1R8+lztjdEhY5Qv4ljHSPuqt7kqJ/TfJhfaRUfRr1Q2JIlN1LXkTY9LOft5GIH3Eb
         Qoi9SS2jQrLVeU/JfvD7Beqfs5lAeslvE4Zf+5OL9kI3dz291Ov2Q/Gbq+6TFb/Jhuch
         ISSyA8BFGK+kUxSjPxIC1U13QRXulCizVjiLF1RkbNc8vfpDCPBjl1yK3FGGp7mjxoee
         d3c+xpZBtXkP5JHw4fyAciVIGQMLOVsqe9cZrBjakVm0+OGoTa3bYcjTAXFgWkWQgu8l
         IrfWPYOsyaaIfjK0aZ883rmR1sW6zDVL3s2z1Mz1eNRzMMm89hG/RqyykeWYXbQIjAGn
         GQqA==
X-Forwarded-Encrypted: i=1; AKwUvBwfHVECPyXn1ZC81CEUqpxMofi7clCRkhUXhktfssQhw/CWFI9zlCn/YneHON4Yq4F5MQp7xyfj@lists.linux.dev
X-Gm-Message-State: AFq9FYLbEsK2/uVBHl6VVkoNNKGsZGP6BPp44nYkD5wSYnVlMkg67Z3R
	uOq0pPj377GOtLqnQ6vtHcE3W4bOwvBoObkC780f4fescbpEV2/p+df/lXxtG6Eer7nXLdzZZ46
	YQ2/jZflXvW+cQO5kKH/oigQJ3jdfynk=
X-Gm-Gg: AYBFou0u9zfbk6EQepeulpJ0D/2pnUUJhOZUaLjoVrUYar89xBZMXYks0ayt9qEejNV
	fzcsJLqaGMmc9XJHYmTvrjZkzQ7hQpdpNweIvAH2mvvF9ZtFG4VY8W8WwUFVF6AW0UlKLt13Vel
	g802eu4ER+dnTLkKqsgellouCCFB7DoHxeGw/Uwi1VFs0WoJ7vBtl/76uBCoY7yfC70YbGW5zuL
	01UPJw8pWs9t4+Kmrmm3BmyDsvX897ajzUIYZ9mv6pww0aoLNEmil8SSJtrR+1XHj37k5Ge2qlu
	3PKdNr2sJdgIf00zs+oKTZaMNehrAwfboke05i61Z159bg7K9oSbjf1VWBgtiy78O80+GCZzdfa
	l6thsJxmK+Lb5705ZX4oRrvUrnF4DddPDBanbSghbV4i/nn23CHqCVOP8Fdz3eAnnMycmR5jXIk
	T6EotSGTMIefpR92TApkunL/J6ixG7p6AP0Bq/zhD4dWo9TwPMHxByKElPI25HbTY=
X-Received: by 2002:a05:693c:66d0:10b0:35c:492b:e310 with SMTP id
 5a478bee46e88-35c492be9f8mr17514341eec.0.1792080928498; Thu, 15 Oct 2026
 09:15:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1791499378.git.sashal@kernel.org> <20261014174838.114990-1-ojeda@kernel.org>
 <as_Cr4FhzyAh-kC4@laps> <CANiq72m6okeCHuR8BCGENTw=wJhfXXZbXZtJq8xtoeVfvfo3TQ@mail.gmail.com>
 <atDYWe9L0tv90Xjk@laps> <CANiq72mgS15ZKwd-u1t1xvAaNf3ivpXdUMmVDfmGRyq1OewLvw@mail.gmail.com>
 <87jynjrrqo.fsf@trenco.lwn.net> <CANiq72=raWNCedXQW9dSDwxQTE0hfs9ecyGChRPnWqO6DUvbOw@mail.gmail.com>
 <atDlfUEr-d_sRP7c@mit.edu>
In-Reply-To: <atDlfUEr-d_sRP7c@mit.edu>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 15 Oct 2026 18:15:15 +0200
X-Gm-Features: AclHuK-PjnHmcyinHcDPK4Z6dnO9W7SGIPggSgvmNWFmm386jeOM2Bdrq8WVyuA
Message-ID: <CANiq72m+j4j86sCnKUzjjq8udcW+hgdrnTa28WUWfyFu9qHXDw@mail.gmail.com>
Subject: Re: [PATCH 0/2] agents: add portable agent skills and Fixes attribution
To: Theodore Tso <tytso@mit.edu>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	broonie@kernel.org, ksummit@lists.linux.dev, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, rdunlap@infradead.org, 
	skhan@linuxfoundation.org, workflows@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 15, 2026 at 4:43=E2=80=AFPM Theodore Tso <tytso@mit.edu> wrote:
>
> I'm a bit confused why people are assuming that we would need to have
> copies of the same or similar content in Documentation/ and agents/.
> For agents are are *doing* somethiing --- for example, determining the
> correct commit for a Fixes: tag is not something I'd think would be relev=
ant for Documentations.

I am confused -- I am not saying we will have copies between
`Documentation/` and `agents/` of similar content.

I am saying that `SKILL.md` is necessarily Markdown (please see
Sasha's patch), but most of the actual text is in the `.rst` instead,
and that such a split is more complicated than a single Markdown file,
especially if we don't plan to do any processing on it (as you say, it
is mostly text).

(I do think certain skills may want to point the agent to some
`Documentation/` by file path; that is fine.)

Cheers,
Miguel
