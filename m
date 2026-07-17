Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784C03D413F
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 15:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784301361; cv=none; b=tLEGd5PejBKPRym2trSl/m9y7a27S15BKdAH7HM44GI+bJQNcQI8WluUXmHXsoo1DiJCqF1c+tGJBHAOgL3XzoP3DocUDAyPFsoh2RvoBTnMt6xn7E013ZqB7gZal1rmrsAi3WTHrgqsD/a7O9DWNylAXQnJIZI1C88IRCamqXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784301361; c=relaxed/simple;
	bh=PxER4WUJkxpD5VWzkOvyszOun3qv03w/zHqG1+gtuvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kYs4rAsCJQ75TDE5fpQebzU4AblxovtpSIzA8bREGTrEvPULBP3CERTfMRaM8ePvsrNz7+pGSdjKNjI2rOGYAVYeTl67O7GlztFyIWAwcjLDV+s3pnX53wyrmCEhL6QdVHHOVRfleDL6rNfxDBNCfdCvRWmoZFSgEfhv0lBnePQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSh0Szlp; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSh0Szlp"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFA161F000E9;
	Fri, 17 Jul 2026 15:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784301360;
	bh=sg7C8fy86R22frIOLyNdXHj6Yka4Ipv48BD0LuDwq7M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bSh0SzlpZO3oiSG9Xfiqbst1pFjUahsjkUZ1F4/E9g0MqIWpI/rOymyva0XXL7aes
	 F/gGNhdPmR8KurvdYHViueBt2jUXFHdA+49+zNK4dCM7fJ8Zz2/OiV47gJmwXzuj44
	 U61cDYgN3uTxJDWV4Z26yWZWABnTWSG7KIL9PAVGKcfk+eyo8niBbqVRq8IhaeDD07
	 0LZJu5i0riQ0bDAlFuJRUSpaqdfyfEgtFg9nS8D3al1w2o/IwVpETKmjDuG1tDznbd
	 mlspgWy77SiehaYGZA9KOInK9/3CnZG9MqkI9eZlTDORz9N73gNQ6iBO/IKOXVo9Ek
	 TTP5H9x1+1QSg==
Date: Fri, 17 Jul 2026 11:15:58 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Greg KH <greg@kroah.com>
Cc: Sasha Levin <sashal@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Scaling our security process
Message-ID: <20260717-meticulous-gazelle-of-reading-dc5f4a@lemur>
References: <albMUqack9yMq0rF@laps>
 <2026071553-tuition-hatchery-4588@gregkh>
 <alj2AX17zXFMIjZW@laps>
 <2026071715-electable-swarm-3400@gregkh>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2026071715-electable-swarm-3400@gregkh>

On Fri, Jul 17, 2026 at 06:59:26AM +0200, Greg KH wrote:
> > > > 1. Does security@ still work? It was built for a handful of carefully written
> > > > reports, handled start to finish by a small group of volunteers. That process
> > > > never really scaled before, and it won't scale now. Does it make sense to
> > > > separate the roles? let AI driven tooling handle intake, filtering, and
> > > > reproduction, and keep the humans for developing and coordinating fixes for
> > > > reports that survive triage?
> > > 
> > > It was not really "built" for anything other than a place that people
> > > could report security bugs and get them fixed.  We have changed the way
> > > it works over the past months, and for right now, things seem _MUCH_
> > > smoother than ever before.
> > > 
> > > Also, we are getting funding "any day now" to have someone work full
> > > time on this, to be the "point person" for the alias to help when things
> > > fall through the cracks, as sometimes happens.  We have verbal
> > > guarantees of at least 6 months funding, and if that goes well, it
> > > should be extended.
> > 
> > It almost sounds like we need a CRM system here rather than a person?
> 
> Hah, no, any single-point-of-failure here would not be a good thing.

I agree, and I'm actually concerned that security@kernel.org is a SPOF as
well. If someone is sitting on a bad enough 0-day vulnerability, we have to
assume that they will be able to compromise kernel.org and knock us offline
(or, more sneakily, control what security@kernel.org receives and doesn't).

I've played with the idea of several SecureDrop servers that sit behind
OnionBalance and can receive security reports, but I'm not sure if this is
going too deep down the over-complicating-it rabbit hole.

An easier solution may be:

- publish a security.txt that lists multiple addresses that are known to live
  on disparate mail hosting infrastructure, in addition to security@kernel.org
  (e.g. Greg KH, James B, Linus T); this way a security report is more assured
  to be delivered to at least one of them and not gated on kernel.org being up
  and reliable
- make sure members of the security team are using their direct delivery
  addresses instead of kernel.org aliases
- set up a secure parallel back-channel mechanism to be used when email is
  being disrupted (e.g. a Signal group)

I still think a SecureDrop server may be useful for anonymous security
reports, but this is a separate consideration.

-K
