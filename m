Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA43351C28
	for <ksummit@lists.linux.dev>; Mon, 27 Jul 2026 18:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785178200; cv=none; b=Dhvymf5wT/mVN8wefm5JrlR1pKqNoqEDZ6dpIj9z4sxp/vSEZS2Nq87x4CDIGEwa6Wahw/0XCx8jDPB/9Snu9b3KYXN7S3hoKH6U3tn32LyptF7Mu4VgRlpeK8svg9ltTPXlJVkLMRyQd9lsm1GwWwWl3ZiYxBkCTPFcXL9VJpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785178200; c=relaxed/simple;
	bh=vluZ5NJCQaDsmaIYfgYLFucXGDrVtkEZRyAXahPLNb8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dphbjnUwo5NBJA6JQPTsY8dk9acz7KBpj5EuqnsCEhvUX4zeSWautbE+UhdVCeAiXiZuZVjLYpR23K68FsVfpyjLbbTcgAiBpfYW9NR1S+T8ITSpYP80Vzjn9R/XIjUcFO0UZ/E2KhEvDq5XX5e3LE+a2zSDkJcEiDxAa1XPkoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=Ez43VVe2; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="Ez43VVe2"
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-c169ae1cb26so34619766b.1
        for <ksummit@lists.linux.dev>; Mon, 27 Jul 2026 11:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1785178197; x=1785782997; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=g4yN2CPO3KXs8qdY+DRNeQiGt5BwxZr90bJQbSNV/8w=;
        b=Ez43VVe2p+mAkI+xTWhK4RQCLIqypn3OrSIaTaVJb9AD/HDlI62InJnIUHdU3pL+Oh
         mUyNn/8dCxO3hCC0z1+Uvu36tAnUtTMYCB0ULCo0Oku4R1obisXq5GaJ8RVIfvqgfSTI
         mDet5kuYYC4I5i1CS9JohedBCfckFWP4fwnkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785178197; x=1785782997;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=g4yN2CPO3KXs8qdY+DRNeQiGt5BwxZr90bJQbSNV/8w=;
        b=XNlviz8VVzFDHe3SDLhK+jnqj2Cn4eIZ07P0BfdfUDTc3mB5YovCfD2rSEMMg325LB
         FZ24Y/GeW5pj9IHonzgx1ZZS2BaDTPUrhZtLrj6N1t4zB6Lluk3Q7sDjqQcNYLWyGXX6
         p6Zc5fEfiJMgn4okR5FLSd7ilr9MJEmquGlttgy8GMgtVzRKmppniCDAa/qe8qN6NUPj
         ESyQAgzuYpUgMR5T9etR+idZ0wCgTvJq7D7nrz43FB+mH1kC5Ssaqt4Dg4xcDyEgr+8J
         F2BFb2TiypOQmzwNrpZ+MLSBISUgQyQ6cROafcrUboBQlzhkO9BQFGbD/+YfVzkWhktv
         FISQ==
X-Forwarded-Encrypted: i=1; AHgh+RpNdB2c8HY8veZQl1fHfZhFMVWYfkkoZ7Yx6VymWOux8atBX+xnSsLqdtl3Ww11XHDcFYI1ZwkZ@lists.linux.dev
X-Gm-Message-State: AOJu0YwOHjZxzV0QmefHD9DHxv7HReVCvUPxgQ3zr8koFWdzYcU8FtNh
	UARM6rlDBg1MZC5wuPNa0RQqvFdSwA0M1w4wKrm26Kp+T/84C3u95IuvlU8RMbIgPBNWcdCUt7V
	3t+3P7j8=
X-Gm-Gg: AR+sD13KB6A4m1U6PzJiY3/7OdHDgFDbbmv8U2zeDmE5wHim2VX7DswqX2GEmtvVeuM
	NYhR8W4hiWbCawUbsWUcFE7ON7HTeDfkXEU1buw4SPsHxk+NDyDV7uF++tA4DCeDXdS4NcON8q1
	yYDx8BtVoH6nlcHW2cVQqnFo7a+tjpVNCcmAW5e+MGk7NVC2LIqiRSD7UNn7CnyfIr+Wq6+f+KI
	zeFYFg5Cp1YlC2yKolAnFF/+emRkG0nOeuQ3fZaNgH+gCTGhaBL5WwO04S2HSrfzq60fywsWaZt
	u+tY6Ppwbcr5L8uqsuP9Tfn52dMSDBbYp3UJtJw8r//zj4V+5wIeGo+eVVQQ0B9e5h77qcK5jW0
	I/npjtUNOl1EItK6huBqRno093xTXsg+6jUBBM4+b0FZsZ9gJD6H+JNmxkrskc7OGZ30Zm1hXQg
	miAaQITeoGgzqS1q49VcApfU/p0WMlWM4oBUASVoGd22SiP8Q3wo4=
X-Received: by 2002:a17:907:1b09:b0:c15:f55d:f0d8 with SMTP id a640c23a62f3a-c1f677f99a8mr36486966b.4.1785178197039;
        Mon, 27 Jul 2026 11:49:57 -0700 (PDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com. [209.85.218.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32f13c96sm668852866b.62.2026.07.27.11.49.52
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2026 11:49:52 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-c15c42a45adso29538666b.0
        for <ksummit@lists.linux.dev>; Mon, 27 Jul 2026 11:49:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Ro7CxfaXeDSJ38lGGvHLBxh3KNJVpwEKwwEd3cKabzdp4raS5vuFHWivjYOwgTEm4Zwfotpz5WX@lists.linux.dev
X-Received: by 2002:a17:907:1c94:b0:c15:c323:36e5 with SMTP id
 a640c23a62f3a-c1f678bb57bmr26818666b.10.1785178191480; Mon, 27 Jul 2026
 11:49:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <albMUqack9yMq0rF@laps> <241384q7-s5n1-0267-64ps-13r514r4o123@xreary.bet>
 <CAHk-=wgy3T=jxMy0kv0T1+6M0ahVbmWcXOwWOZU5efo=9U_XMg@mail.gmail.com> <amellfuGPXzj_LeL@laps>
In-Reply-To: <amellfuGPXzj_LeL@laps>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 27 Jul 2026 11:49:34 -0700
X-Gmail-Original-Message-ID: <CAHk-=whzMRRtNNZ1zhdVj1-A=4DGOueo_ectuQbN-m0WKuRLSg@mail.gmail.com>
X-Gm-Features: AUfX_mx26dM3Foyo-8L6PhoIWIxRlISDSish0aqxZMH2jIs9namGeDRUGR68h8A
Message-ID: <CAHk-=whzMRRtNNZ1zhdVj1-A=4DGOueo_ectuQbN-m0WKuRLSg@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Scaling our security process
To: Sasha Levin <sashal@kernel.org>
Cc: Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Jul 2026 at 11:38, Sasha Levin <sashal@kernel.org> wrote:
>
> Does this asymmetry in effort between the fix and the reproducer/exploit code
> really exists these days? Point your favorite LLM at a commit [..]

I don't care. A bad policy that encourages bad behavior is stupid.
They've apparently softened it - see Jiri's email - but it's still
just midguided.

I think the fix should be public. Not unnecessary stuff that can be harmful.

We already have too many ambulance-chasing security researchers and
tech journalists, I don't think we should do their work for them. If
they use their LLM tokens for it, so be it, that doesn't change the
basic premise.

               Linus
