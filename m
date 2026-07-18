Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C4C63CB
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 01:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784337459; cv=none; b=g7KgYArO6rHPzEeH8qnkn60nTOAdLT+8/8f9rxrx4QG/aKidruEfsgddDYi9q7Z7hbjOYarOaEttjN4zrMESBJCSRLIfxje1nT8h3ZvO/idLsTt7Xj7qDGZRm+S+OgDmoICZXCbJY6LZKbhiE1ognX4VDTVxwKU86RFx96/58Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784337459; c=relaxed/simple;
	bh=0XrNhdOCtJ4AggoCmBxbPl0qLGqCu7pgx9abt8BjUbw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OunvZY+CI6wNqdLAA1xYrYTOGi/NLQxLxho6SgLP/ZL/gjfM9YaZoBcrFqm4SjKNwYcapCJ/LecWhatAtjer6zKrep821/F2LbC1Ay3SR28ZsOjcjalu+J08KZe2UKWQ8Di8WoWugnp2S+u7busaDz72F+ov+YSum4cmHwac4Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=A/Q/9yzF; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="A/Q/9yzF"
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-c169ae1cb26so360444966b.1
        for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 18:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1784337455; x=1784942255; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AN2XU3MZ3adqq6qJiLWK6lAdAdIRbZrBN3fOglyDAHk=;
        b=A/Q/9yzFSRIkEZ0nKY5BzTf/ur+Eh/4kU7xVHO36J/UC7o4Nh1Ev3/Ds4A0aJ5EuLe
         raUyUDAjozAQ0PUxVbaoVdEnfx+HZj63iOH/SKClOOPZi+p0aiDb0NPTtX1BznnZJECv
         ni+JfMd59yCZZNy/9QxvXQkS2AYYYp6B4sx0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784337455; x=1784942255;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=AN2XU3MZ3adqq6qJiLWK6lAdAdIRbZrBN3fOglyDAHk=;
        b=P7peh2WjxVQLP+Ry+jwCv1xpssURXmFfnBXyXNZKC712NK1RQfThpm4Pd9lAtoHLPc
         fhKkf90tKvlDVPf+KfU+mu1F1E44+ascz1hPmr53D8AziSVgUI0ggrL6ef4AXeIXYhHl
         TCvwCR25ISbp0RqqcrXCN98MT7HONt8/WinaeZ3oPyz+iD1A0PP2cra3zMJX14rg4+GJ
         YQKqKHP3Td7/N5MrUpGERXOm8d73W44/sGEkBDZEqBjpcBUB2fZZF16ygULd+3H80ti6
         1vnNUMmmouEvEwxAqow6s2mCna1ounxYGlfjfAN7PUyFYTa3WNmbk8Eg3DdTntlBf/Ey
         q2lw==
X-Forwarded-Encrypted: i=1; AHgh+RrCUqpHTci/9EyMUCWYqvdvKN0NNKajRCQjhbEEBf5A0kONjtPc4FnEPqL5Zcmke0XRROuNDtAZ@lists.linux.dev
X-Gm-Message-State: AOJu0Yxq9jJhw8V3MDTP6r/ot8kpIJdBL3Z7Z2hgGbfbvWbU8cSxIrI4
	2vaj/vn610vIrTdT6ger8gT4YCZz3fqhXvdp0U6wj1YEzQaMX8MBgSv0SLKOkmF67HKz64K9YmI
	rbXXNEgE=
X-Gm-Gg: AfdE7clcvJMQYLPXLtObToQkTVBo1IPgCH0eQFboQiJuJWHhjeOcEgFFFZ91W0Hicgg
	qviEjrfKLL9ve63prM05U4noMY7JSmJqFeOIoKfBQ8Xj2Kp9gortZDkK1/R5g1uRO1vc7DtvpS/
	y+RN2fi1qNmyKf+H5xJJF1rGRDlVILQtQ1vIpLJFqFV3p//fte5Iog7QSkvswMRS+cVOoBphSGX
	6408zsJiBXpAwG51orQOC+TXohHvnFj2Ynn38pr/k7XmHeEzXfWlgS25c5ENvgjg6kusihZsUGe
	v3ne4paN9dGkrnxV3YSbh8jyDo0jfOQAK6vPb2EFLczDbVcXewOxY83TJisJ4oQKaAY2qRUpTS5
	RhK2CKqurUTHlnMHaXlRoq1+MV+z41r3tTv2cLVK4Lw74r1/o22WZY0ZFcgmPobS4Oly8SaI8Yt
	NFK4pduvz3kRbkVcsABCWYqvW5Np6g0kE5F/uWOGPlZSHJ5Kfnjcg=
X-Received: by 2002:a17:907:7286:b0:c15:e3e7:907f with SMTP id a640c23a62f3a-c169205bad4mr445816566b.3.1784337455264;
        Fri, 17 Jul 2026 18:17:35 -0700 (PDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com. [209.85.218.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1724f50b83sm149790866b.45.2026.07.17.18.17.34
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2026 18:17:34 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-c15c42a45adso300806666b.0
        for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 18:17:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoomLW7GWK2DD+mpkOgIwox/e0BrXGXTH3j+4yNvnRrBv5JuVH5idaFXxOhVtnEVaZUI3qL99eC@lists.linux.dev
X-Received: by 2002:a17:907:940d:b0:c16:8eb:d8ac with SMTP id
 a640c23a62f3a-c16b413789cmr216943166b.23.1784337454523; Fri, 17 Jul 2026
 18:17:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <7ia4qzl45h20.fsf@castle.c.googlers.com> <20260715185757.GA191552@nvidia.com>
 <7ia4pl0oymo0.fsf@castle.c.googlers.com> <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
 <20260718010949.GG1889304@killaraus.ideasonboard.com>
In-Reply-To: <20260718010949.GG1889304@killaraus.ideasonboard.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 17 Jul 2026 18:17:18 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
X-Gm-Features: AUfX_mwOM8JhJqmrU-as2V29ax8l7lgIBTjb0h_7x3R73cZnfwiWsuX8Zp-w_Es
Message-ID: <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Roman Gushchin <roman.gushchin@linux.dev>, Jason Gunthorpe <jgg@nvidia.com>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Fri, 17 Jul 2026 at 18:09, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> > And then Y doesn't get done, and maybe X doesn't get done _either_,
> > just because of some unrelated issue was pointed out as part of the
> > discussion.
>
> It has caused and still causes friction, but I wouldn't dismiss it
> entirely. I have seen multiple maintainers, including myself, ask for
> yak shaving in ways that worked reasonably well. The key was to judge
> how much yak shaving is reasonable (and the answer is invariably less
> than a maintainer would wish for), and not making it mandatory.

I agree that it sometimes works, and can even work well - a maintainer
suggestion of "if you did this, that will clean things up" can even be
a welcome thing - particularly when it is relevant to the original
series and not just an incidental tangential thing.

But we've also had maintainers that tried to get unrelated work done
by making it a requirement for the subsystem, and pushed it way too
hard, and it only resulted in problems.

So it *can* work, but as you say, it requires social skills and the
ability to judge whether it's appropriate.

And I think that when there is AI review, people are less likely to
see it as a positive thing when the AI then points out pre-existing
problems.

So if the AI then also gives a solution to the problem, I think people
will appreciate the process more.

                  Linus
