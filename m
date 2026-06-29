Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631122773D3
	for <ksummit@lists.linux.dev>; Mon, 29 Jun 2026 18:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782758243; cv=none; b=kI1wlYwQY5hvIoawnl+RklSBoX8J9hKMKQucfJvzFxfsPxI+BkasXPFZXFinvW6CaXP5zLOc+a2kAI3TbAS9HC2c80Ax86/+cnCsZIs32he5ZSDoQnayPTqXepYN5hqKkovMLQpuPNkgmNjlYmolL5E8VTNTYVF3suITgCDHQno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782758243; c=relaxed/simple;
	bh=G9nWALqOAx2MroEtC2c3VN6tXnistu14w8gdyzauumc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hI/2uTyndN+k5OfeQ/aUKd9v0m0y6LZWufOSXWR/IddAVu7TfKPOnFQEYszPevww39s3okvQ0RE/SxB9AAZWNfe8Jqb+OB9MKC89KL4gtC1clEy89bWbCeh0hs+UVYGcfTXD9nOSxWm0F+QWHxRLDlKZN2OuC17zXu3T9PRZG/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bky7AKi5; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bky7AKi5"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30F161F000E9;
	Mon, 29 Jun 2026 18:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782758242;
	bh=c8+3Ec64FzN/XFhdtnPhDOhLhOxqqs2uamJ+MJZeq+4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=Bky7AKi5hIM628WAK7hCJIQ1FmuAr4U21Z5SyNJNzakmZ3sNAxLblWAcSDP9jxd1y
	 RbsAM900yQfhF/+Goi5rreMLJVMS4MFkUQp7SOwaTq9Gve8Uf3PFLinCvzZadizphv
	 r6dWKPLKjrYf7L7JxledpfAs6hTZjnKquL49sB9BJq1Y0mRRd5RvhUHyBPwyu9hUk+
	 Ewpdxid3W7j8SDEvSNJGPf6ytjeU5LgwOSfmTuP4YuzfoRS1GtdBIMAA3XCagTsgMs
	 ItKPAxrOxDBxpGnC16Brffsmo1EX9Yb+Iyzahlyzkis7vY3JWfZklORfDqUzJJS1kM
	 HFw54eaxol5oA==
Message-ID: <abdedc4d-2067-4b8a-8bd0-276f421cd4a9@kernel.org>
Date: Mon, 29 Jun 2026 20:37:19 +0200
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [TECH TOPIC] Implementing malloc
To: Mark Brown <broonie@kernel.org>, Matthew Wilcox <willy@infradead.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>, ksummit@lists.linux.dev
References: <akKBVsFBro_4QM74@casper.infradead.org>
 <c48a77db-98a3-4860-ab30-bcbbe0884baa@zytor.com>
 <akK3KACxE9gIFZSH@casper.infradead.org>
 <32f6b38a-043b-4f51-aec7-aefcc7d0cc13@sirena.org.uk>
From: "Vlastimil Babka (SUSE)" <vbabka@kernel.org>
Content-Language: en-US
In-Reply-To: <32f6b38a-043b-4f51-aec7-aefcc7d0cc13@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/29/26 8:29 PM, Mark Brown wrote:
> On Mon, Jun 29, 2026 at 07:19:20PM +0100, Matthew Wilcox wrote:
> 
>> But we do have code which just needs to allocate "some memory", doesn't
>> have any particularly weird restrictions, and where usability is more
>> important than "pedal to the metal".  An example might be something
>> like zlib.  It needs to allocate some temporary memory, and why have to
> 
> Or drivers just allocating some driver data.  TBH kzalloc() kind of ends
> up being that function a lot of the time, I'm not convinced that a high
> proportion of the kzalloc(x, GFP_KERNEL) calls out there are the result
> of a deep consideration of which allocator to use.

Actually "x = kzalloc_obj(*x);" these days, with the GFP_KERNEL implicit.
