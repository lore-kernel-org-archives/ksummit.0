Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E064D990A
	for <ksummit@lists.linux.dev>; Thu,  9 Jul 2026 17:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783618283; cv=none; b=A/Nl1XAGyxtnyIGE8HMseVgjRz/lpb/svwxPpiUkftqbUdcNh4bns9/8jFWk8SN+HliV6tQaWxXtxUd9rxKfrSAsR7W6YvXuanJs1q0HVAHOOjj0qHVHPtvHOYhaxiOEAhJeu5xP2kL/A58Xh2rntIbG2XSKzBM18cMYel1i1cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783618283; c=relaxed/simple;
	bh=5cOWPMR1UIVNPpx0lu1Frf3K6LjsM5PozLyL7Ct8Od4=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=Oqn2k7VLW9S3hqwFK+S5Ku83jcp90Hnu/9+uTY8Z3RfKGeKkHXl845Lrreim3yTQUQ0IriNuojHjbCpIOY0VlN5Wlmmn6kC5x9LoEFsewIwwKW+EE9E3nC49xHzmqrWIEU3HSqHtqDvRO7kBvO0LjcprQxssGXK62keKdDQg33U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=o9NKiSgp; arc=none smtp.client-ip=198.137.202.136
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zytor.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b="o9NKiSgp"
Received: from ehlo.thunderbird.net (c-76-133-66-138.hsd1.ca.comcast.net [76.133.66.138])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 669HUwmJ1910462
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Thu, 9 Jul 2026 10:30:58 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 669HUwmJ1910462
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026062701; t=1783618259;
	bh=kkZ8T/0St8sTJ3ARtHCOwuH1GRnwpkmiJ6XkAOorBgQ=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:From;
	b=o9NKiSgpnAJ2zmJZNh2AGhQqOj99FecfaheZSKwW83qD8QijnxSfZUwKymU4m6Gy5
	 g1WNHJU+NiZkthhcs/ztQZzJ+qf1zg0ks0SCzcjddhdbRwNIR4MHolsRvYBMwaTOcC
	 DAXTL+LUBjYupWpojg96egude2u9O1JIWoTgv39TI6vAJ7cvdfBo2HhrASyrIKjM3x
	 Y7ql1tyVScxl9vNYbTJWYuzsVZONHK/3uUqktvBS4T/jQ9cPcolZAC0KPeeQVibdRt
	 PDP481HGXrrqERu21dhAehUIQxvquH8yyH7kwJOw14RZA/4yNHOELkQ3K0djLvl1eS
	 TLlWffy838mKQ==
Date: Thu, 09 Jul 2026 10:30:53 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
To: Matthew Wilcox <willy@infradead.org>, Kees Cook <kees@kernel.org>
CC: ksummit@lists.linux.dev
Subject: Re: [TECH TOPIC] Implementing malloc
User-Agent: K-9 Mail for Android
In-Reply-To: <ak_WOfpcaZIuh99t@casper.infradead.org>
References: <akKBVsFBro_4QM74@casper.infradead.org> <202607090956.6381F35@keescook> <ak_WOfpcaZIuh99t@casper.infradead.org>
Message-ID: <6C80C5B3-7338-41C4-B85D-9526FCA0C8DA@zytor.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On July 9, 2026 10:11:21 AM PDT, Matthew Wilcox <willy@infradead=2Eorg> wro=
te:
>On Thu, Jul 09, 2026 at 09:58:37AM -0700, Kees Cook wrote:
>> On Mon, Jun 29, 2026 at 03:29:42PM +0100, Matthew Wilcox wrote:
>> > malloc() is a standard part of the C library=2E  Yet we force new Lin=
ux
>> > programmers to learn the difference between vmalloc(), kmalloc() and
>> > kvmalloc()=2E  They even have to acquire an understanding of the diff=
erence
>> > between GFP_KERNEL and GFP_ATOMIC=2E  If they are particularly unluck=
y,
>> > they may have to understand other combinations of GFP flags=2E
>> >=20
>> > This topic proposes that we should implement malloc() and calloc()=2E
>> > Various options will be discussed, their increasing implementation
>> > complexity corresponding to utility in a greater range of situations=
=2E
>> > This will also benefit Rust as we can use the same infrastructure to
>> > implement std::alloc=2E
>>=20
>> No surprise, but I strongly disagree with this=2E Those APIs are flawed
>> and we shouldn't emulate them=2E This is why we just removed strncpy(),
>> for example=2E
>>=20
>> Allocations need to be type-based, not size-based=2E When we force peop=
le
>> to reduce it to just byte count tons of metadata that can be used by
>> both the kernel and the compiler is lost=2E The size is a by-product of
>> "what do you need space for?" "I need X many Foo objects" or "I need
>> Bar with Z many trailing Baz objects" or even "I need a plane of pixels
>> X by Y"=2E The uncommon case is "I need X many bytes from this stream"=
=2E
>
>I agree that many memory allocations benefit from providing more semantic
>information to both the compiler and the runtime, as you suggest=2E
>What I don't think we benefit from is "And you have to pass this magic
>GFP_KERNEL argument too=2E  Unless it's GFP_ATOMIC or something"=2E
>
>Maybe I'm confusing / distracting by framing this around "Hey, malloc()
>is a great interface and we should implement it" when what I really mean
>is "GFP flags suck and we should strive to redesign the kernel so that
>the vast majority of allocations don't need them"=2E
>
>I'm happy to rephrase the proposal in that way if it'll help=2E  I though=
t
>that malloc() would be the right vehicle for getting my point across,
>but it seems to be a distraction=2E
>
>What I really don't want to see is a whole pile of Rust changes to
>accommodate having to pass GFP flags to memory allocations=2E  Would that
>be a better vehicle for the discussion?
>

If Rust can't deal with different memory allocators then Rust in Linux was=
 a huge mistake that we should rip out right now before it is too late=2E
