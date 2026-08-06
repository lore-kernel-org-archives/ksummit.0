Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF75B448BA1
	for <ksummit@lists.linux.dev>; Thu,  6 Aug 2026 19:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786044770; cv=none; b=tN4knWmiHtpm0CrbPK7Y4zTt8uuWFlqtLxxzt3uuMoQWYiEpyLJ/4Z0LFdNeVJPwpVLUZ6bE+WXNJUi7plNq2ccr6NcbJCkNkFF6kBf211iK4mfnQCUnrADGMA/TmKQmiy8XkqwCkC5zHMvlHK431EEriMy0W5f1V6+MQS9El0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786044770; c=relaxed/simple;
	bh=wEwUOFkUxb/VuneIxdFepwK0K0RFb7OfEIJl9JowwmU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QRgFkzOTUv+laBip8btBV89ja+ed60oH3zz6usk8mcyHM0nzLLO7CQJm2tESNEPzg3Y7lqxWN4EKOh7ix9P7/OSuqb0dV+211WDzbneRAkVeZ48GKTCMAbwVGFYbLe6ccg3K846sxsKRSWLOJpRXRJllmp4ONbTw2pB4OwNIUlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=oP/K+k1H; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="oP/K+k1H"
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2d004f135b1so31958835ad.3
        for <ksummit@lists.linux.dev>; Thu, 06 Aug 2026 12:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786044768; x=1786649568; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/N0RdaX/KanrinhY18NXyKtFBKIhJmQlR3uAE6HRJWM=;
        b=oP/K+k1HQhSUOZOBvvAwlLetWYLljuA0OHW3EMCfi8czeauCOnlfu/g3hXamu3J5J8
         wNV9mPrDQ8qy0tRwZxcMFjOaWQ4kzO6FvRei3DfRY2jMZN2cDfDGPOPp6/oIZKMde3Gd
         I2qKevbON3v4uQ7/IGbVKgVzry9ryBW2adf96STZ2kF41usFxOfh5qiOnYUsUPXHtWXW
         uJ9zgLjg6AK60+1Z8wghOJrC3RCU/XCby/Ug1RB/oUZdqdqqbNaAHEvUQzZcmTcq40hq
         FBEH2EMf9c873isx+NX33k88ilvT5ms+ngnZ6uK4CO+lxOsqihVB7VWKgYEacrYAJ9k7
         wllQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786044768; x=1786649568;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/N0RdaX/KanrinhY18NXyKtFBKIhJmQlR3uAE6HRJWM=;
        b=sj4UcbozhaQDyZk8WaP6KTd5uo+aCChVasHeiDU6ko3N2XXtIkE9UZjK2v5cqytFnh
         Y1q4t3x/6ja6GPCULXV84uJL8r1+ayJahn0SLVLsvVa56POb+Jht+HvEUlbSi2dYjUfu
         pbBYVznOIkU0PhrwPEIn+7zmftZKEtbz2oGjmm/CMlbqNCchrUw7Tjm/RJDmfzplpYvd
         QsAr6bKg+/HijtkrupLPEtqEByalu4mEHr6t1qZDSFWKq7hGwpY6khCcrjKretxwlfuo
         LaFRRoUZpuzGNNcV8vXP7rJY+9Kvt5d/cuti8b+ErnHDxnPzDbVJ4pg1uEHx778xV+Zy
         6hiQ==
X-Forwarded-Encrypted: i=1; AHgh+RoDdkYjxNnV1lU7GeAF8dsFWroEd7nkhtqbJjk49H/r3CHwmNpPfygRNWoBkKkvMq4KO9uoNavQ@lists.linux.dev
X-Gm-Message-State: AOJu0Yx69PTeMMWwHHViRy3AZv4PYNUd63VQ2NFQZ3GD+Dsc+Ufad6Pd
	ZzNUPyf9HoDFhvNn2NQD7ZaYDjEVOBptPMdp6y3jqNGlyaaun6/iXZOjynxU01fxXIM=
X-Gm-Gg: AR+sD12H56ZvAPC8POIjeGmIuH3Y4KTpAx2fx+YCTWCG8DLUZITYidl1Gh6e4xe5iLd
	jJujlr92hceHm5l22nI7krFSdkcTHe3BGRI4pVKk09pbFQIJuRw6wqt6CHc017/F3XewuYZtEsJ
	KaJYAS6obOg2MJaKQzcZHVIsv2LOkjSnUXn/z5miMIT6Cr5HgmZ0wpyuug9Ce2Db4nL7bMUyMu+
	7DrxQA5U9NUvMOJCC0Hn5sR0GFSoPbhFEcNVjmr3wS5aqJLj43b9r8OpG3sHeiJtmD3Qlc/UG5r
	B6FSc1jvvgxApeOkw4L71gysYoKu9t58GbnMy6g7Y2tlJwW7T3vCMdni9OznHEI8TKUIqkDevHi
	CW15oRSW3obY3koR5hfKvrbMWY7yuCL+GP9m6bBQuiI/xvKb66BdwlsBiXq0VGvzsWaarZ1NZRP
	nBR8QrRIZPYUjwvo6gVXdoSJzt6bjqX4EfkWl2uELX4PDPULiaCnAm2gQ=
X-Received: by 2002:a17:902:e94c:b0:2c8:4c29:afeb with SMTP id d9443c01a7336-2d0ca7b5520mr221916785ad.8.1786044768018;
        Thu, 06 Aug 2026 12:32:48 -0700 (PDT)
Received: from localhost ([172.216.252.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d120c07a7esm1136455ad.56.2026.08.06.12.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 12:32:47 -0700 (PDT)
Date: Thu, 6 Aug 2026 22:32:40 +0300
From: Dan Carpenter <error27@gmail.com>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Greg KH <greg@kroah.com>, Theodore Tso <tytso@mit.edu>,
	Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <anThWLhqipEM34kg@stanley.mountain>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
 <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260806-industrious-whippet-of-jest-a91eaa@meerkat>

On Thu, Aug 06, 2026 at 01:28:25PM -0400, Konstantin Ryabitsev wrote:
> - actually applies
> - isn't against a known LTS branch

No one wants patches against an LTS branch.  That would violate the
stable rules since everything should be upstream first.

Most subsystems take patches against -next and backport the Fixes.
A couple have a tree for the -rc branch and want patches that apply
specifically to that.  These are net, bpf and certain Intel networking
drivers.  These three subsystems want people to put in the subject
which tree they are working against like [PATCH net-next]"

Everyone else pretty much accepts patches against linux-next.  In staging
we tell people to work against staging-next but working against linux-next
is fine.  It's basically the same thing.

regards,
dan carpenter
