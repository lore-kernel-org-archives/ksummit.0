Received: from mta0.migadu.com (out-185.mta0.migadu.com [91.218.175.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0EF1ADC97
	for <ksummit@lists.linux.dev>; Sat,  5 Sep 2026 22:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788648728; cv=none; b=ShLA11L22UkjOqWz88O9HXC+87JAqIzQWLTFUrPLYvCbtcjK4NwGItF8F2rUzx7sXNpwFiGEhI/u8uYSRHjdxdsPxc2813oiLIg3gPVetfcT0Q820BVvf8zAmpjsexJraa8AOyXCvySupIIQM9KLnOE6zzvcFAOYoQDZpuDVw5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788648728; c=relaxed/simple;
	bh=1Xv9bD0Y9deKp0Tow+YjkmoK6Ax6V2mWwBp/N/vFvMc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=SItiI2iS26czZ/YNm/4Iwda9GpK5ef32dHH62CtisgKtThl8ZN+VvhM7/aEsE7MZOFvTe/mE9gsxnC+rLDnY+DuWpF/EC47lfH9Lcia5rm+vdd/opPwGuEllGxz4B3U8/r51yu3CKJBgiDwmk7CvsC/5VrPnBrIbucWOWfz1/V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=LhIyt+JQ; arc=none smtp.client-ip=91.218.175.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="LhIyt+JQ"
X-Envelope-To: ksummit@lists.linux.dev
DKIM-Signature: a=rsa-sha256; bh=1Xv9bD0Y9deKp0Tow+YjkmoK6Ax6V2mWwBp/N/vFvMc=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1788648723; v=1; x=1789253523;
 b=LhIyt+JQXGPx8VmTqnBLWlsRTjPsTVjC9Nve2PMuTOOKfJYU7FoWZG1fD6eezXPiL8S2nb6H
 mgbWjHmzn4czNv7JkNEVYkyThD9ML1Vr+5uNiHlF1+IoCsBDf0sTUSQM8fMC6kfHPSY0AfGXpqs
 32MeqOpHwKvLqRZW/7zUL/ck=
X-Envelope-To: ksummit@lists.linux.dev
Received: by smtp.migadu.com with ESMTPS id d9697c330623cb3e;
	Sat, 05 Sep 2026 22:52:02 +0000
X-Mizu-Trace-ID: d9697c330623cb3e
X-Migadu-Flow: FLOW_OUT
From: Roman Gushchin <roman.gushchin@linux.dev>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,  "Luck, Tony"
 <tony.luck@intel.com>,  "ksummit@lists.linux.dev"
 <ksummit@lists.linux.dev>
Subject: Re: How to credit Sashiko with a Reported-by tag?
In-Reply-To: <20260904184904.7c62db0868ccb7d86fac3fea@linux-foundation.org>
	(Andrew Morton's message of "Fri, 4 Sep 2026 18:49:04 -0700")
References: <SJ1PR11MB6083385BE00A70389C211177FCB52@SJ1PR11MB6083.namprd11.prod.outlook.com>
	<CAHk-=wgyDUCS-vz4fb1_0J9oMKiOooxsFc036x0RZa-sFcXfMg@mail.gmail.com>
	<20260904184904.7c62db0868ccb7d86fac3fea@linux-foundation.org>
User-Agent: mu4e 1.12.12; emacs 30.2
Date: Sat, 05 Sep 2026 15:51:55 -0700
Message-ID: <87h5k3nwfo.fsf@linux.dev>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

Andrew Morton <akpm@linux-foundation.org> writes:

> On Fri, 4 Sep 2026 13:18:35 -0700 Linus Torvalds <torvalds@linux-foundation.org> wrote:
>
>> On Fri, 4 Sept 2026 at 11:27, Luck, Tony <tony.luck@intel.com> wrote:
>> >
>> > I see 30 different variations so far. Most popular are:
>> >
>> >     211     Reported-by: Sashiko <sashiko-bot@kernel.org>
>> >     142     Reported-by: sashiko-bot <sashiko-bot@kernel.org>
>> 
>> You missed a few other variations:
>> 
>>     Link: https://sashiko.dev/#/patchset/...
>> 
>> or
>> 
>>     Closes: https://sashiko.dev/#/patchset/...
>> 
>> which are sometimes - but certainly not always - accompanied by
>> Reported-by lines.
>> 
>> And quite a few times I've seen Sashiko mentioned just in the
>> free-form prose section.
>> 
>> Honestly, I don't think it matters which pattern ends up being used.
>> It's not like the bot is going to be upset about the different
>> spellings, so all that matters is that people see "oh, Sashiko did
>> something here".
>
> There are people (Roman is one) who trawl the commit logs to get an
> understanding of how effective/useful Sashiko is being.
>
> I expect that some standardization in how changelogs reference Sashiko
> might help in this work.  Roman?
>
>
> (Last I checked, nearly 1000 commits mention Sashiko.  God that's a lot
> of bugs we either fixed or didn't add!)

1300+ as of now, but those are mostly pre-existing bugs in the codebase,
not bugs which are prevented, it must be a larger number. Prevented issues
are often mentioned in patchsets changelogs (e.g. v3: fixed X, Y and Z
[Sashiko]), but dropped before merging.

> (And nice statistics for this will perhaps help persuade Google to keep
> funding the thing)

I'd love to have a more accurate number of prevented issues to better
characterize the value for google and potential other sponsors, but it
doesn't seem to be realistic, partially because there are many
individual and corporate instances of sashiko being used.

In terms of a specific format of commit log, I agree with Linus, it
doesn't really matter. Luckily Sashiko seems to be quite a unique letter
combination, so grep'ping is really easy.

Thanks
