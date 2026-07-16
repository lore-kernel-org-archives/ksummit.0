Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D070A2E11B9
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 00:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784161826; cv=none; b=Zy1B5U1cU86BV9gmGDsAE2lBoIB4KMglaoqSmhw8VeDXSgAKMaIPGzfQlSojMUipsRQne+fwE5mkcGVjBtAC0W0krJIjCvUurHIKf8+WwpdigpZi8hak5q4zyAH8jVm/5d7Pxwn6O5zG9sOu55hogcv1+dfPrC0M5B01pCjBjnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784161826; c=relaxed/simple;
	bh=ELzrGRp3WCZeKl7CW6TV3sncYroXB/ayyvZ5Q1oaxTo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RGvTEjX1hF4Tr+p+eDD47LTSghs1+ZPn/BwzeRhe6ZKp+1B+oGiCS0RD920xlEJJKWwG+rPC1PpMVH06XqDeSgq4ApfyonLv7UHFRSZcRRI7F/UhnO9TTS5IL8vnENjEoWoy9MkoXYEoiGCdIAwUVbciWDsHKKN5EsX6reYcbLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3A1yOeK; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3A1yOeK"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AB381F000E9;
	Thu, 16 Jul 2026 00:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784161823;
	bh=DMkd/5wmUko8su/p7pzEw6nQoUm0hUWRpUXwlwcgnuM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=n3A1yOeKGwC0pRIvjwplva+y0TBXTjwzXcqxUiUvMaDV7k7XfbNPEdb52FMNCxmPx
	 Ahtzb5qRehava3USyTrjBAnBZs+qW037+jkZyKq8XjU93n2ckODEkNKQKH3MLbpawl
	 jys7MbB7+ytFE00jXU4WHxKGpQDL+4NJQf3Hbrdv73Qh6MFCWdSgZhMXFVNRUZA/s4
	 Qi/gpOxAQzPLqZvUN4BN0I2NfeNkgzxeHUm8cOUdSC+vJJfpLlltjnirIBNoV9ZFBW
	 0c28+CA+g8K73dO7/9E0rwvjSCUYupxEzizIEC2yMnIY3ZKGw+mhvq7EizUVYLTEs7
	 uhDN9A5fDxFDQ==
From: SJ Park <sj@kernel.org>
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: SJ Park <sj@kernel.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux Kernel process
Date: Wed, 15 Jul 2026 17:30:13 -0700
Message-ID: <20260716003014.89963-1-sj@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <7ia4qzl45h20.fsf@castle.c.googlers.com>
References: 
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On Wed, 15 Jul 2026 16:55:03 +0000 Roman Gushchin <roman.gushchin@linux.dev> wrote:

> Sashiko and AI code reviews in general have gained a lot of traction in
> the kernel community over the last few months. I think it is fair to say
> that at this point there are no more questions about the usefulness of
> AI code review in general. However, there are many questions about how
> to improve current workflows and better integrate them into the kernel
> development process.

It is very helpful for me.  Appreciate your efforts again.

> 
> Some specific topics I propose we discuss:
> * Review of LTS patches and kernel releases.
> Currently, Sashiko reviews only publicly proposed changes, and it is
> completely up to individual maintainers whether to take the findings
> into account. By starting to review kernel releases and LTS backports,
> we can likely significantly improve security and minimize the number of
> regressions. However, this adds to the workload of maintainers, and we
> need to agree on a specific process. For example, we could agree to
> bring up only critical and high-severity issues and expect the authors
> of corresponding changes to provide a fix-up or explain why it is not an
> issue.

I once made a mistake in a manual stable backport of a patch that was failed to
be automatically backported by the stable kernel maintainers.  I was able to
fix it because Sashiko found and reported the mistake, because I was Cc-ing a
mailing list that onboarded to Sashiko.  So I can show the clear advantage of
LTS patches.

But I'm also concerned if I will have to read and (optionally) reply to same
Sashiko findings that I already decided to ignore for each of the stable
backports.

