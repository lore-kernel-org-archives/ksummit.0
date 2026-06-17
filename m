Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F763FF1AD
	for <ksummit@lists.linux.dev>; Wed, 17 Jun 2026 12:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781701054; cv=none; b=e2Ti1HD9o0/QFjC9Wa/Gn+XlSNI0dtu4WyOhxsGktEkBmiH3YNjntqDurHEtBH8uTfUSk3sG61GyWwzGF2jqs0XQ+Be0SSTMp7qxIPJJpBJFIGQxbiYzOWYhUtr8c+YIyAu6rk40DRonft7i9tcMsBVKkV1tXFwf+xw3zWbtxvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781701054; c=relaxed/simple;
	bh=JHJMh2Z7pDwiqG5HkGeMdjYhluSl0iXNP4q1qu5t+CU=;
	h=Message-ID:Date:MIME-Version:From:Cc:To:Subject:Content-Type; b=JO9yPqZPXPnFzgHUjehWEciTdHNgQ6pebIj/Un6gqnKZioz/Y1vcQ9kJyFYKB5ezDJRmc2HCoYtbVxQRSrvha1720oHSQDa39fPYUFg5qjz2iNGZhVBoz+P/KtI57w2nj6qwitCYTXbHSMhzF8b4IJEdLjmkyzDCsOMDnXhbMuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=UkM2BNS3; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="UkM2BNS3"
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D949F4794;
	Wed, 17 Jun 2026 05:57:21 -0700 (PDT)
Received: from [10.57.81.10] (unknown [10.57.81.10])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CDDF3F905;
	Wed, 17 Jun 2026 05:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1781701046; bh=JHJMh2Z7pDwiqG5HkGeMdjYhluSl0iXNP4q1qu5t+CU=;
	h=Date:From:Cc:To:Subject:From;
	b=UkM2BNS3Z2ZBpcqvvkCW/y+hJm7xfP2RwwiaVc5w6j4Iv51KokKp4jYp/B88FarUt
	 VS0/BFs8T7pTvOHXQkhSOQCmgG4yJKe4+zis+F+E0/Bt7UuPTJjFzgCCdYhR4LEhho
	 sRqCDSmVx+ZVrYZLjE9bh6JA55l5tiR2LZLqnRtM=
Message-ID: <20082b1d-a4c3-4852-b48e-aeaed4f6acf2@arm.com>
Date: Wed, 17 Jun 2026 14:57:20 +0200
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Kevin Brodsky <kevin.brodsky@arm.com>
Content-Language: en-GB
Cc: Yury Khrustalev <yury.khrustalev@arm.com>,
 =?UTF-8?Q?Stephen_R=C3=B6ttger?= <sroettger@google.com>,
 Pierre Langlois <pierre.langlois@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jeff Xu <jeffxu@chromium.org>,
 Dmitry Vyukov <dvyukov@google.com>, Jens Axboe <axboe@kernel.dk>,
 ksummit@lists.linux.dev, Mark Rutland <Mark.Rutland@arm.com>
To: Florian Weimer <fweimer@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [LPC] pkeys ABI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

I am considering submitting a Refereed presentation proposal for LPC,
but I would first like to check if it makes sense to everyone in To/Cc.

The pkeys ABI is heavily underspecified when it comes to asynchronous
kernel interactions, such as signal delivery [1], rseq [2], io_uring
worker threads, etc. Depending on the situation, we might reset the pkey
register to "allow all", or "allow acess to pkey 0 only", or use the
interrupted context's register (even though it is arguably unrelated).
It isn't always consistent across architectures either. 

As Thomas put it, "that's all broken". LPC feels like the right occasion
to summarise where we are, and explore potential solutions.
Unfortunately this topic isn't an obvious fit for any MC, so a Refereed
presentation seems like the least bad option.

Any thoughts/suggestions?

Thanks,
- Kevin

PS: Cc'ing ksummit@lists.linux.dev as there is no dedicated mailing list
for Refereed presentations.

[1]
https://inbox.sourceware.org/libc-alpha/fc31e639-f1eb-42d6-9dea-3665d9507f12@arm.com/
[2] https://lore.kernel.org/all/87ikexhbah.ffs@tglx/
