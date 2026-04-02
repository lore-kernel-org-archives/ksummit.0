Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2156E175A92
	for <ksummit@lists.linux.dev>; Thu,  2 Apr 2026 04:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775105988; cv=none; b=CcUMiKV4afbZBV1iqRGsfPZ/Un1IAaTk0LGoL6Z5P5MoVzUDo9TJYJaQrSxnbe9EwDVKLLe9Ze7kuC+Kts3Ca5Yx4A1i/XuF2kzEF6svlnNbYcWKyyNZotr7U79Uc3rrW/MdAq1GbBiK/PcC3fdjyaDyyECXEb63G1/UzmA/BC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775105988; c=relaxed/simple;
	bh=YpaJgSGkuLs9i58lN8HdPeljhJ5uinweWLCkpz0o2oQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=thkaLhzPav39TCCk+wkbtDW0hqaXvwaTLNnYo9tUlI3Imkv4Y30msq9kiP7osGUhgxscfWdpwotEkCP4KR8tKN51+PympGE2BsomLGwiJjbffo+0T+7uCyLtLZ9rZDFO+LiCoZA4+7dw3GtMkJ7Tx9lVFFz4FssH5NUCWW4G+cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=QpsVf9eT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="QpsVf9eT"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4379C19423;
	Thu,  2 Apr 2026 04:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1775105987;
	bh=YpaJgSGkuLs9i58lN8HdPeljhJ5uinweWLCkpz0o2oQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QpsVf9eTUa3KGIQzKqYQyc0b6oSg+y6xwN3fZKakPcjMq6uJpSn4MDgiCgoYWffIr
	 xdUl5IDXBzvH0CrBVG9EOj0yIIWx55GfSJp6um4EWCv3o+Gloi50+fG7qHRBPgKfkx
	 GL/unt3gkRObXgCMlGJJ8NXYKXHxCQqEALbdMgF0=
Date: Thu, 2 Apr 2026 00:59:46 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Cc: users@kernel.org, ksummit@lists.linux.dev
Subject: Re: slowly decommission bugzilla? (was: Re: kernel.org tooling
 update)
Message-ID: <20260402-expert-maroon-partridge-f77f94@lemur>
References: <20251209-roaring-hidden-alligator-068eea@lemur>
 <b93eae05-5e40-42f0-8256-d46d411008a4@leemhuis.info>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b93eae05-5e40-42f0-8256-d46d411008a4@leemhuis.info>

On Thu, Feb 26, 2026 at 09:44:32AM +0100, Thorsten Leemhuis wrote:
> Lo! I wonder if we should slowly and publicly start decommission
> bugzilla in areas where it's not working well today. I have a few
> reasons for that:
> 
> > It may be time to kill bugzilla:
> > 
> >     - despite periodic "we're not dead yet" emails, it doesn't appear very
> >       active
> >     - the upgrade path to 6.0 is broken for us due to bugzilla abandoning the
> >       5.2 development branch and continuing with 5.1
> 
> * It looks like we will decommission Bugzilla anyway, and a replacement
> is afaics likely quite a while (years?) away -- so what is there now
> will likely be kept running for a while.

Thank you for starting the thread -- it's been burning a hole through my inbox
and I honestly wasn't trying to ignore it. :)

I've read through it multiple times, and I would like to put forward the
following proposal for bugzilla replacement and bug tracking in general, now
that I have a better idea in my mind.

First, a bit of background info.

# git-bug

The git-bug project aims to keep bug tracking integrated into the git
repository itself. It's not a new project -- it's been around for a while,
though its development has been advancing in spurts. The fundamentals are
sound and the design is robust. It's an active project with ongoing
development:

https://github.com/git-bug/git-bug

# b4 bugs

After some hacking, I managed to do the following things:

1. start using git-bug for b4's own bug tracking
2. integrate git-bug with lore via "b4 bugs", allowing the following:

    a) easy way to convert a mailing list discussion into a bug entry
    b) keep bugs synced with lore discussions on an ongoing basis
    c) use a TUI to manage bugs via "b4 bugs tui"

   "b4 bugs" is still in early development, but I have a very small demo here:
   https://asciinema.org/a/890396

3. add a simple git-bug viewer into cgit, so bugs can be accessed and viewed
   online; e.g. here's one for b4 itself:
   https://git.kernel.org/pub/scm/utils/b4/b4.git/bugs/

The goal is to introduce a simple way to keep discussions public but also
allow for turning them into actionable bug reports with their own lifecycle
management -- open, closed, needinfo, worksforme, etc.

# new bug reporting

This part remains to be done yet, and I need everyone's input here. I've read
some of the suggestions in this thread and I'm generally aligned with them. In
my mind, bug reporting would go as follows:

- anyone can go to a site like bugs.kernel.org, which will be a simple bug
  entry form of the style:

  1. tell us what happened
  2. attach any files you want to attach
  3. tell us how we can contact you (with round-trip verification)

- the report then goes into a review queue that can be pre-processed by an LLM
  to help immediately weed out non-actionable items: spam, reports for tainted
  kernels, reports for distro kernels, etc. The agent can reply with
  cookie-cutter answers to those with a suggested course of action:

  1. Please report this to your distro here: {url}
  2. Sorry, we can't help you because you're running a binary-only driver
  3. This report is for kernel 2.6, what is even happening?

- the agent can also try to figure out which subsystem this report is for
  based on the details of the report; this is where various tools to extract
  info from dumps would come in handy -- though I expect final human-based
  review will be required for this to be not waste people's time

- finally, the report can then either be mailed straight to the subsystem
  maintainers using MAINTAINERS info, or go into another holding queue to be
  reviewed by a human caretaker -- I'm happy to discuss details here

- the maintainers can their either handle this directly via email without
  turning the report into a bug entry, or they can use the above described
  tooling to manage the bug report's lifecycle via git-bug/b4 bugs

This is my "bird's eye view" proposal, and I'm happy to now refine this and
find a solution that would be actually useful to maintainers.

Best regards,
-- 
KR
