Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64775540A7
	for <ksummit@lists.linux.dev>; Wed,  9 Sep 2026 16:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788970075; cv=pass; b=tk4lEqQNfo34myC3yAfQI4ghU7TqlHj0i0zcLn348F3uOYKGPzHWtTws8NI6XktMrOCjnrx4jcaoEbxwLSrajiuHMvJmnh4A/fBhNcnKcRW3iVXGsbAxiDskFF53vNWnxjIqb5P9TCngjrUUR2B6vNap63/UBzAX7Av9/U8j49g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788970075; c=relaxed/simple;
	bh=M3Phqh2zr47RXb5S6zwgxdaXh/X5OYXg6eZ8EUWNi3g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F7rz71Vw5fgiCQU/J5z3Ftna+iqHPF1zRU2Y+u3UeIYh1SJRWH0LxP8wMHJOEqpDoB7FU6JPsk6uM9TzdEIVHrEgb/z24AYBc7Skb99xmFokiov1FD8WwmGFDAl0dG0xFExDqExvI4pMFycZqSMseeEsHAJm1zlrznPVO895uOo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=o95zHp0C; arc=pass smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="o95zHp0C"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-49b96837ca3so47346125e9.3
        for <ksummit@lists.linux.dev>; Wed, 09 Sep 2026 09:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788970072; cv=none;
        d=google.com; s=arc-20260327;
        b=XAxL/jnD9mPnYkTi4aesgSSWoNNX7WdBwdFR56qyVaEqRwMIuwWkMC2WL2oNeziByp
         jKmOm9kPl19S+MuoCYrGU/fBEl7g9doOH1WMpHFsIsfjQ6hDl9FMj8uExeONhTgOs0h3
         55l8L2pSD7qAgUsi8mhgInwiJyBhUcFXtgRRzBPLTmPQzhjvrTbOCb7A2v8vc9VExYOl
         sCm7YaBHtNCi/esdKquhGJ4FVmS+an/H4FkIEAGLJImMQFtCkM14hM4hvQ8WFAy7Up7i
         kKC3ZS/+wdfeMmVQcoRYbyxEhWLajiOJjdusjUzu2TEPYnDQhAzu0MiiEBQL1ALx1vFo
         I1nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P+BLY/VnDF7Di3zaJRo3U5OomTgEZmB+Vk/9pkK+sdE=;
        fh=q/SG9Rlf8rYCdyTEaAP3INawTGqpT5x8aW7iUQbUgvg=;
        b=mzp9DMy5uh7kdcMUt4QyGjTjjZQ1c0APmMfOMuWqIcnBHGxfCDcjEhDLYK6kJgg+v1
         lA9nhpqK/p4vUN9PgJaTLiiKbri457kUBStROaLDsnrW/igFeDCVC8FndVKjPJdzDrgP
         J1p7SdkLRy9FAJ9PV2KjlKm9AU70kpFBYYXyiHnyHnA8vG7K/leMrUG4eipc+mLAwpxP
         vY3eAGAlbkLdLCSkEqDzIKyPSc7gQahKyslDSxDRUfjHDKx0GFSdBmiVJZunUDpgu/5z
         8mI08fZx98hj+eA3G15jPxWGDBAGcs4P+Dqrl/P0+eEjrREVRkhGp3fm8oWjdeVIbEuh
         VP5A==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788970072; x=1789574872; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P+BLY/VnDF7Di3zaJRo3U5OomTgEZmB+Vk/9pkK+sdE=;
        b=o95zHp0CAUU27reCtJCT3KKvAw6cnlkngeQCXntMkOcVant5qf0wy4G9bLnxkZPKf/
         7ujjkfuDUUvLccbLVh91mR3fib3t+dLf8qy0S8gVx2JtnaoI039QQqJIny/kjOKErHJq
         j5qR3FbOHRlMIBJrmytQJBYqmfRIIwMWAH2T0C82+3J28iZvp5+s1uZWMFpCfFVJ7oYJ
         Qa48ri+ojL9Ei5OjZWQjw2EqQIb3e/CiEh3a/NFBhLQEdI8HO+TBTfiLsBAMd5+nzMNE
         nnYDKfacJzcfRnYn1jCXNYgUSwxWVcFYGxhe+3o4Xm1kjspC3e3QRPgGURkcxeL/t1iz
         6XDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788970072; x=1789574872;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=P+BLY/VnDF7Di3zaJRo3U5OomTgEZmB+Vk/9pkK+sdE=;
        b=MCPPXBFdr6EolqPzaXM4Mse37NNKBUGtyy611v8xMXKTKaDOnOru49q0zAsn3Lu9p7
         IiqEIB/NA0FTciTUnMq6Ccz0oGCz5SMFF8SCcutom314cdnueSOWzTG7ciU5JXfayme7
         ugANSxaDAK2OtqFQV7nxna9NxjT44Ua8IJB2OCp9AOkC3XEh1w32kVGeFeffVWySLl70
         tcQeBwQDE8Kdp1t2F2t25EyB+wGmyG3kpyqAggCidQhP0fXyaRBGykOaGwIIVDVsB5z4
         4DmAd2LyBdYraRARR3O+xAP/dV52BR71shTJjFaDHYwRxuAk5DFsqBJmPIubeRDQJ23o
         qF6w==
