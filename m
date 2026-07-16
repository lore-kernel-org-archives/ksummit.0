Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2F1391835
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 20:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784234301; cv=none; b=E9k2sYbjtlAxsrHhi62VSMKmEGUefQ3gMbEBc/rCu64Xo/tagxPMse2NVryIE+5bEu3FabHWdnIJH1/VxLTw+UWbUI/N7NRZuYq56x0LTait8PWgHbgOI40tvJxbiwEMYk5UpoPW+3ILJzzx0o1obpqZBlXRnZNbsHU4cbIkq2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784234301; c=relaxed/simple;
	bh=69L1/sJaSwCb1oEhMWG4JYY8boBXoXLnyEexKu49Dl0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qtsUX7ULvcuIBi6gMzSF6/1BJoHa5YGQcJ4UUND3tUUaabg/FOS0WHizbV/ZyIl3iMvYATkLYEPR+qjMql7uUCas6t5cImo7FkJFCqKeEgYdZn8aYkdVLlXfLFNy0GwjCv/xnh1QqCXT5xUGemCPhzjN7igwFKqs8Jqv1DE0QT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=dEcO6a9i; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="dEcO6a9i"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D64F87CA;
	Thu, 16 Jul 2026 22:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1784234237;
	bh=69L1/sJaSwCb1oEhMWG4JYY8boBXoXLnyEexKu49Dl0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dEcO6a9iJK9qiUdaHdSrHOXufsxKdTxUGERBc/eKRZbrZO88OsfzJRhnRVxsQEj/A
	 xFJO6rofrr/SvhaNUwRuq8x36cvm8TcViMspfVVcs3uDLY5IS1/jfpRqkg0gp9LMpw
	 TR3s/CsCuizbwzBvkJM6oJBmO6bfXYrd4PTvOv0k=
Date: Thu, 16 Jul 2026 23:38:10 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sasha Levin <sashal@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <20260716203810.GF1735001@killaraus.ideasonboard.com>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
 <alkFzdJobnnMjJ4v@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <alkFzdJobnnMjJ4v@laps>

Hi Sasha,

On Thu, Jul 16, 2026 at 12:24:45PM -0400, Sasha Levin wrote:
> On Thu, Jul 16, 2026 at 05:08:40PM +0100, Mark Brown wrote:
> >On Thu, Jul 16, 2026 at 11:28:25AM -0400, Sasha Levin wrote:
> >> On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
> >
> >> > - There are many first-time contributors coming in with LLM-generated
> >> >  patches.  At times, I could swear that every one of them is focused on
> >
> >> >  Our maintainers are not scaling to handle this new flood, and I fear we
> >> >  are going to see some unfortunate things merged.  One LLM-driven newcomer
> >> >  recently nearly succeeded in establishing himself as the maintainer of
> >> >  lib/.  How do we hold the line against this stuff while remaining open to
> >> >  new developers?
> >
> >> Shouldn't it be a merits question rather than a tools question?
> >
> >> If the commits are correct, does it matter if they were written with an LLM? we
> >> can insist more on supplying tests and demonstrating correctness, something we
> >> seem to be doing quite rarely right now.
> >
> > The issue (which a number of projects are facing) is as much one of
> > volume as anything else, the code generation machines are enabling the
> > generation and submision of volumes of code where things were previously
> > constrained by human factors.  It can turn into a bit of a DoS.  I don't
> > have any particularly bright ideas here but it's definitely a thing.
> 
> Sure, we're seeing quite the increase in patch submissions, but I'm trying to
> argue that the issue isn't a new one: lack of maintainers, trusted reviewers,
> and maintainer burnout has been a topic at each kernel summit for as long as I
> can remember. AI just kicks it up a notch.
> 
> My concern is that if we focus on the AI aspect, we still won't be solving the
> underlying issue.
> 
> I'm hoping we can figure out how to get maintainers great tooling, testing, and
> community, rather than figuring out how to block a developer who uses LLM.
> Maybe AI would actually be a great catalyst for that as well?

Didn't you argue in another part of this thread that we're in no danger
of being depending on AI for our processes ? I see a contradiction here.

-- 
Regards,

Laurent Pinchart