Doing that for each release could also be useful at finding issues made during
the merges into the trees towards the mainline.  But I'm concerned if this can
be seen like ignoring each subsystem's decision about Sashiko.  My previous
concern about a case that I have to read Sashiko's comment that I already
decided to ignore again.  Probably just one more time, so less concerned than
the LTS case, but still concerned and better to be avoided.

> 
> * How to maintain the long-term stability of Sashiko?
> Several kernel engineers and maintainers have rightfully expressed
> concerns about relying on infrastructure provided by a single company
> without clear formal guarantees. It would be great to discuss what a
> more sustainable model could realistically look like and how we might
> get there.

I personally not really worrry about this at this stage.  To my understanding,
it is already Linux Foundation's open source project, and can learn with any
LLM including open models on any setup.  But, if this is a real concern, I'm
wondering if moving the entire infrastructure to Linux Foundation (like
kernel.org) and using an open model for the public instance can relieve the
concern.

I'm bit concerned if using an open model will increase the false positives of
Sashiko.  But I feel like that would still be useful for small subsystems
having no many reviewers.  And we might be able to let more people help
improving Sashiko prompts by running a setup same to the public one on their
local setup?  Like normal open source projects do.

> 
> * Handling of pre-existing bugs.
> Currently, Sashiko reports pre-existing bugs alongside new issues
> (while trying hard to highlight that these issues were not introduced by
> the proposed change). This approach comes with significant pros (a
> steady stream of bug fixes) and cons (additional noise and workload for
> maintainers). I am considering a database of pre-existing issues to
> ensure they are reported only once (or once per year), with an option
> for the respective maintainers to flag them as false positives. This
> will also provide maintainers an access to a deduplicated and ranked
> list of potential issues in their subsystem’s codebase.

I know Sashiko has evolved to handle this issue much better than the initial
days and appreciate the developers' efforts.  But, still it is true it still
has rooms to improve.

I think having the database will be super helpful.  I personally show its value
more on reducing duplicated reports.  And in this case, I would be less
bothered and even prefer repeated reporting if it mentions it is a duplicated
reports of an issue that I can check later on the database.

The false positive flagging would also be nice.  For a case that even the
maintainer can mistake or change minds, having a way to revoke it would also be
nice.  For cases that maintainer wants to fix in long term, but with low
priority, having the score would also be helpful.

> 
> * Prompt development and testing.
> Currently, prompts are maintained in two GitHub repositories and are
> changed manually or with the help of AI coding agents. However, there is
> no established practice for testing them, especially across various LLM
> models. At the last LSFMMBPF conference, there was a discussion about
> moving them into the kernel tree. I see some pros and cons to this
> approach, but the ownership and testing models are not entirely clear.

I find no reason to say no to the idea of having the prompts inside the kernel
tree.  I think those are at lest need to be hosted on some trusted safe place,
like kernel.org.

If we have the trusted found issues database, and if we have ways to give
feedback to issues.  Maybe we could use the feedback to the issues as a way to
measure if it is getting better or worse?

> 
> * Interactive mode.
> Many engineers have asked for some sort of interactive mode where they
> can ask additional questions or follow up on the initial feedback from
> Sashiko. I plan to add this to the local review mode, but for the
> central public instance, it is problematic from both security and token
> cost perspectives. Sashiko could analyze false-positive cases reported by
> engineers, attempt to verify them, and automatically suggest specific
> prompt adjustments. However, there is a non-trivial number of cases
> where people are wrong to dismiss AI findings. How should we treat these
> cases?

I really wish this feature.  Top two use cases I want to be in real are:

1. Applying patch on specific tree.
2. Review of a fixup patch.

I agree the cost and security are concerns.  I wonder if we could have a kind
of limitation for the request frequency and scope to mitigate those issues.
For example, we could restrict the specific tree for use case 1 to trees hosted
in kernel.org or signed by known and trusted developers.

> 
> Thanks!


Thanks,
SJ
