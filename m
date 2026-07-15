Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com [95.215.58.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4850B2D8795
	for <ksummit@lists.linux.dev>; Wed, 15 Jul 2026 21:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784150499; cv=none; b=hP85u1xpYNNjLmAFieqvvXvcBEjMZy6ZeLhs6hHvFgX4bA7XFqCDNoqu0ynkuzvS0AiixJ5HgHpOaMxds+ylNx2GXur1KGlglZLBQtoQYF50WX7nCT+kn+ua+MdUzCOiV1rbk+5Zcaucybse+IR5CFs0ukCZlgKa6Anjcsy44hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784150499; c=relaxed/simple;
	bh=HJvZI0ShRswWTCBzGufakdnRgV23+CVXOmLqWk3Ydps=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=mDbRxqss4YjObQv9hVmDrFBv1AO6wLYfNO8q/QtXjQsTScLXARUrloR7GrZAAuZE9nXZvmeaSZmsuzjcBZoQ2CDbl/6ct2g2D3FER2fjLk++J81lYNPPETjvkpklnYGMuyXBdIuqyOJ+YPqjTO94ggrwj632NPY4617Vluv9ib8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=smibgRsu; arc=none smtp.client-ip=95.215.58.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="smibgRsu"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1784150494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HJvZI0ShRswWTCBzGufakdnRgV23+CVXOmLqWk3Ydps=;
	b=smibgRsuNzhkrCJUc37+WPfC3jbCdwZPqise39+NYOwnHzV3mP1pgCXVZN88+QslOCS1R/
	7lVVw6bpSxfThMJjekzhcOIKqvan+X2P4IKzMIlzNViTh+mIq518Et46BoWvQU6nTDyyK3
	x0HGjyWFU27di0sAfupskcE+qMzRg48=
From: Roman Gushchin <roman.gushchin@linux.dev>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
In-Reply-To: <20260715185757.GA191552@nvidia.com> (Jason Gunthorpe's message
	of "Wed, 15 Jul 2026 15:57:57 -0300")
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
	<20260715185757.GA191552@nvidia.com>
Date: Wed, 15 Jul 2026 21:21:03 +0000
Message-ID: <7ia4pl0oymo0.fsf@castle.c.googlers.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Migadu-Flow: FLOW_OUT

Jason Gunthorpe <jgg@nvidia.com> writes:

> On Wed, Jul 15, 2026 at 04:55:03PM +0000, Roman Gushchin wrote:
>> * Handling of pre-existing bugs.
>> Currently, Sashiko reports pre-existing bugs alongside new issues
>> (while trying hard to highlight that these issues were not introduced by
>> the proposed change). This approach comes with significant pros (a
>> steady stream of bug fixes) and cons (additional noise and workload for
>> maintainers). I am considering a database of pre-existing issues to
>> ensure they are reported only once (or once per year), with an option
>> for the respective maintainers to flag them as false positives. This
>> will also provide maintainers an access to a deduplicated and ranked
>> list of potential issues in their subsystem=E2=80=99s codebase.
>
> I would really like a syzkaller like dashboard of all these
> pre-existing issues and a nag/summary email so they actually get
> fixed.
>
> I've gone and fixed a bunch on my own, mostly out of fear that they
> will just disappear and be lost, but it is an annoying urgency. I'd
> rather have as a giant todo list (that maybe other people could help
> with too)
>
> Often alot of tokens are spent to find these things, it feels wrong
> that they are effectively lost in the endless stream of reviews..
>
>> * Prompt development and testing.
>> Currently, prompts are maintained in two GitHub repositories and are
>> changed manually or with the help of AI coding agents. However, there is
>> no established practice for testing them, especially across various LLM
>> models. At the last LSFMMBPF conference, there was a discussion about
>> moving them into the kernel tree. I see some pros and cons to this
>> approach, but the ownership and testing models are not entirely clear.
>
> Having them in the kernel always felt better to me, I wonder what the
> cons are.

A minor problem is that for prompts there is no point to stick to the
kernel release schedule (merge window, etc), which will only slow down
things. So it requires Linus being onboard with the idea to accept these
pull requests all the time.

But also I hope that eventually (and I work on it) we can at least
enhance prompts in a semi-automatic way, based on the human feedback in
email replies to sashiko reviews. It's not trivial, requires
verification and likely a human in the loop at least initially,
but I hope that mid-term it might turn the whole process into
more-or-less continuously self-improving system.

Having prompts in the kernel tree will also have an interesting
side-effect: newer models will learn on SOME version of these prompts
and then get a newer version as a prompt. Idk how it will play out.

That said, I'm not against putting prompts into the kernel tree at all.
I'm just saying the testing and ownership questions are real and need
a real discussion.

>> Many engineers have asked for some sort of interactive mode where they
>> can ask additional questions or follow up on the initial feedback from
>> Sashiko. I plan to add this to the local review mode, but for the
>> central public instance, it is problematic from both security and token
>> cost perspectives.=20
>
> Could there some way to download the entire context from all the passes
> to a local environment and have a local llm chew on it to answer
> questions?

Yeah, it's an option I though about. Like a download button which just
dumps all relevant context as an .md file, for example.

Thanks!
