Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775BB35AC01
	for <ksummit@lists.linux.dev>; Tue,  3 Mar 2026 12:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772541948; cv=none; b=CzS9ulfCn9vDruwYOsLgMKFMkki51480YoW0FDJvkO/bPBRRv19NQ1fjXkgSGSov78pjn7b1LJWGXJd4PN50i8gJJyROqJrpu8ron8lNVn7LDwTIxbZm2o0pFgWwvjynfM2n3q0IlbM4/k587CJvmTBWIWUxv+4MRd483Txz8Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772541948; c=relaxed/simple;
	bh=9CuhskgcOMG9wAjXiHHQ/dqBPYiRqMDC8psP3YlXmhE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ACTVW7KZJSzidjieIn66KBbX7xjBqg9/PQYdZAphgxdMk8X4jU8eDTK2ICW3EScJHyu4C2opp/KSB9+2vXF6NW0bKyoUWQs1h5RbskKhI5SZHCWhyJebmFLzIel99eIpwcfi4w9tsLX5vQcy5wk5T03985Jk3QHaxwA0WJtInoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBwmo/Cf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBwmo/Cf"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3161AC116C6;
	Tue,  3 Mar 2026 12:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772541948;
	bh=9CuhskgcOMG9wAjXiHHQ/dqBPYiRqMDC8psP3YlXmhE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VBwmo/Cf60TS7b+Tg/gMxYdw6g/qSfZy2YCuawfpi0LMBfdWDfoXEAtzlV1uOtRqm
	 Ie2WDs1uG5VQfVq7s4UlzTtuhO6Ar2eE4N2EW5L8H49fXeMXF/JgY9JVsoQaJeImVG
	 WyD6RKGyBWut7XeWlZE1c8R2KwDRgg2lXbjxoTVZ4ihv+21COO1wUiJmOdsBFnsBSQ
	 9w8YSDWnS1icb/xuY8m9HjZYSXgYWMUbqAYvOUMxHl6HooZLWRNXjPCQxoaO1Gm9g9
	 eMBc8rFY3vG4Id2gzwWFgRpzJ8DYirTxZtkfA1qnin5oVhakpuA5JGRWGpHiNQsh7H
	 CtF0Tj8O83tcw==
Date: Tue, 3 Mar 2026 07:45:46 -0500
From: Sasha Levin <sashal@kernel.org>
To: "Vlastimil Babka (SUSE)" <vbabka@kernel.org>
Cc: Tomasz Figa <tomasz.figa@gmail.com>,
	Richard Weinberger <richard@nod.at>,
	Linus Torvalds <torvalds@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	ksummit <ksummit@lists.linux.dev>,
	laurent pinchart <laurent.pinchart@ideasonboard.com>,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Steven Rostedt <rostedt@goodmis.org>, users <users@kernel.org>
Subject: Re: [RFC] kallsyms: embed source file:line info in kernel stack
 traces
Message-ID: <aabX-oOQEO5JDaDQ@laps>
References: <CAHk-=wiUOYn4nyWyuvLh1O0j2reB_ec+4DAO06h7Pu36aA4iDg@mail.gmail.com>
 <20260302202828.2722037-1-sashal@kernel.org>
 <91334269.1714.1772519173246.JavaMail.zimbra@nod.at>
 <CA+Ln22Giw4_RL-BCGot9hsgQU5LA3HeFM3bppyz0XW6py=UwoQ@mail.gmail.com>
 <e63b348f-3527-41ac-8b1f-3c04aba87d73@kernel.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <e63b348f-3527-41ac-8b1f-3c04aba87d73@kernel.org>

On Tue, Mar 03, 2026 at 10:04:51AM +0100, Vlastimil Babka (SUSE) wrote:
>On 3/3/26 07:48, Tomasz Figa wrote:
>>> > Memory footprint measured with a simple KVM guest x86_64 config:
>>> >
>>> >  Table: 4,597,583 entries from 4,841 source files
>>> >    lineinfo_addrs[]     4,597,583 x u32  = 17.5 MiB
>>> >    lineinfo_file_ids[]  4,597,583 x u16  =  8.8 MiB
>>> >    lineinfo_lines[]     4,597,583 x u32  = 17.5 MiB
>>> >    file_offsets + filenames              ~  0.1 MiB
>>> >    Total .rodata increase:              ~ 44.0 MiB
>>> >
>>> >  vmlinux (stripped):  529 MiB -> 573 MiB  (+44 MiB / +8.3%)
>>>
>>> Hm, that's a significant increase.
>>
>> Random idea: Could this additional information (and I guess the code
>> that uses it too) be moved out to a loadable module?
>>
>> The obvious limitation would be that the user would need to have the
>> module loaded for the decoding to work, but that could be worked
>> around by marking it for autoload when a crash is noticed the first
>> time and then getting a better report the second time.
>
>IMHO that's too big of a disadvantage. Many crashes are rare and either you
>have this always enabled, or you missed your only chance.

If you already have it the crash trace from first time, and you obviously have
the decoding information, just run scripts/decode_stacktrace.sh in userspace?

-- 
Thanks,
Sasha
