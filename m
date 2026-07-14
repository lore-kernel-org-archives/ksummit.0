Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87552366DA3
	for <ksummit@lists.linux.dev>; Tue, 14 Jul 2026 23:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784073301; cv=none; b=pHA7zjOw1v6NvBfRyCx76LmcZRgnYWDzUnIm5adtFa7/IvuunViINzVuM8xwKdy8q/PN80f9KzFluU7KTuNySZ4TjQ5eZp1TmAbHkF3itW0P4pFpAVeIlrOuLYUDXOd3lNfyI0x50Yc1OrT3A4/cq2qbd1DQ09tStGFC+90hrNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784073301; c=relaxed/simple;
	bh=2tKQYzV7DMMDRoeebKIKXQGdq0UGbKUF2kpZgtzBVvI=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Y/dheQkkBuGER9xVLuUZ/DrqiO5YsLAyt0vukJLmMUbkr2q2hJh+HI+XuF9PamIlFEyf8rtxqNxJOBCF3kkMaRf3Bq9JnO+grkn6NSmFGmzd/TpJou5OkgvQ0ngGT6kDM2ZvnHIcbMcAuucmgn6u7tETkgSwqxDgqXchOJLuaHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhqtgCjg; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhqtgCjg"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E193F1F000E9
	for <ksummit@lists.linux.dev>; Tue, 14 Jul 2026 23:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784073300;
	bh=nNxJ3h1O/85lHQgQhk6JZglznxtwnmxZEdxjD0eJ9XY=;
	h=Date:From:To:Subject;
	b=hhqtgCjgZI31zqdGiWd+iy4Xm8TngaS8KGbgSLbecMLF+90ZPuHRXT6/3wUGLe70v
	 f+7NK+KsNy75WdXYQkAH5EfphYWVwz7tVECAQPdPhUQ4oKixZ1uuw0lT6MM1FxAwfN
	 plU94DxWfwnFgvM1o+xx9bJKd/KLbACmn0kP7zBZ5kdx1zMkEhYnruiBnajfZ9fsx2
	 KYVZR8bjHw4wiyMwtAz7O8UIcIXEHhm+132CeudaALYjgHvwhJdqt6RZF+tCV/Y5hP
	 ko5z/hPrf0AQauVHoDKwMenlSHDHlEh6xSt4fmrynkZshd8iQFeg1/Xovcon6GGpli
	 ueVy+VTDavlvg==
Date: Tue, 14 Jul 2026 19:54:58 -0400
From: Sasha Levin <sashal@kernel.org>
To: ksummit@lists.linux.dev
Subject: [MAINTAINERS SUMMIT] Scaling our security process
Message-ID: <albMUqack9yMq0rF@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

Hi folks,

As everyone might have noticed by now, LLMs are finding real, exploitable bugs
at a growing rate, and the same tools are available to people who won't report
what they find. At the same time we're getting a stream of plausible looking AI
slop that wastes reviewer time.

Clearly this is not kernel-specific, but given where the kernel sits in the
stack this creates more of a problem for us. We spent decades saying security
by obscurity doesn't work and that being open makes us more secure. In practice
we leaned a bit on a version of it anyway: security by complexity. The code was
public, but it was complicated enough, and there was so much of it, that
finding a serious bug took rare skills and a lot of time. AI removes that
barrier. What's left is how fast we triage, fix, and ship.

With that in mind, I'd like to discuss:

1. Does security@ still work? It was built for a handful of carefully written
reports, handled start to finish by a small group of volunteers. That process
never really scaled before, and it won't scale now. Does it make sense to
separate the roles? let AI driven tooling handle intake, filtering, and
reproduction, and keep the humans for developing and coordinating fixes for
reports that survive triage?

2. Where does stable@ fit? Landing a fix upstream and calling it a day helps
nobody. Our users don't run mainline; they benefit when the fix shows up in the
kernel they actually run. Today a fix that goes through security@ often lands
in Linus's tree with no stable tag and no backport, sometimes not even to
recent LTS trees. If a security fix isn't in the LTS trees, is the bug actually
fixed? And should folks who care about these backports be in the loop while the
fix is being developed instead of finding out after the fact?

3. Do we want some sort of a shared distro security backport list? Every major
distro pays people to backport security fixes, and they all do the same work in
parallel behind separate walls. A list where upstream and distro security teams
write and review backports together, would pool that effort and land fixes
where users are. Sure, it allows for more leaks, but we end up causing these
leaks ourselves when we release a fix without working backports.

4. How can CVE tracking better serve our users? We assign a lot of CVEs, and
the common complaint is that consumers can't tell which ones matter for the
kernel they actually run. The CVE program's SADP pilot points at one answer:
downstream suppliers attach "affected / not affected / fixed in X" status
directly to upstream CVE records. Do we want to push the ecosystem in that
direction, and what should the kernel CNA provide to make it easy?

5. Do we need a policy on AI generated reports and patches? Other projects have
one. Can we tell AI assisted quality work from slop without burning out the
people doing triage?


I'd really want to steer away from the "AI is good/evil" discussion, and just
focus on the reality we have all seen through the past year or so.

-- 
Thanks,
Sasha
