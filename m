Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB66C35F5E3
	for <ksummit@lists.linux.dev>; Wed, 15 Jul 2026 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784134538; cv=none; b=AOM36OK9SG0gDzDKKOTn46BSkUX0IRr9vjHQ/cqgGXBawdbErIEo44BQPjxrtUIKh+vLM5k228fC3pwftlnKDkL9gaJ0k6AXdCGiBuC/A5dyWLXCxbDFdjWzr65wgXQYkq6OFBt7WBfT0DoePmJGq4sTFiRqZNwUk4bm2jrFKL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784134538; c=relaxed/simple;
	bh=H7GiBrgxDUX5IrWgZhDpsg2pz/m9JvL4GWLWcjnn+hg=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=PE7Vu4oG/jDIiNcz+gDvV1O9rkBDqvmNdV32/UR3RNYXIKd1oKI64jorBJcCUvtbH8bY98urIy/Kx1HcR0sStn6DBYsS8Tvk3DaMl9UHekr2cps08vVMbBQTvscQ3zCIw+rt3+ykppBipVOMk5qYRmopFd87Rg9mm2unf8llPcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=lbkoLlJs; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="lbkoLlJs"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1784134531;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=H7GiBrgxDUX5IrWgZhDpsg2pz/m9JvL4GWLWcjnn+hg=;
	b=lbkoLlJsGeJcAQWMml3hQ2Cw6h5UNoZJtv5U+urBRZYY8K2tpqyOzOiw9WsL1yhsgYmeFR
	gYAYsOmGwpS0QMUK3sCOdSw2e5HTqzLRuhTJty9CpIYpqtbRk/qPVEFQyJjVGFZnH3yEpK
	w62Jns3qyXpjVmjPSQ7D8OqzqJDYlrw=
From: Roman Gushchin <roman.gushchin@linux.dev>
To: ksummit@lists.linux.dev
Subject: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Date: Wed, 15 Jul 2026 16:55:03 +0000
Message-ID: <7ia4qzl45h20.fsf@castle.c.googlers.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Migadu-Flow: FLOW_OUT

Sashiko and AI code reviews in general have gained a lot of traction in
the kernel community over the last few months. I think it is fair to say
that at this point there are no more questions about the usefulness of
AI code review in general. However, there are many questions about how
to improve current workflows and better integrate them into the kernel
development process.

Some specific topics I propose we discuss:
* Review of LTS patches and kernel releases.
Currently, Sashiko reviews only publicly proposed changes, and it is
completely up to individual maintainers whether to take the findings
into account. By starting to review kernel releases and LTS backports,
we can likely significantly improve security and minimize the number of
regressions. However, this adds to the workload of maintainers, and we
need to agree on a specific process. For example, we could agree to
bring up only critical and high-severity issues and expect the authors
of corresponding changes to provide a fix-up or explain why it is not an
issue.

* How to maintain the long-term stability of Sashiko?
Several kernel engineers and maintainers have rightfully expressed
concerns about relying on infrastructure provided by a single company
without clear formal guarantees. It would be great to discuss what a
more sustainable model could realistically look like and how we might
get there.

* Handling of pre-existing bugs.
Currently, Sashiko reports pre-existing bugs alongside new issues
(while trying hard to highlight that these issues were not introduced by
the proposed change). This approach comes with significant pros (a
steady stream of bug fixes) and cons (additional noise and workload for
maintainers). I am considering a database of pre-existing issues to
ensure they are reported only once (or once per year), with an option
for the respective maintainers to flag them as false positives. This
will also provide maintainers an access to a deduplicated and ranked
list of potential issues in their subsystem=E2=80=99s codebase.

* Prompt development and testing.
Currently, prompts are maintained in two GitHub repositories and are
changed manually or with the help of AI coding agents. However, there is
no established practice for testing them, especially across various LLM
models. At the last LSFMMBPF conference, there was a discussion about
moving them into the kernel tree. I see some pros and cons to this
approach, but the ownership and testing models are not entirely clear.

* Interactive mode.
Many engineers have asked for some sort of interactive mode where they
can ask additional questions or follow up on the initial feedback from
Sashiko. I plan to add this to the local review mode, but for the
central public instance, it is problematic from both security and token
cost perspectives. Sashiko could analyze false-positive cases reported by
engineers, attempt to verify them, and automatically suggest specific
prompt adjustments. However, there is a non-trivial number of cases
where people are wrong to dismiss AI findings. How should we treat these
cases?

Thanks!
