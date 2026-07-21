Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1694B3B6BF4
	for <ksummit@lists.linux.dev>; Tue, 21 Jul 2026 23:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784675745; cv=none; b=JGP01gGcSmldWuAE6ycE2acmz8RDJhTLzNiPSxpE0z8QUCGWkjTYxX0ajWpvDBt+I48zJP8WUWWXZHrJlSo0mhjzLmWvk4/BMUBvUuriOBgkLMiIzB3bwXQ4O69mtsMhcQY7ZV/mdE7neD0KMlhrxiUEwcJe3n9fG3VHdPdTl5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784675745; c=relaxed/simple;
	bh=62FeqDMKz96xIELdXHsjvQUJgli63PEn1Ozc0gxejKQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Grb7V+dY5/ocIRQH5JdvMxYR6FwLsDopK8VOBPG6PHDau9XvQFkpH/ANxNXqkc2442FbZhED/+9Xr/q4yuFEbEHaVYjf5wGBLWRi/57ckfQcwXFy7zhJWQet8Np186cBnDlycOHVD2OBi9z2Tx3djNO8IVj5vewz55GUzD5lv/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=SQguYZFz; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="SQguYZFz"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 64D1ADF3;
	Wed, 22 Jul 2026 01:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1784675682;
	bh=62FeqDMKz96xIELdXHsjvQUJgli63PEn1Ozc0gxejKQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SQguYZFzMDMVaYv3DW8OeH2xuynzoLeh3u5mmzAB/4OG8vQl0A36s606D9iAQ2LC9
	 wnOrib/Jx9CFw8n6OV+Kic/Yyqa0pN3NuZvoB1ADl3oivfe/rpR6vp/TWlodnWtTl0
	 Qyp2z9QBHYSgzJQZzK+eBJchw+AW2+8JG7vtC8zM=
Date: Wed, 22 Jul 2026 02:15:40 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sasha Levin <sashal@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <20260721231540.GJ536385@killaraus.ideasonboard.com>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
 <alkFzdJobnnMjJ4v@laps>
 <20260716203810.GF1735001@killaraus.ideasonboard.com>
 <alo3tBAc_tBNgtg0@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <alo3tBAc_tBNgtg0@laps>

Hi Sasha,

On Fri, Jul 17, 2026 at 10:09:56AM -0400, Sasha Levin wrote:
> On Thu, Jul 16, 2026 at 11:38:10PM +0300, Laurent Pinchart wrote:
> > On Thu, Jul 16, 2026 at 12:24:45PM -0400, Sasha Levin wrote:
> >> On Thu, Jul 16, 2026 at 05:08:40PM +0100, Mark Brown wrote:
> >> >On Thu, Jul 16, 2026 at 11:28:25AM -0400, Sasha Levin wrote:
> >> >> On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
> >> >
> >> >> > - There are many first-time contributors coming in with LLM-generated
> >> >> >  patches.  At times, I could swear that every one of them is focused on
> >> >
> >> >> >  Our maintainers are not scaling to handle this new flood, and I fear we
> >> >> >  are going to see some unfortunate things merged.  One LLM-driven newcomer
> >> >> >  recently nearly succeeded in establishing himself as the maintainer of
> >> >> >  lib/.  How do we hold the line against this stuff while remaining open to
> >> >> >  new developers?
> >> >
> >> >> Shouldn't it be a merits question rather than a tools question?
> >> >
> >> >> If the commits are correct, does it matter if they were written with an LLM? we
> >> >> can insist more on supplying tests and demonstrating correctness, something we
> >> >> seem to be doing quite rarely right now.
> >> >
> >> > The issue (which a number of projects are facing) is as much one of
> >> > volume as anything else, the code generation machines are enabling the
> >> > generation and submision of volumes of code where things were previously
> >> > constrained by human factors.  It can turn into a bit of a DoS.  I don't
> >> > have any particularly bright ideas here but it's definitely a thing.
> >>
> >> Sure, we're seeing quite the increase in patch submissions, but I'm trying to
> >> argue that the issue isn't a new one: lack of maintainers, trusted reviewers,
> >> and maintainer burnout has been a topic at each kernel summit for as long as I
> >> can remember. AI just kicks it up a notch.
> >>
> >> My concern is that if we focus on the AI aspect, we still won't be solving the
> >> underlying issue.
> >>
> >> I'm hoping we can figure out how to get maintainers great tooling, testing, and
> >> community, rather than figuring out how to block a developer who uses LLM.
> >> Maybe AI would actually be a great catalyst for that as well?
> >
> > Didn't you argue in another part of this thread that we're in no danger
> > of being depending on AI for our processes ? I see a contradiction here.
> 
> Hey Laurent,
> 
> Not sure I follow here.

I may have misunderstood you. I thought you meant developing LLM-based
tools, but re-reading your comment I think you may have meant using
generative AI to develop tools.

> My thinking was that trying to improve our processes and tooling has been a
> topic for the past decade or two. One of the times we discussed it was the 2019
> maintainer's summit (https://lwn.net/Articles/799134/) where we decided to
> create the workflows@ mailing list to share our tooling and workflows. Not much
> of that has been happening :)
> 
> In the past year or two I was able to rewrite most of my ugly scripts, automate
> so many of the processes I used to do manually, and just improve so many
> quality of life items thanks to AI. Look even at the CVE process that was
> created last year: so much of the infrastructure used to drive it was created
> with AI.
> 
> Now, if AI suddenly goes away tomorrow it'll suck for me, but I'll just go back
> to writing my tools manually like I did before. I don't think that I somehow
> became "dependant" on it.

My concerns is largely about using generative AI to automate daily
tasks. Increase such usage will cause a dependence, and the withdrawal
will hurt the more usage grows.

-- 
Regards,

Laurent Pinchart
