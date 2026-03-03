Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02C3342CA2
	for <ksummit@lists.linux.dev>; Tue,  3 Mar 2026 12:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772541860; cv=none; b=Ta1Yz0A5Th9svLyisVpPAWXP3eN0xF564dcnVvm66q8TG2wfXXs9ktYTwQVvO7FSRYTOfdwyRbjk6vXRHsIPDU0y5U808NuFWytpiVCgmwijXEPQF57dLeO8pYuehMJvILLa3Thu1CtBjTqEVm+d1JzSgRK5RnJhzQV0YM2dXa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772541860; c=relaxed/simple;
	bh=EeuuuXqPgNQ80Y6k3sed8vjchEc89e7iCxBcTFKljFQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PpsCOYoLydv+i9ctQeIIqmFlQ6XS7QikqIHfT4eiJ/TaLSTUI2Yd7y/YSfN4NTAYvBuv3tU8/aESJz81AEnQ87FiEBdSpSDwwTCjRnBzk5HefjyBizDbxwApYTbPULbHnZoCpfuWbCogW8GTF7bKoiOiSu+rNmYICscM7M6fISc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+5K+esn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+5K+esn"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50C5AC116C6;
	Tue,  3 Mar 2026 12:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772541860;
	bh=EeuuuXqPgNQ80Y6k3sed8vjchEc89e7iCxBcTFKljFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B+5K+esnVYQyGKrYZ9iRexr4W7+Mx42ZWx8YUIY+s0nIoSYV8KE0bvDWrwJ0HOYPt
	 zw/0UtTBFJJMsbWCPELsW1F1rU0GSel9MQzIqXvYhIHyzxJrI96oVnemyDTtaOC+J1
	 Se0jbyEi7c9UJqzVWBZWlh+3Oz8srdXptnghBg7pQ7Vp3j+le20dbdxzaSPZRm1mh4
	 ljKstehi2KEh8YW0NIwMpZkN9KXGIAv6O6x/1mPUoe93x6vLzHtt39csCj7bjeYH1C
	 PSOplxJ5/fEdM+z/vFZuffvKYltNz9UXcwLU8JpvdE9g6mfgfJXdVAdNRDYk6wmbEm
	 zA9drr6TiUdfQ==
Date: Tue, 3 Mar 2026 07:44:19 -0500
From: Sasha Levin <sashal@kernel.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Cc: torvalds@linuxfoundation.org, akpm@linux-foundation.org,
	geert@linux-m68k.org, konstantin@linuxfoundation.org,
	ksummit@lists.linux.dev, laurent.pinchart@ideasonboard.com,
	linux@leemhuis.info, richard@nod.at, rostedt@goodmis.org,
	users@kernel.org
Subject: Re: [RFC] kallsyms: embed source file:line info in kernel stack
 traces
Message-ID: <aabXo2XYUmtlRT6f@laps>
References: <CAHk-=wiUOYn4nyWyuvLh1O0j2reB_ec+4DAO06h7Pu36aA4iDg@mail.gmail.com>
 <20260302202828.2722037-1-sashal@kernel.org>
 <7e3ee6b2-62f9-4876-ae1a-d1473d126309@p183>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <7e3ee6b2-62f9-4876-ae1a-d1473d126309@p183>

On Tue, Mar 03, 2026 at 08:39:36AM +0300, Alexey Dobriyan wrote:
>On Mon, Mar 02, 2026 at 03:28:28PM -0500, Sasha Levin wrote:
>>   [   11.206749]  dump_stack_lvl+0x5d/0x80 (lib/dump_stack.c:94)
>
>This is super useful, thanks.
>
>Can the 0x prefix be dropped as well?
>It is shorter to print in decimal up to 1 million.
>
>() are just character noise, I'd drop them

Possibly, but I don't think it's related to this work :)

-- 
Thanks,
Sasha
