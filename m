Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7110239E8D
	for <ksummit@lists.linux.dev>; Mon,  8 Dec 2025 07:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765177220; cv=none; b=u+nzZpoAPC8/50nWecU5a5SXBpB7S1FnhdZ1T3CpJAP7N77TrdGF6d2qxU1+G8sLaUWLzBvDyKbOzCnv/VKUgUkgmDtxE6oZODxhsehC3wg8Q+OIG0tJQ7j8b3pibBtK2HxUpSg6vz0/BdimI6bRTqCB7FLDNwiijc2rhCBnnY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765177220; c=relaxed/simple;
	bh=mKNSRHaI2S96t+/W3rnfX520iaGcJAqzJYicaqZcZqc=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=RkDQkLlk1tfGiTM6olWsrxuMLXmbsWE2xqQWyeHksvh8jM+iUWy834g9Bx0iHWoSO8MCNowQT75eI0Damgj53Ztad9Kp3++UplWLiFAf6NDsEyIIjj+qFWyXg0K9jMullEZ2Q5+lxlWKaKfAlObMq0aXVvtSCTKQRKZMPSwBfWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2UbJobn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2UbJobn"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00F04C4CEF1;
	Mon,  8 Dec 2025 07:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765177219;
	bh=mKNSRHaI2S96t+/W3rnfX520iaGcJAqzJYicaqZcZqc=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=r2UbJobnoMKHQjo1ZnwM0uhGorbS+Xrjb/gd19s7mVaYay19v0XyVdBEOxTjiee+Y
	 2VkTbOOIZ6mvk6kQRp8Uj17PvWGyHAr3zCT3XwSLB8SoxEya6icpb07WWgPSIV48Ey
	 JlGVMMkXk+7rsVZM9No8eAosGXMoIzsz0A1VOnLdZpZJji/k+UkfzGijiuNBFPYP5Z
	 6pErLDaVJO2mUt5IVAFAnBOTzr1xnxC94pvFPSF0SYOHX0bnasanSaYQsbIxWc7jNy
	 3p7ZRM8b6PTzL0pFP4TSA18JFeVi3RKWVH8AtfXcNyyeHP8coU21Qo/MLGtlv1Ii44
	 7xhg16EHw4DhA==
Date: Mon, 8 Dec 2025 08:00:16 +0100 (CET)
From: Jiri Kosina <jikos@kernel.org>
To: Sasha Levin <sashal@kernel.org>
cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The role of AI and LLMs in the kernel
 process
In-Reply-To: <aTYmE53i3FJ_lJH2@laps>
Message-ID: <7pr38n17-2797-r188-1ss0-o674o68q3356@xreary.bet>
References: <e3188fe2-4b6c-4cb2-b5ae-d36c27de6832@lucifer.local> <aTYmE53i3FJ_lJH2@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 7 Dec 2025, Sasha Levin wrote:

> 3. Legal risk tolerance:
> 
> DCO clause (a) requires certifying "I have the right to submit it under the
> open source license." With AI training data provenance unclear and litigation
> ongoing, how cautious should we be? Some advocate waiting for legal clarity;
> others argue the legal concerns are overblown and we should focus on practical
> guardrails.

In either case, isn't all the legal responsibility with the submitter, who 
submitted under the terms of DCO, and thus this particular aspect is not 
really a concern for us (maintainers) on the receiving side as per the (c) 
DCO clause?

Thanks,

-- 
Jiri Kosina
SUSE Labs

