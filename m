Received: from fhigh-a4-smtp.messagingengine.com (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E742EEE89
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 05:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784264450; cv=none; b=KEAtz0EE5NMzFeSWDlGvTbkS6/x7/P1yMUwoOuGaLjmSwfhZIgw7JXHqDPoXOwwu5/gBPYTqRs7wnWlKo7tk29lsNfkX9RxCIaVMR14L7IwRuVYoLi0up5SsFfYlCv3fGrnylRSbjnc+WcMqawrn/uFr0mCXmKtvFjVrer7spV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784264450; c=relaxed/simple;
	bh=4ZdbvdVJ+AwVgYGi8ovT5pmNsYGR1JVlW5Hq1Hb4BBc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VuifaCDWY+LsZ9QUE2wqQp+nWUDqZZCNJaLTrCPZbUqYtGKDo6ZxeHO1etoy3Y9s6fECEbiQxY4+qe3KZ6X2AC+RNg7GbKYWlpB7b0pr1003DShZc+iP8vSNGRfaEE5KyKPKGDj4kju+lb84kgh4GmtiY7RU1XB84yU/vLhUrVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kroah.com; spf=pass smtp.mailfrom=kroah.com; dkim=pass (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b=f9Jwjz83; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=JBp4aU0Y; arc=none smtp.client-ip=103.168.172.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kroah.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kroah.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b="f9Jwjz83";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="JBp4aU0Y"
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 3BCB91400076;
	Fri, 17 Jul 2026 01:00:47 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-11.internal (MEProxy); Fri, 17 Jul 2026 01:00:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1784264447; x=1784350847; bh=mvNgGizbxQ
	tB5b0/5Ex04XT30OIj0dswtRa/K/JSVsI=; b=f9Jwjz83xHrFTUrBmTwi8y/IRd
	YZ1cu9Yh/szsyGMsmvm/4mW5q/5soXsOqTmxgF6wtN0JVAyxkOQ4xWCSXuSFCCa6
	iwY1571bJ+x0G+Rj2pt2m+SR4I4BfHGO/nAom+XRaoyXPdSKB9iPfQaAvwi15g8A
	lcP90nqgbtkLKmL+beU63NRX43KJ1YJ2jCfd2ktuP6Oj5/s/UdCViJ/iFSbVdSxC
	YNA1hKcxTbIgQIff1gEsxhcBZgA28WAnOncWrhBImYF1EKKOX4Ljx9DP6+QC/n1x
	wObK7Bdlc7pvnFpqy7pRlqF+84Mdxkqjgo7KK6seyjccsYSA/zF9oiMcQjvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1784264447; x=1784350847; bh=mvNgGizbxQtB5b0/5Ex04XT30OIj0dswtRa
	/K/JSVsI=; b=JBp4aU0YJfPkSdTLTbQshMpgPdAOJr6B0nAM9Wp4UFGBoFP+Rbn
	qV4uwyuvsri9Hz+WMvcTXgLysczDHA4Zbn7sPuHob38wMixbkXKzrX6TjGNCJyde
	QUgc4StGw78yc0MyQeUiSpbM0RM5nMqUVwfA4RAyGcgBwgkGYjX0UPCrWMMBMUGm
	9WvGPsclGRdrpnWRwKhTToGDqolovp00WM1m9BARaI0ZU0ljrWGA2vV9IvTpEJtL
	9mcDAtxvQPuUUXK3bsuIuxYpbkJL8g6cIbJRPMHmHDegdiSeBZN601EFLAiXgyPD
	ohEHork2qxExHjpYRP3oYTlB4Nmf4fxdq2Q==
X-ME-Sender: <xms:_rZZattfdqrFYqLA-lm_3TdvmDL5w7FSmoQnH2668Vi_axS88uC7LA>
    <xme:_rZZakSgiQ9O7yixhP0yAnjhwSRLxAo89w0j1jYDVXmdbGvilR338kPqBt0KVm9pv
    xc930T7LsCRtdPpkuEg8gDsVCKlgl3T_XyedTjTfVfDneA-Rw>
X-ME-Received: <xmr:_rZZarOKh6cf-kIRSGQjdhsgBeUaqcUUKvUxclausW9fAYecB-oz1NVCv-MNKC2_8ty-GsiTuRsq_Ne4rl8hlYCoSw>
X-ME-Proxy-Cause: dmFkZTF62H8O1NxK0d+lZAawtoKSsvxon/x3d6HmRTB5sFYbA/qj54f6LpC2KjKTXwDTsL
    huBffOoGSxX85b1ebSZ8DQqPt0s976VlY2YAPqZfB/AFu/gGM77/+tnZoXNj45YzciwkP3
    dnzc3zTBBVh5OcY7A6AynZhlvc4EGJLBCEYdN9zF2q9z/A0vhgiFNSSsgj4BV7deo5xIHO
    hXxMwo45BJqY9rNgJBFPtk+9KWthIFCGNIkJo7i68veM+lm9l2xmBM4yzIjnjfONQCXyGU
    yCN9lKaLWrZf6eauOQ7VYPMAwGWFaBG36NtSoPVgL2YfoxfwlkniDX0y1FSsCyQIt3WbIM
    pzxDRGCdKOMBdVfijYHsUTTrlF+5aXyeHSfqDaWJFklSPORHCBEaXaJxQDBtfxZDEfGvmY
    a7wLP0EDotOhClvvnaQLF40J3CJ3Wi34CiDU6zWI5ebj6QsjCGq7f4XR0UJAPUBQYdlVAp
    Qk9qEyTohB4XUmmCQwRReUB1FRMUxsCm3qQecw4yLpd+rWmPG4s2hnufiuFsHSu48CqccV
    2jc9gOQYVOEM+vmzPpcVBtedT3/3DmWg0tF93JL2+mrBaZCIFoL5qcK3guH5JfeQSyvYNA
    4EXhWykFGXnrxadpVki103Eq11IDKR/U8W1YC+GG/hH5Wl5ZB4uTqFAZI6Pw
X-ME-Proxy: <xmx:_rZZahYu7YDI17F7xgBob_mHTwDaKhg4ZyAQ-KAgjoTYs1PbGCjvsA>
    <xmx:_rZZatx2lxRFJ8tHv5idwhxZExizEKwxC9UqPFs04PVfPVxiNB7Y-Q>
    <xmx:_rZZakIqRE_VaFxf2P95mPmzHyQsED9b8oZXbeELS1RncXA-Yd8Row>
    <xmx:_rZZavrc59HkNSgVjrfbhUxJ4eiR9lbZZ1vgZ3C1UrGeNHaSmsIPeA>
    <xmx:_7ZZagr8oFwajx3wRr9ptwxsPSYxBWGJormL0U8wYJqAhkK3_rBHFUHx>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 17 Jul 2026 01:00:46 -0400 (EDT)
Date: Fri, 17 Jul 2026 06:59:26 +0200
From: Greg KH <greg@kroah.com>
To: Sasha Levin <sashal@kernel.org>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Scaling our security process
Message-ID: <2026071715-electable-swarm-3400@gregkh>
References: <albMUqack9yMq0rF@laps>
 <2026071553-tuition-hatchery-4588@gregkh>
 <alj2AX17zXFMIjZW@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alj2AX17zXFMIjZW@laps>

On Thu, Jul 16, 2026 at 11:17:21AM -0400, Sasha Levin wrote:
> On Wed, Jul 15, 2026 at 06:43:04AM +0200, Greg KH wrote:
> > One comment about something I've been working on lately:
> > 
> > On Tue, Jul 14, 2026 at 07:54:58PM -0400, Sasha Levin wrote:
> > > 1. Does security@ still work? It was built for a handful of carefully written
> > > reports, handled start to finish by a small group of volunteers. That process
> > > never really scaled before, and it won't scale now. Does it make sense to
> > > separate the roles? let AI driven tooling handle intake, filtering, and
> > > reproduction, and keep the humans for developing and coordinating fixes for
> > > reports that survive triage?
> > 
> > It was not really "built" for anything other than a place that people
> > could report security bugs and get them fixed.  We have changed the way
> > it works over the past months, and for right now, things seem _MUCH_
> > smoother than ever before.
> > 
> > Also, we are getting funding "any day now" to have someone work full
> > time on this, to be the "point person" for the alias to help when things
> > fall through the cracks, as sometimes happens.  We have verbal
> > guarantees of at least 6 months funding, and if that goes well, it
> > should be extended.
> 
> It almost sounds like we need a CRM system here rather than a person?

Hah, no, any single-point-of-failure here would not be a good thing.

> > LLMs really can't be used for security@ EXCEPT if you use a local model,
> > due to the "interesting" legal rules that security@ has to operate
> > under.  We've been using it there for a while now, when needed, and it
> > has helped to spit out "first cut" patches for reports that do not
> > contain a patch to start with.  That usage is gone way down now that we
> > ask for a patch in the intial report as all of these reports are being
> > generated by a LLM anyway.
> > 
> > And attempting to use a LLM to handle intake and filtering just doesn't
> > work.  Many people who have experience with being on the recieving end
> > of such a feed have agreed, that isn't the real problem with getting
> > this feed at all.  The real problem is unresponsive reporters, and
> > "middlemen" that like to put their company inbetween the reporter of the
> > bug, and us, the fixer of the bug.  A LLM just can't do anything there,
> > but I'll let the person who ends up doing the work for this for the next
> > 6 months have their say after they've been on the recieving end of the
> > firehose for a while :)
> 
> Ignoring the LLM for a moment, is there value in jumping through all these
> hoops if we don't also end up with backports of the issues that are being
> fixed?

I understand your worry here, but that's a separate issue.  First we
need to make sure the patches hit Linus's tree, which is what
security@k.o is for.  Then we need to make sure the patches hit stable
kernels, which is what stable@vger is for.  Two different groups/goals.

thanks,

greg k-h
