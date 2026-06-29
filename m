Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EFB4611F4
	for <ksummit@lists.linux.dev>; Mon, 29 Jun 2026 16:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782751718; cv=none; b=uB371MjtN3wASKorLFwNm3XJYw3tonTMTp5Fx0Fld9aOVpK7S87YzxlYP+REfEI4EXsQ5HrHMA9V6ULKsAYbGsJOKIruxxz0ZQswrfu5HPF24H0kHHpHY2FlaE2KchHmPZdNgbPXo0T7jdUGJP3VCQTRRqnDNEM6E335/v1icJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782751718; c=relaxed/simple;
	bh=p9mSBOeRdjbqRyIZQvAcDf52aq4Yct4QUAl328mlXGg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=HucoToBpN6qcP0zSsWW7NS1uCOtDKw9ohZ3AlQ9ZyqNIAdjzkDwCnINbuZw/rz2fg7MGpd7/TlWaT+Xg8lQuK4HJ14uI0ae6wLH5u7cJbMr0Z65XigTwcjODoFFWZCiIKVqn42O5WdQbxTl+XtB+1WeoNWnXxgHy7gxfK5s8nqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=drrGiDSo; arc=none smtp.client-ip=198.137.202.136
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zytor.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b="drrGiDSo"
Received: from [IPV6:2601:646:8081:7da1:68c9:ba90:b2f5:8138] ([IPv6:2601:646:8081:7da1:68c9:ba90:b2f5:8138])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 65TGmU3Q667223
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Mon, 29 Jun 2026 09:48:31 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 65TGmU3Q667223
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026062701; t=1782751711;
	bh=ZjzyEUoqFKpt90TH0DSxMsudnf+U1lzw1BAy1DnYddE=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=drrGiDSouBPuSv3YXytFKZP2iE5znNFf2Mifhm8A2/XKzgur8NBf1S0xN0xAc4A4/
	 LpSw/lGLyPmoDWOWiX34LtoQbWh10CAddhRyzFLh7hjonj+yvG4pK1FUYk2ACkMpWw
	 Ctoy9mUDgYzzJ0hAfPe892gcvDflxSGs7IqaELg5AuFnX9M/ZmHvdGra7lQvoE2Xhf
	 znXR3lWGuAjv8d0I+65EzFEQHixOC7PuPXp58jsjetXT4NyPqgxbijG3aGj+MLFePv
	 Fkm5mIfbJnRXbh6h18wfUOQqc2MSWomzKNksElcS9txsVp3gCBdv6vUbYWlG8qWWrd
	 lXtCYnLayDhsw==
Message-ID: <c48a77db-98a3-4860-ab30-bcbbe0884baa@zytor.com>
Date: Mon, 29 Jun 2026 09:48:25 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [TECH TOPIC] Implementing malloc
To: Matthew Wilcox <willy@infradead.org>, ksummit@lists.linux.dev
References: <akKBVsFBro_4QM74@casper.infradead.org>
Content-Language: en-US, sv-SE
From: "H. Peter Anvin" <hpa@zytor.com>
In-Reply-To: <akKBVsFBro_4QM74@casper.infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2026-06-29 07:29, Matthew Wilcox wrote:
> malloc() is a standard part of the C library.  Yet we force new Linux
> programmers to learn the difference between vmalloc(), kmalloc() and
> kvmalloc().  They even have to acquire an understanding of the difference
> between GFP_KERNEL and GFP_ATOMIC.  If they are particularly unlucky,
> they may have to understand other combinations of GFP flags.

You *NEED* to understand that if you are going to program kernel code. There
probably isn't anything more important, *really*.

The kernel is a memory manager first, a scheduler second, all else is commentary.

	-hpa

