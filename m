Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E7B12D1F1
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 14:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784300097; cv=none; b=Q8lLw3YEo8wBscpzXMgV1RkgXbHHMGBQ2sfxeOaEpSdOc1LyW+ErSgHZdXrHKhvlPUVTmwB7AhiG2f7V4RFP8Z5thLdfgLPWkknU/wODQnXCiyfO6pRTdszD6eyJHxVDhq2VCnVD8HoY/L2K9/Ef0CiW294vyXiNTVndZ3ttN7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784300097; c=relaxed/simple;
	bh=j3fRxI+69BUKJNlJNT0bCe7AXbIsArOaNKg8reeDxDk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GqhRsh4uLeRzOJhyEtrc0eP9eGd44ksmT7GMkinYFICjjCX3iTjShWGPlp/n23K52TIFztz5sMAJVyrWzfP103JMfhTGRpGpRsSSs+4kKAal0Lt5UycHr0j44ZwUybv1p+YzXlffQDPWNqHYwaNiSP37pBBD51s+DrsxI7nV890=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cmpxchg.org; spf=pass smtp.mailfrom=cmpxchg.org; dkim=pass (2048-bit key) header.d=cmpxchg.org header.i=@cmpxchg.org header.b=ax+8mhJ7; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cmpxchg.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cmpxchg.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cmpxchg.org header.i=@cmpxchg.org header.b="ax+8mhJ7"
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-493ae59eca6so23572045e9.1
        for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 07:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cmpxchg.org; s=google; t=1784300092; x=1784904892; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=TtfTiuVfnDMZlquO3S/33Wf8wTOozGYxG+L4nwYmnGE=;
        b=ax+8mhJ7DePNSL79lH/HDSD+NwN+dKleoht4Kt8cM/TX5cUrnx/sWwvHDGZqawJjlP
         t8B11xW3KPM/0edKpXyNrZ+RtcvXQZWpxCtmZW0nI1UN73D9RWpTw4H4hlhFFjINWIWp
         eG8e37ZxRs09PWOuZpKk5RJ6noyfnaYzrJGAa/7y3/9+pW3jeebiUVMPrXjxN8R5V1Zj
         9NugFj7gQIH5dvqRhCGOrfCwCCkQL7e6/SSt5RMga5OoBfjqUCsUZgLRKhOA7Xp12Mx+
         AAz9v692aSLLdcQJHgaDrk7VV/hPQh0YhCfD89dmJco+i1dnkJ+DvrIdGC53O3jtmmIT
         Qxnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784300092; x=1784904892;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TtfTiuVfnDMZlquO3S/33Wf8wTOozGYxG+L4nwYmnGE=;
        b=F0ufnl+jzPX0DJiKvgANu6lUj9OVInIjk/pswEnYm1tCmQH4FPqj4maiaG+h6LdkJo
         lOLUYvTPbv5iKjYNz1dJICjmw7LqxJe9WqTOfyQgsAMspmvvgs2GM9Tjk9JuFlZ4MgcH
         qngmppK1X65o0IDQfcPr0+yXXHNrSC7MZIB6cykbDQ4n0z8Ija8TQiEucP8xWETYdjUy
         0ERALZ2Kiznl4z64wdmbxrVfYcG+YSeWsZCf1Ht0x2z0qtgZJjJo4a5I0KG7XMU2vT7J
         YgUYXC/8EeqF0lFtvTiqO2jG5FCHLjPL7+vPjQ3Q2TGBXSVtAUMN+1y7p+F/hMeY0vnt
         8DNw==
X-Forwarded-Encrypted: i=1; AHgh+RpdDxeCb0D+XaoIpomcm1N+mIBVtcwPWXp5GoHdBOOoDJY0jfbByA6DJq5JU9ECUkmsZ4ZzRKG8@lists.linux.dev
X-Gm-Message-State: AOJu0YxY4axmPuXWM7U+NIImqdQh7f5c8wCsWZkANyMIHdB1BRgRDYOE
	BlRWJ0dgXaox+pX9A0hF3baJ7FcMKcoRQ2JCqM6QkCkvQAMDEvbWI5D3EIYbawS/Q74=
X-Gm-Gg: AfdE7clYIT7s+9DDXglPrznJpZvxRpHwS6flVrwhILgXneP6jrajsPvxqXsfuaqLfub
	9VA/0U498ChTxX2oMMLhQG636z+or/MifS+7ZExhCX3SJxQOGeaHKH4Z0xlTJuSYk/l4acT20Kv
	IS1EB1I19gkbOuvML7wrCs6lmxcIkcUPfazI4Znt3El73UuDsGN8JxmLMuwBO15LJje1VTU+aor
	bB7wKYXlMuw28eKZEejffErLFshcuxTduFF9a3rqgUG9u1lzkdN9eWdruTLNypT4T3ehY8cTRph
	kFUKp2XPC2GSRhcFe3+XGp5vFxPcqLmSZ55sJLnbyfmSdQUlnwOBQpn8VwdX0h0eiMC4aJiLQi+
	NIt8RyNjVuMthQayxLQwXBqSVs56aYk6+V2KGw6ivIuRUQk45pmnzKJ/oL5BOYs+ZgwSUmAL2Wn
	c=
X-Received: by 2002:a05:600c:4f92:b0:493:bd2a:93be with SMTP id 5b1f17b1804b1-4954a3d0ce2mr34942255e9.6.1784300092385;
        Fri, 17 Jul 2026 07:54:52 -0700 (PDT)
Received: from localhost ([2a02:8071:6401:180:d892:bf43:a0b4:83b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49549a47e64sm63988985e9.8.2026.07.17.07.54.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 07:54:51 -0700 (PDT)
Date: Fri, 17 Jul 2026 16:54:47 +0200
From: Johannes Weiner <hannes@cmpxchg.org>
To: "Liam R. Howlett" <liam@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <20260717145447.GH6843@cmpxchg.org>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>

On Thu, Jul 16, 2026 at 04:23:19PM -0400, Liam R. Howlett wrote:
> So on Greg's note that having an LLM tag is a signal,  I question the
> SNR now and if the signal is the same indicator across all patches.

Yes. The possible range of involvement is massive. The question I
would find more interesting than a binary flag is who was doing what
part of the thinking at each step of creating the patch(es).

You can use agents to draft code, make tests, run experiments, analyze
data, and review for bugs. The human can apply a high level of
direction, scrutiny and steering on each of these steps. Or they can
just not do any of that and still get some kind of result.

Once a workable direction is found, the final result that gets sent to
the list could be a clean-room implementation written by the human, it
could be fully written by an agent, or anything in between.

And finally the human could have reviewed the work end-to-end,
line-by-line; delegated it all to a review agent; or neither.

The process behind a patch with this tag could be anywhere on this
spectrum. And reviewer interpretation of the tag is just as varied.

It poorly communicates what actually occurred. And there is clearly a
stigma attached to it at this point, with the expected consequences,
which further distorts the signal. The latter part might go away if
there was a better protocol to convey the development process.

But I'm not sure it's practical to even try to capture all these
nuances and precise division of labor questions in commit metadata...
