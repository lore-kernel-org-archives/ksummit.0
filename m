Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B852FDC57
	for <ksummit@lists.linux.dev>; Wed, 15 Jul 2026 17:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784138183; cv=none; b=OepSYA0WLeLqtN+ryOF/Xl5/qgDjKTCRKuVhisaFNrL6ZEXLQGb1ZLHsMmssNTwNs0fOvL6o0vwhe4kCFoj29hN/BUomg8R+VVXLSGUAAxnGPvyPVVbkr7e9YtcB/sPtPgeOsdf+4M5ktSfLDAcYXF+FrC75gL4+d0g5I5BDP3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784138183; c=relaxed/simple;
	bh=9YrssN6VIuMp2XqC90iJwFMO5KAI2OZfic7UsUYOTiA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IPsM+/UYlJxDW7BVFDhBdrd0eJD5zG7YTWxXVXeE5yOjkPZyC8s4xrPX8vWQOmqV79VGJEuITVgk8YVZBDbmDCKj4MK4PsvZsBOOXNxhpkpY9kRD82xyFs9tUmBI5w45Ryuff0WAuotEZW1cfm4yPBU//IqGib+4pZ7JxxTwWvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SN857/ku; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN857/ku"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AE761F000E9;
	Wed, 15 Jul 2026 17:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784138182;
	bh=vOepxq8Db+NozCaB7G0JihVHNIVXm7RVAtvSthV6jVw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=SN857/ku8ZVide+vPZGwDCGbrFOIlTqOd5vzyDWCnBLwdX036O1W2xeUEDxcr67DI
	 KMbG2n3zZkhs+DKrMfRHAz7B32+ImWju1RWleN95MkG2a6aRZpjC2TRYbZUSMsVlse
	 dltXiu3b1zhWmwpj0ziImCWZlSkxDDH0crF1N13HjUE/93LQNf7nOBpXSjZjNniJUC
	 X8QD4S1BYK900sqCG3a4zt+CIFiCcV/0lAMqeV+As5SfVfKFj9KGbIiVgcu7nqJunP
	 5FQN32eawpiFNEgWJDTg1lzW2vlGSnnH96frdzZCWDKCKQCXUhoG2fAhZP8ZoBzHDY
	 kar4u/rggnxqA==
Date: Wed, 15 Jul 2026 19:56:19 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <20260715195619.6174925f@foz.lan>
In-Reply-To: <7ia4qzl45h20.fsf@castle.c.googlers.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 15 Jul 2026 16:55:03 +0000
Roman Gushchin <roman.gushchin@linux.dev> wrote:

> Sashiko and AI code reviews in general have gained a lot of traction in
> the kernel community over the last few months. I think it is fair to say
> that at this point there are no more questions about the usefulness of
> AI code review in general. However, there are many questions about how
> to improve current workflows and better integrate them into the kernel
> development process.

Heh, I was about to propose the same theme. IMO, we do need to discuss
more about AI, specially after the discussions related to linux-media
and Sashiko that it is happening those days.

---

Besides code review, there's one area I also want to propose some
discussions:=20

Use AI to fix documentation issues
----------------------------------

If we run:

	$ scripts/kernel-doc -Wall .

it will generate a ~77k warnings due to bad documentation. This
includes files that are not currently on Documentation, but even if
we pick just the ones included there, the number is really big.

Several of them are there since the beginning, and we ended removing
-Wall from kernel-doc generation to avoid a too noisy documentation
build.

I'm proposing to discuss using AI to at least partially address
the documentation warning noise and then finally enable -Wall for
kernel-doc warnings.

---


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

Makes sense to me, but I would start with very specific prompts to
check issues where LLM is particularly good on checking, and where
compiler warnings don't report.

One such area is to check error paths: Kernel works reasonably
well when registration/memory allocation/resource allocation/...
succeeds, but there is a large number of fix patches that sometimes
take several years to be applied related to error condition
failures.

Also, if we're willing to do that, it is probably be worth to
have something similar to what we had in Coverity: an interface
where maintainers could navigate at the found issues, with their
fixes, ordered by priority, and eventually tag as false positive,
preventing future reports of the same issue.

> * How to maintain the long-term stability of Sashiko?
> Several kernel engineers and maintainers have rightfully expressed
> concerns about relying on infrastructure provided by a single company
> without clear formal guarantees. It would be great to discuss what a
> more sustainable model could realistically look like and how we might
> get there.

IMO, the solution is to use open source LLM models, preferably in
a way they could run outside the cloud.

> * Handling of pre-existing bugs.
> Currently, Sashiko reports pre-existing bugs alongside new issues
> (while trying hard to highlight that these issues were not introduced by
> the proposed change). This approach comes with significant pros (a
> steady stream of bug fixes) and cons (additional noise and workload for
> maintainers).=20

> I am considering a database of pre-existing issues to
> ensure they are reported only once (or once per year), with an option
> for the respective maintainers to flag them as false positives. This
> will also provide maintainers an access to a deduplicated and ranked
> list of potential issues in their subsystem=E2=80=99s codebase.

Makes total sense to me.

>=20
> * Prompt development and testing.
> Currently, prompts are maintained in two GitHub repositories and are
> changed manually or with the help of AI coding agents. However, there is
> no established practice for testing them, especially across various LLM
> models. At the last LSFMMBPF conference, there was a discussion about
> moving them into the kernel tree. I see some pros and cons to this
> approach, but the ownership and testing models are not entirely clear.

I don't think it is a good idea to move to the Kernel tree, but
it makes sense to have them on a shared repository (or database)
where each maintainer can be able to adjust the prompts as needed.

For this to work properly, IMO we need an interface to be able to
trigger a test on Sashiko using the new prompts and see the output
differences before/after the changes, before committing it to
production. Perhaps we can use github/gitlab workflows for such
purpose, I dunno.

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

An interactive mode is important, together with the capability of
running it locally on affordable GPUs. For this to work, we may need
to have a Linux-Kernel sashiko trained model that could be executed
locally with a limited number of active parameters.

Thanks,
Mauro