X-Forwarded-Encrypted: i=1; AKwUvBxKUX+IyHKDQGhLCV3XbYswM4sQz6yI8WvhnjF1n2n8CkzxhNqV2p+P2kfoUwVEY7vdBAEpx8Ko@lists.linux.dev
X-Gm-Message-State: AFuF++kKoDSGJKZ9o8hEkF/g0NJ4U2cQVPLMmZfuv8g3Hs9rKuk/fiWl
	bG+SZ+uB9Rq12cs4deUH+vxVL5OMsqsXaqx50RASrIero0XLHo7CQV1EMvSSI6Q8bCfNNA+NJkD
	TY5G9n+irC3KnX6anWW/vfDziyCEZc9w=
X-Gm-Gg: AYBFou3W+03BoKPX8KZdkeRu8btUIforhklBdKWUpHuNHuILG+p5CJSIUu6tL0dZaf2
	/Oy/SGhua7DSvM5VTBAU3ZmnsZKe/J/Y445qxRNmK3JThWgLlGHun15nKQB+J88dOWIBcsW9E3w
	rp9chJTPulYyGtF5WMeYtDuLG/w3fyHrU46QdonT9bYLabH0o+Mcqie75Geu85Lmir8wFUkPG5d
	ZTB4/nNm0IEx+99v7aJUe/rZ27FNBWPMOUJBrymClvfamz7EUJN16I/qNv0dz3tTkUfNztWJc4I
	fp5vNBa2U9e7BJsesp43hd/c+ojJGx/5exnDUHmf4ReDWougLDK1xzhc
X-Received: by 2002:a05:600c:46d5:b0:49c:fc6c:be04 with SMTP id
 5b1f17b1804b1-49cfc6cc091mr310493015e9.27.1788970071668; Wed, 09 Sep 2026
 09:07:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <ap-AmsGgDNFYLlw8@mit.edu> <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
 <aqARgWGWYG5kZW9g@mit.edu> <CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
 <20260908152921.3c90bdfa@gandalf.local.home> <CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
 <20260908191440.65efef15@gandalf.local.home> <CAH2bzCR3_DJOuW+jfkH7tkx-j4KbPJHVx2k2Z6X=+vaS6rmqng@mail.gmail.com>
 <7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
 <CAH2bzCR_hwxVbH-rfUHzj1-70mU7SkRY=3OgHEe7om5kZ605sQ@mail.gmail.com> <9b3e9c8cbdfd657323467079d397792c1ac8959e.camel@redhat.com>
In-Reply-To: <9b3e9c8cbdfd657323467079d397792c1ac8959e.camel@redhat.com>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Wed, 9 Sep 2026 19:07:40 +0300
X-Gm-Features: AcwNN1WgGPOprQo4DyJV2GAZlLpGYo6vf44UMMxI1ExVu3UCzbAddIOeavZw8FQ
Message-ID: <CAH2bzCRvGGi_WS4j-5jeWU2uFrFWy_s9ZtMrcT5r+QY+=UdP4w@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Gabriele Monaco <gmonaco@redhat.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Theodore Tso <tytso@mit.edu>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	ksummit@lists.linux.dev, istoppa@nvidia.com, 
	Kate Stewart <kstewart@linuxfoundation.org>, Gabriele Paoloni <gpaoloni@redhat.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 9 Sept 2026 at 18:22, Gabriele Monaco <gmonaco@redhat.com> wrote:

[...]

> That is all very interesting. I'm not too familiar with safety requirements.
> I get that ftrace and friends are themselves hard to validate (though arguably
> they are the best way to instrument a kernel with minimal stepping on anyone's
> feet).

Indeed, it is good at doing what it was devised for. Like the RVM.
But as the saying goes, once you have a hammer ...

> In general I feel anything that tries to validate the kernel from the kernel
> itself will have this kind of problems. It cannot really be isolated from what
> it tries to verify.

Well, that is where I beg to differ. We have implemented such a mechanism.
But I've been repeatedly told that I should provide first the code,
which right now
woulnd't really help much, because it is far from being in a reviewable shape.
So I won't get back there.

You can look at the references from the root mail in this thread,
or we can move the conversation to a different place, if you want to
discuss more about it.

> How do you see a tracing-based solution that satisfies these safety
> requirements? Something running on an external chip and reading the processor
> trace? Something involving clearly separated VMs?
> I know that's what some fields do (avionics), but is the overhead worth it?

We simply create a protected execution environment within the kernel.
Several, actually.

> If we assume metadata can get corrupted in any way, I'm not quite sure how a
> software can ever be considered safe.

With in-kernel fences, that's what we do it. As presented in the links
from the first mail.

-- 
thanks, igor
