Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26A1EEB3
	for <ksummit@lists.linux.dev>; Fri,  4 Sep 2026 20:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788553139; cv=none; b=WN8iQnhw5cgsoPI1ilDlVM6met5NII6U9mZRHiWwDSTXaUgvd0gilB8QnvdZ/hLLATo8MU6U5W0hSaoAM9xcWhypp48sq6osxbQtKSHyv3sG8oTHoiUwlZwkyyN9q4PomLrujFRmqhX5Bo/3C0Ln7j62H4b1wxVNY43e02ME84k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788553139; c=relaxed/simple;
	bh=jjbbvpayKUqnsrU76bl2miLDI5wUyXndYlhXN7mm+1o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MQEySeYoK6KGp+sSTny/XCS1x3ednp9MyTd8e7RChwaFPtiMZiIQurCkjQxXiWgnpxX3tGf0MQuznxXCQmMeUTuk0b5pdQ/q3jQi4g6qqCBml3yR3O1sFll/Vmu+rRc3HRIuxT2tvm1xT6b2wI8mYocP9NfVlQQGGeWfq6SwZRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=RGwgb8az; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="RGwgb8az"
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6a601ba6870so2326998a12.0
        for <ksummit@lists.linux.dev>; Fri, 04 Sep 2026 13:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1788553133; x=1789157933; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cMvbrvt+PfXUgAzCSvciVpc7wTYaMcsi71qPhmIzZpk=;
        b=RGwgb8azd4FqsILABRwM3bEBURZjvvn2zEELnOqXWdODLy73KFng7F/jCcn4KQ0qfr
         9sqwTM9uFhho8Q9lLuXXTZtrClD5cVzUGmyFLnfHwWFBdcqZDmf4DrwR7IGtuXk+UMpO
         EgmtjD1Tr/hIgxnSPrWTwFN4WUQPNvejbNUAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788553133; x=1789157933;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=cMvbrvt+PfXUgAzCSvciVpc7wTYaMcsi71qPhmIzZpk=;
        b=qKgZF8GbiZBiRpcWrgqtF4fxpH+3d8YQ7wmxzUB5HZNgJQRHBe911hq8pmLH06Lh9y
         QI3iTzgcAVwURakZXnZBtBGXVLjV1dpPk/k/rr2F2eCBjvJ+TSHEMPQ8qPz4AEk/IsIP
         tte5oF9BkXaFAJU+8pNZ/IiQ/1WFyp+6UZYugOINXh74FT+YHUlQqxc4h959oXO1LGVm
         5C90+K1wcRwkVHqitAkBLkK89SoXhX5bgWwgouHFlHxuaMcl3/p7i1LI1OG3QS4LNUHP
         AaeBU+uwKkfL6X+IGEO+Xcx8+BBlyZkbUn7GrCcKGYnXn+SBOG/YQyrbj86enTbXneYs
         dICQ==
X-Gm-Message-State: AFuF++kaf1EI/bLLckaHYuI9Iy6fpG2HKlh4hNWWvw9hIqjF5ogNgH+S
	ATgOyFvksDBVAuUWMFUoOad5nHwcXBVKrCUM+fRvwNG2OSYcKmhpyvTsbR/RP15lRNd9B5pAJ1U
	wnbFTo4Q=
X-Gm-Gg: AYBFou2MIWgJelpxmUBpyH9MjJRHdaqvpDUyMZ4U0vgwEjWNMF0f0W0nUmkQKFG/piw
	+Dgau3xGpcGSo3SySd7jeDjGybf+rAZRr1vHjipvmxTmSb45t7qoJqwDWfj3IJY9kKca1v04SHp
	P6edgPLBLM2l95Bwbhdy5NXrzJnJ0RH5vxDgEKkDnW0/dMaQBteKz4wB99Dr3RjWlY5aAJhCxxo
	glXYepnLBnjl4mKuSMvdOTiKMyuvLvwvGPBf4MAiMFTK6JpzUCm9lCd1Ar+Sf1tXVvZucfKFqIq
	LeWOnrgs1UMDJtBopZ9e9oweWkO5DLY65L5AHS6KG0qrcS03TwxCB5R7aX6ebdJ89qxqFKvYa3Y
	z8j6rglv5Glk9Jl/KkSeJjA5ScgnkSvXj+yIHYbb8Cb4UGRnGSiZ5BKPWdEqPbtMok1gZDFtipZ
	1L7LX1P1VUKzWVhGVVFSO/6rAVbldTLujkJ1XKML3wV8bkLTibeVqee/Xt1avyE1cuoeGq0ve/7
	sXc6FbjuFM7laH0CqD9cLRQpcQGNL9Hfra6dUmjS2zb+cCM
X-Received: by 2002:a05:6402:3712:b0:6a6:7ed5:37ba with SMTP id 4fb4d7f45d1cf-6a7e8f99aa5mr3238730a12.22.1788553132984;
        Fri, 04 Sep 2026 13:18:52 -0700 (PDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com. [209.85.218.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a7e68e8c77sm1525149a12.17.2026.09.04.13.18.52
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2026 13:18:52 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-c15e2dab83eso237310766b.1
        for <ksummit@lists.linux.dev>; Fri, 04 Sep 2026 13:18:52 -0700 (PDT)
X-Received: by 2002:a17:906:c151:b0:c26:19de:912c with SMTP id
 a640c23a62f3a-c2619dea162mr245646966b.31.1788553131723; Fri, 04 Sep 2026
 13:18:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <SJ1PR11MB6083385BE00A70389C211177FCB52@SJ1PR11MB6083.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6083385BE00A70389C211177FCB52@SJ1PR11MB6083.namprd11.prod.outlook.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 4 Sep 2026 13:18:35 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgyDUCS-vz4fb1_0J9oMKiOooxsFc036x0RZa-sFcXfMg@mail.gmail.com>
X-Gm-Features: AcwNN1ULzcaG7I34smEcvUL8YmmUHtYXaT0NR4ZGG3xLbzR6GVezibEmKoM6k6E
Message-ID: <CAHk-=wgyDUCS-vz4fb1_0J9oMKiOooxsFc036x0RZa-sFcXfMg@mail.gmail.com>
Subject: Re: How to credit Sashiko with a Reported-by tag?
To: "Luck, Tony" <tony.luck@intel.com>
Cc: "ksummit@lists.linux.dev" <ksummit@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

On Fri, 4 Sept 2026 at 11:27, Luck, Tony <tony.luck@intel.com> wrote:
>
> I see 30 different variations so far. Most popular are:
>
>     211     Reported-by: Sashiko <sashiko-bot@kernel.org>
>     142     Reported-by: sashiko-bot <sashiko-bot@kernel.org>

You missed a few other variations:

    Link: https://sashiko.dev/#/patchset/...

or

    Closes: https://sashiko.dev/#/patchset/...

which are sometimes - but certainly not always - accompanied by
Reported-by lines.

And quite a few times I've seen Sashiko mentioned just in the
free-form prose section.

Honestly, I don't think it matters which pattern ends up being used.
It's not like the bot is going to be upset about the different
spellings, so all that matters is that people see "oh, Sashiko did
something here".

           Linus
