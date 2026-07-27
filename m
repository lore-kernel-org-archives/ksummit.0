Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A59C038AC87
	for <ksummit@lists.linux.dev>; Mon, 27 Jul 2026 15:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785167424; cv=none; b=KkhT+ruZpVxQ/GmSG7bXdWFK0a10KaaxHONvKoOT6yBINASdIwk0UWdibm7xWPshyIg/vejCJ+Pd/DLS3RQDvfNW4FSL/kcoBg7vTvc00LryD8MHz7gBx4vFesZN9gHPy5+fEZga680cRIHRE0BLdr8Xmm6uiOtwngB3YGERsSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785167424; c=relaxed/simple;
	bh=gDYn+oj0LLCCNh0OEaWqwH5n4PPB4x79a/qWtHloMXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YDeBK/m69eQyt6eDXopUD4kLejWlxkLTA881frmbaCYIysRox7ctS0dVqCO9TZC2JvbL6GLMF/qn1WOb1Fxm5pcEia+w/uPl91qLBH58JPqKFi26I60pVUW3qoKviq33377lXH6/XuqU4kQEB0D0jPM9XTzPJCoMFZ6xkXFVAXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8HQc7VE; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8HQc7VE"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD5081F000E9;
	Mon, 27 Jul 2026 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785167423;
	bh=xo3KKAiReEEtfwVVolxM00CrFmKxICmRP14cJAOJEJM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=E8HQc7VEphnwLyAYiYwuM74OqQ/X6GUBH42xDQo3P1YyxnLe3BLvUDYMt+FrEB+uH
	 s8gVWA8ybmNhlrMO9thWQFT2qH2VlJomhEpowT/rk47qc5AstWkfyg7Ejywxl8n4DT
	 bu3ZwlTgQ9TFHB2UQtkRGlshTKDhs+4eexxpNMyx/oMpOr18Zzr52Jly2/as9Enzsz
	 8+IqB6XUj3k9T12sm3Y0wVBxBJeZ3A4X+2VGx0kPLLJKYo6i/JKQOePaIw1THpAfiC
	 mjYvd/FTpoElxlfEbt6C75rggADsrZBCvh3oz3f9lLgOFCNw2rD+k4VC8g4ngeTh0d
	 9ohqC0mAGJ08A==
Date: Mon, 27 Jul 2026 11:50:21 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Scaling our security process
Message-ID: <amd-PfGXV934cXyk@laps>
References: <albMUqack9yMq0rF@laps>
 <241384q7-s5n1-0267-64ps-13r514r4o123@xreary.bet>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <241384q7-s5n1-0267-64ps-13r514r4o123@xreary.bet>

On Mon, Jul 27, 2026 at 04:24:39PM +0200, Jiri Kosina wrote:
>On Tue, 14 Jul 2026, Sasha Levin wrote:
>
>> 3. Do we want some sort of a shared distro security backport list? Every
>>    major distro pays people to backport security fixes, and they all do
>>    the same work in parallel behind separate walls. A list where
>>    upstream and distro security teams write and review backports
>>    together, would pool that effort and land fixes where users are.
>>    Sure, it allows for more leaks, but we end up causing these leaks
>>    ourselves when we release a fix without working backports.
>
>Well, linux-distros@ is still there, and is used to coordinate security
>fixes in exactly this way consistently for vast majority of all the
>relevant projects, pretty much except for the kernel. With my distro hat
>on, I'd add "unfortunately".

Just to clarify: I don't propose the new security backport list to be
closed/secret. We have hundreds of known security issues that our users kernels
are vulnerable to, either because there's no backport, the fix fell through the
cracks, etc.

This is my beef with the security@k.o list too: we seem to be overindexing on
some issues, while we just ignore hundreds of other issues that make our users
vulnerable.

I really don't understand why we bother with this whole dance around
embargoed issues.

-- 
Thanks,
Sasha
