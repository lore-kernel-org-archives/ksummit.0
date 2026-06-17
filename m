Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF98C2C3266
	for <ksummit@lists.linux.dev>; Wed, 17 Jun 2026 13:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781704260; cv=none; b=ivPIRdhAEDOerykX1R+YWLMfXfUBIXEZpWqd0ieXfSd0kaLYTcEIMK+U6VYF4dluC6DVRTwthXqFkC/aiLfOnBSpZPmebwxq8VM5zmx88ZzgJ38hUcmvsIVd0DT4c3z7NiAYcQQmp3vd42xLx9sUnoCeUz6kAt41M8OvAQFoYvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781704260; c=relaxed/simple;
	bh=DqUisB+tNDJrVMasX7OkD7gVv9s8dVoyXYQisoG8l9U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fLZyConx3KyJq4EQNgF/Nnq1JUBLSXkyM7a7lHTHlS/sG/EdqoJBqCBkAlKuF+cytYvQa6kgNevTdXrqe5wCVi5d4Aom1LENcM1qvBZ1s0z7r+Wo44VYsFiQHTSYdpRtcE0UMO/AayaXltHv3HnAO1T7sRUi9hFlHQvxPqWmLOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=QJmrvoHK; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="QJmrvoHK"
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88657483F;
	Wed, 17 Jun 2026 06:50:53 -0700 (PDT)
Received: from [10.57.81.10] (unknown [10.57.81.10])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6054C3F915;
	Wed, 17 Jun 2026 06:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1781704258; bh=DqUisB+tNDJrVMasX7OkD7gVv9s8dVoyXYQisoG8l9U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QJmrvoHKxRfz9AlEpRg7w/dOQu/V5KGUNWg8VZokjr1gkhpkug8OcVHI0j1l7zS+V
	 mLJ4BLRcOj+jmbZyyyLdAItBrC9IenQ0eavPptScNXJdIp254KSl6I0sjsTHwmNhjd
	 2fOtG2XkyK79S+M+hPd3oOSrQbw9g/C5S84wPXNQ=
Message-ID: <58b1128c-2607-4063-9f14-827262c10140@arm.com>
Date: Wed, 17 Jun 2026 15:50:52 +0200
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [LPC] pkeys ABI
To: Vlastimil Babka <vbabka@suse.com>, Florian Weimer <fweimer@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>
Cc: Yury Khrustalev <yury.khrustalev@arm.com>,
 =?UTF-8?Q?Stephen_R=C3=B6ttger?= <sroettger@google.com>,
 Pierre Langlois <pierre.langlois@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jeff Xu <jeffxu@chromium.org>,
 Dmitry Vyukov <dvyukov@google.com>, Jens Axboe <axboe@kernel.dk>,
 ksummit@lists.linux.dev, Mark Rutland <Mark.Rutland@arm.com>
References: <20082b1d-a4c3-4852-b48e-aeaed4f6acf2@arm.com>
 <34eb61f0-f7ea-40b7-815b-def48f0e1bfa@suse.com>
From: Kevin Brodsky <kevin.brodsky@arm.com>
Content-Language: en-GB
In-Reply-To: <34eb61f0-f7ea-40b7-815b-def48f0e1bfa@suse.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 17/06/2026 15:06, Vlastimil Babka wrote:
> On 6/17/26 14:57, Kevin Brodsky wrote:
>> Hi,
>>
>> I am considering submitting a Refereed presentation proposal for LPC,
>> but I would first like to check if it makes sense to everyone in To/Cc.
>>
>> The pkeys ABI is heavily underspecified when it comes to asynchronous
>> kernel interactions, such as signal delivery [1], rseq [2], io_uring
>> worker threads, etc. Depending on the situation, we might reset the pkey
>> register to "allow all", or "allow acess to pkey 0 only", or use the
>> interrupted context's register (even though it is arguably unrelated).
>> It isn't always consistent across architectures either. 
>>
>> As Thomas put it, "that's all broken". LPC feels like the right occasion
>> to summarise where we are, and explore potential solutions.
>> Unfortunately this topic isn't an obvious fit for any MC, so a Refereed
>> presentation seems like the least bad option.
> What about the Kernel Summit "[TECH TOPIC]" track? see
> https://lpc.events/event/20/abstracts/
>
> Seems like this would fit perfectly.

That was my initial idea, but I'm not sure whether this topic is broad
enough for a Kernel Summit slot. If people think that's the case I'm
more than happy to make a submission on the Kernel Summit track.

Maybe a BoF is really the right format, as James suggested.

- Kevin
