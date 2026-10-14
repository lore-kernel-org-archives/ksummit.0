Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A96412C08
	for <ksummit@lists.linux.dev>; Wed, 14 Oct 2026 21:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792013892; cv=pass; b=VqYWfiuuFP3wHWWaw9xxjAT7UKSj0JOCx1WHghfiKQos/n7Jcd1QMPW17YXgLXMbV4Dy7MeijMI5GRkoI/Pf6och2Bm7PgGgpU5lOwQ9HZyGgdEOnRW4cNKHRZfYSGg6CNR7/ruz7BcHvp7FxVt5rPHtzHPlUXqKWB4SBE1Evkk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792013892; c=relaxed/simple;
	bh=DIMe7cm+aeq0QgaGLv7REq10S4I0iNcdx9I6hnFrFPQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gj1nBZeq+VoH8RB5k3kqwYnUwto7IhVFLoNbjWTuMhs47PSzJBwOnPa8i6q1OGysEoAc2TV8eVYoZox5Ip5xNqSsbRXzOSNGLWFEYUF+ZJxuV5D2Yza5DRhUNRXMVG+EEGQKb4QUSg0xpC0I+Ay8Uk3q/v6sdjSVo1ND8JskhEQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=sRqSN6ra; arc=pass smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="sRqSN6ra"
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-33bb5afa736so559984eec.1
        for <ksummit@lists.linux.dev>; Wed, 14 Oct 2026 14:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792013890; cv=none;
        d=google.com; s=arc-20260327;
        b=lUfT/94FG0T7xrDcZVqUyrriYRD6XV90mraSRTeBMQW3h/eVqrOU9hxgUFfBDJHx/E
         YWliXNET0kglEsdxHQ90Hcy+mDHGmuULWR9xVda3FVkFugVzRWZ4g0nLr3973hnvVED+
         Hv0bkWyPdVqpXl0ICyeU03TndTg6zzOu7VnZ/W1n9ZbOqaehkkHpe8BtKNRSeAwN+mpj
         NQTRf/2RdQfJoJjlneOyIEudvtVWoshsDPipDdizAx0Dj19fVn5BF9kYxxApRvu+sadD
         hbw/EVMy5kdvEK1Rads2CDbG0gfA3WAv6l/rDafANl+f3waL92JJLFD6Sy1RtUXR8fQD
         21PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DIMe7cm+aeq0QgaGLv7REq10S4I0iNcdx9I6hnFrFPQ=;
        fh=3bT/ur6vsyhY1VJ67u3axwr3tjeallLVDzQQ9/lIAb8=;
        b=bBRNbl+TB/erIAH1tunRmLAd2V9f8nukwbIuQrWBohRznP5NmdrlDFaCRXp51XFbOf
         E3YGnsZhz74XPPZ89+3sOxBwcnPWwLaz8L3H29Pm0gltWMurHxDCR14xCY6IVVmTGBXG
         h9edynz3W04N/yvHLrsRbmNnfpPJi+NY6+CUlRcJlp5fEo3l2fbuljBfrvZ33Fb7vNtM
         7JBi1nWy8AW/KjpUu59FFfNeTV/13i03fUFmcOBQgDpHVZZNUwS4wfpBcIC+dlAKKxC8
         CETRZrBdd0ntTiHnPABUhBqOTZObtKBTplNrvZ/OhztXs533ltYq948CcG5hsmg025EG
         lNZg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792013890; x=1792618690; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=DIMe7cm+aeq0QgaGLv7REq10S4I0iNcdx9I6hnFrFPQ=;
        b=sRqSN6ralldQpCKYIVH8YogksdWOGOBUdY2g004bVMmQZ4JKAo9MuN/RLdfpUEIHLO
         gy9YTl9e+wUpbDrDKgNxPUPOj6ZrR8kkexgqVFw5P/7cqu4bnTn4JZcnNDluazvVnRM2
         GxVeoEWYwy4E+sM/MXY2PeoC03rbyDjR+r7ybXG9kRHcw7lO6wcIF24Fzg+8PaKgxfRW
         mb7TWcaOTfElURLp4PRbCLSVakEKE8kB0DKZlqhSt5lrgL7o+IjccZUy8YGWkMwrOQyK
         bhceG6tvYPWeb6l1RmZKi+1fPRRtzCIjjBvfZe5Pe2Vr5taCgNcILseYlyRXHHDVveGF
         BSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792013890; x=1792618690;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DIMe7cm+aeq0QgaGLv7REq10S4I0iNcdx9I6hnFrFPQ=;
        b=ZjxQ7/2anhg8LKDTm0Rgk49wPVfnwuilFsNnE7Rv/p6nxiM65fdkAXEcgapWmeg7l3
         N19ul4pBP4I+KmANdyHOBlyELROJ1zJO85Nc/Q0kikB7XbSSvSEGjdRINJkcEyRvQaVk
         2wnshV6Fy9p8Mn1FtBzRN7ehfNGLmtmi9Ms4/RHqTZoPrf6Hu9agw25M/8Vqt+WRipyZ
         GmjxcdU4qMacVENrZ6QuaeutYi2uBYAbbO6R0M88gJsKsG6x7H/ZGi+/K1LjK7Z29KHd
         Je86py7e92aSe6ikYFHnRtNQDW+SinYxuwsAkzG8Klw3vswvrZLOgxgb2K6JNLuGXLZy
         /UTg==
