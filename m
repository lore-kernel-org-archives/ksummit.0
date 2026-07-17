Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDDF38E8DB
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 21:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784322346; cv=none; b=urms4n2Qy9yIUWV/lxx0tlao0UihhIFDDgqJIK5ve2m0tEv1Vfwe5XY1rdOf5c5NFRMSVoH3zh3hWJrdrwqlh7BvYLk+++GIXglOGsdRFPjyqPdCaaHJ4U7qb6hdIMWDvLewZa15quziv05pQAaTA6CrDk1Tl6K8phg7vgiDGm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784322346; c=relaxed/simple;
	bh=oPF9w02PMM+u/PdYzZ7xQq4Q2S5BgFD89JahAW2hp+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=gEipztbsPQJ5bF13bcQvpllcqaoNtot57kQyiunAGYOzGbB6dXwf3gd4F0FrqSutcCuh8zf/KwsRjfPAV//u34yc1NtFrg7piRYF7GHpDVFyyfTL0S3OStHkxnqhWE9dNZka8DI/4ptNcV1zBaAr12d/dEQHqiW/x5lhh7syRwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEOBW/OA; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEOBW/OA"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 064401F000E9;
	Fri, 17 Jul 2026 21:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784322344;
	bh=oPF9w02PMM+u/PdYzZ7xQq4Q2S5BgFD89JahAW2hp+g=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=KEOBW/OAsP9J0T1Uq0I1b3WgVe7osaQtM6WisRihXmRjVOjmpQ+R15SpBySph/whf
	 2gwgrk0CLR19GkREsvE4SMHCKAGczxd0Ac8wvwPRJmpz2UxBZClGGYyvx2pCYjalLB
	 X/OdFBS/w+cXh3DrM2oMCXXu9kVJsxl+ryoP9pVu6usqWl6iLYWQBiVzIjBiuFZcZT
	 3s6lIb3pE/7jf2RP7adNTqJOZJrQAMi0UdQs2516VqeXE0MOLbAhmqesmYLnw5htPu
	 6FBrG1C+1Gf6y94H7W+asaGcY35OcwdrGEwCsMNp48WVcyNv7mDYuN/8EIKELnk8Ww
	 5rAytQJFGyBPg==
Message-ID: <9e10dc4f-5d5c-4c20-831c-9137e719b337@kernel.org>
Date: Fri, 17 Jul 2026 23:05:39 +0200
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
To: Roman Gushchin <roman.gushchin@linux.dev>, ksummit@lists.linux.dev
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <7ia4qzl45h20.fsf@castle.c.googlers.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/07/2026 18:55, Roman Gushchin wrote:
> * Prompt development and testing.
> Currently, prompts are maintained in two GitHub repositories and are
> changed manually or with the help of AI coding agents. However, there is
> no established practice for testing them, especially across various LLM
> models. At the last LSFMMBPF conference, there was a discussion about
> moving them into the kernel tree. I see some pros and cons to this
> approach, but the ownership and testing models are not entirely clear.

Prompts in a meaning how to parse kernel, work with it or produce
reports: yeah, sure.

Prompts teaching kernel code: I don't think so. I find it really
incorrect approach to create a dedicated and duplicated basic knowledge
for LLMs, instead of focusing on knowledge for developers. I understand
that LLM has to be taught basics of C [1], but we should not duplicate
kernel coding style or kernel rules into LLM-only instructions. Instead:

1. Fix docs or kerneldoc to have these properly documented,
2. Instruct LLM to read these documents.

We do have tribal knowledge and it should be our kernel docs for the
developers, first of all. If the knowledge is so important for LLM that
it must be duplicated in prompts (just read some of the subsystem
specifics at [2]), then maybe better add it to some guide "writing HID
driver" or "common mistakes in Bluetooth", so developer writing such
driver that will find it. And LLM too.

I keep growing such codified and condensed (keep as short as possible)
rules for subsystem I am part of [3] and LLM should read that one. LLM
does not need dedicated doc, different than developers need. Well,
except teaching C. [1] :)


[1]
https://github.com/masoncl/review-prompts/blob/main/kernel/technical-patterns.md#null-pointer-dereference

[2] https://github.com/masoncl/review-prompts/tree/main/kernel/subsystem

[3]
https://lore.kernel.org/linux-devicetree/?q=dfn%3Awriting-bindings+f%3Akozlowski

Best regards,
Krzysztof
