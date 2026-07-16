Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF3981AA8
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784215944; cv=none; b=Xsl5GqBbI1WQHgiCLVMHCI19vLKCcY2U6uFLHoc91046uFrCpxAuF3AEJ7p0tMya6Pn3e5ErL//7hmmfGGbM6C/jwsLgfLjD2WLd7Wyah+ZPSK+L0wYJJX1YuRrQFToZCD5pjllPvG3FiTnDpjPaglyi5CHpxCBYXNFCDuWScsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784215944; c=relaxed/simple;
	bh=5qhLMQ+tZ1fI26ZIKsIrZigKMaUXQkO17XloO/vjkzo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lfKMADbzQF1ttTgp1DFkVv6+HR845PkOrjKfsewvPPyJE4vBLMKxerfnpkSFzIjvOqxBwV7DRzr+zeZ8vmKlE0mIAbNCgunlnXN7rCZetYwXG5t2k0XEzRwsW3cdneb8YpWibkLksmk5s/i4jbw4QOyXKnHL2B8TShWgmyXhYZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAwBahfK; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAwBahfK"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 183CA1F000E9;
	Thu, 16 Jul 2026 15:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784215943;
	bh=4rxyA9LGsk7gJodFWT6Fx04U7MlQ8XqOYrZWwSy8Ick=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KAwBahfK8Ny7E3ATQ6sNGWk7D0JKU5mSyT+umE5wiqPS8l3lPIrCkXoIaKk6MqSRd
	 A0sga/9mwLFgcoyvI+mDmKAqQiIqjEH9GT9VHQ73fgLQqGd/Cjzsb3Vj6E2D+zNefj
	 a9V97KfO9v+jExVvY0t9x0vwQGAY5imI58LT/mBInce3PYQ5E+SWDh+fzCIus6GX2k
	 PQnTdruIhBOSQnLXldL+oyvd33xfcYnjqITsYllgmwMt9emRcPij0mLOz8M45ZbBXO
	 xCNJMlWpBT8IceG2VG/IoM4idq2AbUEgtUFu8EO6lHENgeL6nw0KOTxt7wgHFrYBxY
	 eefspiXI4zk5w==
Date: Thu, 16 Jul 2026 11:32:21 -0400
From: Sasha Levin <sashal@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Roman Gushchin <roman.gushchin@linux.dev>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <alj5hYx30qiYuatZ@laps>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
 <CANiq72nKeDuMqWWy3ipdhOgCwUVyN5xt_MDXnu9AVbixH50PrQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANiq72nKeDuMqWWy3ipdhOgCwUVyN5xt_MDXnu9AVbixH50PrQ@mail.gmail.com>

On Wed, Jul 15, 2026 at 07:51:33PM +0200, Miguel Ojeda wrote:
>On Wed, Jul 15, 2026 at 6:55 PM Roman Gushchin <roman.gushchin@linux.dev> wrote:
>>
>> * Review of LTS patches and kernel releases.
>
>For the backporting case, I think this could help, and there are
>certain things we could ask for, i.e. custom prompts.
>
>It may also have less noise, in the sense that the AI has the original
>commit in mainline as a baseline, i.e. it is not a completely new
>patch of unknown quality.
>
>I imagine Sasha et al. have experience with this.

I currently utilize AI to review backports that are being sent to stable@,
which has helped with catching many issues that would otherwise be just merged
in the LTS trees.

One piece that is missing is identifying whether a patch is correct when
cherry-picked to an older tree.

I've been (very slowly due to time constraints) working on extending Sashiko to
help with this. You can see an example of that work here:

	http://20.172.224.249:51261/#/backports

But I definitely need to sync more time into this.

-- 
Thanks,
Sasha