X-Forwarded-Encrypted: i=1; AKwUvBwssBDGU09FGDqZ1ByYkYYHhP7XbU92vkSfzjDw8cK8eA7gUBpTJIEf9jr16o4j55wMG+oo3FVG@lists.linux.dev
X-Gm-Message-State: AFq9FYLwgIXmo3VzqSJQ9d8HSDwl2kgh7/387VzDZGRJOxcVUpnCURYt
	KnPFGbt6+BowNEppP+BJcsObQCEh/cK77e0u3X15ZkoIxyK+ZsuE7S/7bxZFVIi1t6IdSKAo8or
	fkTfYkwfMVIaqdTJz2vvIngS7RLxPFk0=
X-Gm-Gg: AYBFou3oLM/M91BwDt6HqoV4SJHVVUggwMvgViUPgJdcYs0+FsARnsKxrzpaCyt41BB
	azFXXa1WVKQuUin+EbAw7K25mf3Rt+6fPAPbBFp7p9MR6DABfUQsrYcursJ1k62m63JShMnVYTX
	mt1+h5uO3LtS9Jfp5lUxuKP37SO04lEleuJAMa2k+PKLucmvf352sUWWnE89WTIy+dkfHeyj8sj
	5J3HhShoVPC7X0c3a9uFoXpDyAOFoLmmhZyGEZ5b/AUl/qhHzgbPhiO2ljPfgdUmcSdKC1RIDCb
	Grg6krQ58oCp30NwrtML6SCW/Uccr8nD8y4vU5bqrbravoz2aaRAiQg59M32Skk9LCFNKBlayn2
	xMQIEwpYlLCgUi95GEoqp3syKbjHMsQ6Jt3oIzcGdezIkPrb0nesyJ0GjcEO2vBQPycy904J5zS
	gFs3E2eQvjBsWWOW8pr71fX5m/nPiIZ/kvYeTQGPZY91yZxtwVcJ+cah8KEbjRnQ==
X-Received: by 2002:a05:7300:ea0e:b0:351:6d7f:e2bc with SMTP id
 5a478bee46e88-3537e04ce24mr33060104eec.2.1792013890143; Wed, 14 Oct 2026
 14:38:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1791499378.git.sashal@kernel.org> <20261014174838.114990-1-ojeda@kernel.org>
 <as_Cr4FhzyAh-kC4@laps>
In-Reply-To: <as_Cr4FhzyAh-kC4@laps>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 14 Oct 2026 23:37:56 +0200
X-Gm-Features: AclHuK8tgzioW0we3H5Jmz30FnP5L68F0LOvV3GcndlE9PwqCRYyUXS4gK8bCWk
Message-ID: <CANiq72m6okeCHuR8BCGENTw=wJhfXXZbXZtJq8xtoeVfvfo3TQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] agents: add portable agent skills and Fixes attribution
To: Sasha Levin <sashal@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, broonie@kernel.org, corbet@lwn.net, 
	ksummit@lists.linux.dev, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, rdunlap@infradead.org, 
	skhan@linuxfoundation.org, tytso@mit.edu, workflows@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 14, 2026 at 7:58=E2=80=AFPM Sasha Levin <sashal@kernel.org> wro=
te:
>
> I'm following the specs[1] for these skills, and my testing showed it wor=
ks
> fine with a few of the more common tools.

What I mean is that they don't get automatically picked up by default,
e.g. Claude Code and Codex don't seem to.

The website you link (in another subpage, not the spec one) mentions
`.agents`, but not `agents` without the period.

So what I wanted is just to confirm that, at least between those two
options, there was no inherent advantage (or disadvantage, depending
on how one sees it -- I am not sure if it is actually a good idea for
all use cases to have them automatically be picked up...).

> We can open the markup language discussion, but I'm concerned that doing =
that
> will break some tools logic around importing these at skills.

Hmm... Not sure what you mean.

Cheers,
Miguel
