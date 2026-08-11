Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8B8394496
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 03:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786418993; cv=pass; b=J6+5B6ZNlQtpEk8r4MXz+HbfSgc4QAoBYOYS4S4JPm2OFyy1MWT/IRKc7k6RqGKpdNluX43x40+3f1UWulauYDFbvIZmfDQ6UwHTLEGvyi51CQ4IeGGCIp8w4Hht3Wj18s77BNaF+m/5/NYFBYa9/6HI+Y/VX0LI+cJz1Mnr8OU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786418993; c=relaxed/simple;
	bh=HwmzaSVHZpFrkV99PNYhXyhe6CB4fBCq46yGOrkawXA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Vmnaj5icXOqaYBnwA2qQO6Xiwz2FfNMkGt9tl8JBy5Qw5+SSZvC7bA23Yoyq59BVJg2nfLZBvXbfHKxVE5b0zFEy+mFRlOx4WaMkLwHAeelcwxccf4HooXLOyKS2SEr9IeCUQuWwWwgcErhqRQcQnpvsvgk2Ul4hHHX5R9tGNp0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gVWGey0I; arc=pass smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gVWGey0I"
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-66771ded50aso3633087d50.1
        for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 20:29:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786418991; cv=none;
        d=google.com; s=arc-20260327;
        b=kliaGwEpgrERWZloCvMGlH+GmaOYta8io/Uo3vir6CcMp0bqIngFfiFOAWPT7+DOgL
         FknC8ktCj/ozh5AIyVe4Jiun7PRRu+VON/5s7mISYeQsy7H54g95/znEc8hayhGFG0Hz
         I8fjkE903OljrFSXdlNIKnbu4hepsa+2HQ9NfnMw3BOGTBCWHdbNgug3A+guiQlCJ522
         ZIzKi8ghkfN9JRI88ooYNUETT4Qf3XQRKlPq7vKty1+wzRV9L3OB/oQehwtQr7EK7c92
         inRnzYZm0TocXMknhvqqQRDN1rrdyRT+0rqfrtq6CXmHpOY77die5rJh8YNG7G7uEoaQ
         YlIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x2H4Z4qUaT9gG3eXqk48FDL7nUnOMDIV+GrpCgYNl7M=;
        fh=P5cAaEvmzYSbARSqJkeiKHpylFtKKrb2vSWG/9G3dXw=;
        b=M2HGOKJ1d6uOrVtgfIeGVYnTrDfTsP4WoEaqf1ldjyrKZfrms2taN7nY/QiEpBtvnH
         MKpAmiBvHISqWUTVAdDWBL72fL0Zr2AXJioabKWBdUgMOs0DlSRmWEGNHFpdvLcds2tM
         Itn6w5IbiAgHdUouBxme0mIuMLGuSxPSsn19MiAIq1cJCfxgzmpS39vRMHIKE7PmlJ5X
         USIWQV+YmxLiN8f8BpWVa+7Pktz/s+SQnLZtJZ8e1SBA7zh/qsw4InqAztwSxwQtGWMq
         XV/mtD4wjX2/Z/VsbAPEr/CrDVRcmAIumafmcJHhp2cQnGHuNXKgNAsCA0UK//TUp8NQ
         c/UQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786418991; x=1787023791; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=x2H4Z4qUaT9gG3eXqk48FDL7nUnOMDIV+GrpCgYNl7M=;
        b=gVWGey0IOEOesTuoI7G1j8P7iNpUUr4TGdBvhYEnNcP8QUoQGcjn55AJjiEQL8z7Gy
         W3e62SEAZBoR7rgP5AgHgEc4Isua2GJgXNnsQcGm159TkXw3CcGigGs80z+RvBagcTjr
         R8fxEKe35q/Whbd7FdXgfO63T49OnlTFCXSojdyJvvd+AwZBZA1xsWhxlnMLvXdN/V/n
         Ie5hJLqTOM4L1yf60o/1QQbq0MHfwy8lolIwuRMZPgKNo+rSw7utkSXe7K25zlXYYGbN
         8bQQjCi1wtVlq6oTL1y5dqdPdnKbAlXcW9NZ+x3nPPZo8g142MYMhIWoNwZfBQCRUF3p
         Cq5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786418991; x=1787023791;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=x2H4Z4qUaT9gG3eXqk48FDL7nUnOMDIV+GrpCgYNl7M=;
        b=R4i6OV2v5eUsRTJWDsPPFDs58psRlk17N/WDJyGCZEwPEVe6RMfYy5+VF9gWXSuoA2
         I1fZM1NeGXPruziGO4SDyFOffvYw+RqWVd/M6LlzB96A01lLMgcx0H5U2SG/KorLhV2Y
         aOHXWSAvIT5m4Dkvqe7or29Pi6HBl+EfsyXOzxc3fXZODca++SByOd/LsBOeSozMHcS1
         TKSlR9FjKR6i7YLbE6Q8FlgtmMr51HRjzFHWwJZibLRrHWbHeuxFuw+yrOvMcOBSHgTU
         YI7liERuba4VEDbHgFevvrdsA9W+BnNeABTH3y/cmdsczK8yr8eXK5sFC7RhYRNIs9dH
         +xqA==
X-Forwarded-Encrypted: i=1; AHgh+Rp+j6m4lF5PnbwGS95uoxMVAA6BJ+2fgzMpcPoYm3rUiN7ZvuoF++5oqnf+C+3nspYj0+98wDkZ@lists.linux.dev
X-Gm-Message-State: AOJu0YzKkeSMVbyM2xC+5I8UFDaL0NvohQE9xf0dfTzZdWgnQDOZNZA/
	iBmk+DZrHQ8lJ7sClTDHrFTKRnI3i1c0LRAw/w9HXUASATC75L1E00l/AIk0Kel30DXzKieXK1p
	JeOrJbBj7YQNW94EGH3XdcuBNB8cWzxA=
X-Gm-Gg: AR+sD10EUsvmpZko8p133I3ihRNlf52+28Q5R5OZwn6loeUqUGy1D4qcsocTa35bRJP
	n0W1owmzeLBuzt/UFHb/mPtUq0D6CMElkVQUkrJgh17UCNW00hXCZeio5DKeNGcw0cLsxwX95yC
	fcUSLHXYtfjKqENSviF5HrwsKQY55MRW1Wjz2OGWvEmRdLTcK+0W2Pv+e1YsdPeJ5Q1lQRmcWR6
	ERn0Bv9eytAqtto8yooZfC8LBZUMQgr1uAx9ZiBh9Fvwj2jdLQrKaLY0OOEEZWAJWM7EI5T+EkS
	rzbT1x2e7H533LJgeQWS8i9UQrtM1Z+bt04ffCX8Eu174KGzzO8vP4kYSqclabQJz50h1WOhKgN
	bAeivDk8uCYJmjRVX2Iwge1fQD3SuzvqjROKD0RN4Rw==
X-Received: by 2002:a53:b88e:0:b0:668:3ed9:15da with SMTP id
 956f58d0204a3-66b22e899a2mr48625d50.33.1786418990690; Mon, 10 Aug 2026
 20:29:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer> <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer> <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home> <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
In-Reply-To: <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 11 Aug 2026 13:29:37 +1000
X-Gm-Features: AUfX_mydHzA9-221QAh3EhXRqE3cjl31RV-cWqamXPTEvysHoYEOtN-Ty-pt3oo
Message-ID: <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Mark Brown <broonie@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

> > > If your assumption is correct, this is internal cat herding ... MM has
> > > much the same problem except that it has to deal with somewhat
> > > opinionated architecture maintainers (around 22 of them) to agree on
> > > the internal abstractions for MM primitives.  Perhaps rather than
> > > getting into my problem is bigger than yours type arguments, we could
> > > observe that MM might run a bit more smoothly because it gets an
> > > additional 3 day conference (LSF/MM) plus a MC at Plumbers to sort
> > > itself out?
>
> > I guess the question is, what exactly is being big for DRM that it needs to do
> > cherry-picking for their linux-next branch whereas Networking and ARM do
> > not? Is DRM bigger than either of those? From what I understand VFS doesn't
> > have to do that either. And VFS has a large range of file systems to deal
> > with. But it also has one of the best abstraction layers of the kernel.
>
> It's not even all of DRM, it's specifically the AMD and Intel driver
> stacks which as far as I can tell just routinely cherry pick all their
> fixes between their development and fixes branches without even
> considering the possibility of either merging up the fixes branch or
> just waiting and letting the fixes propagate back.  None of the rest of
> the DRM trees ever seems to cause these issues.

AMD and Intel are just the two largest teams with the longest
pipelines of internal engineers and teams. There are between 50 and
100 people in those groups, across multiple disjoint teams feeding
into a single driver. It just doesn't scale for all 50-100 people to
understand the cycle of the upstream Linus tree at all times for all
patches.

Which means for CI reasons and pipeline reasons, things go into -next
is the default, our -next trees are always open, and get disconnected
from upstream next from rc6->rc1 so not to mess things up.

Then there are people who understand the upstream cycle dealing with
fixes, because they know what goes into rc2 isn't what goes into rc4
isn't what goes into rc7, and that knowledge is hard to disseminate.
Having fixes be a free for all has usually meant me refusing trees in
rc6/rc7 because there are inappropriate patches for that time of the
cycle.

Dave.
