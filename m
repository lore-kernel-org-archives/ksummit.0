Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926CB37CD20
	for <ksummit@lists.linux.dev>; Mon, 27 Jul 2026 14:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785162283; cv=none; b=IMJrM8LO4qlvbvEnaxFihPXMKG14EKZ36ChQfNq1KjD6A8n2YLB85dDwBSxHKX98JzshrYYpnvMrLdVm1gdIinAtM7A88fCPrEPxk1ZXtT2ImxT0ynpp8QuF6r7prpIPKwp0YPzXYlsG77mEkPtJKNKz20eXQhJRCjZ9+vbaGzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785162283; c=relaxed/simple;
	bh=n2MCyvDR0okOp/Wk2RCyPf/7Vn2tg5yMupk/oFszHC8=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=HL5YHWp+1qrSqIqQjq3+bxMLH68opj9/3XEq3uSWX0gnnVom1XpLQL0gpmDbpFTaQWCjt/7FieLhy/bW+Txv8Q/Pg5De2zb3vlG92QMtyLY8oGCwbDNXdB8yrzBtRydnKbhKT/y6oEbL3TxIvdHkQH3Qyhe44xl2ChPtkF7MbmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHrwdO8B; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHrwdO8B"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E78221F00A3A;
	Mon, 27 Jul 2026 14:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785162282;
	bh=KYZkOkltV2Z8xoSaNhvszGs1BccIcCj+2FwfsqROqQ8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=cHrwdO8B6vVrCNUQ8PvDkse8RiZgxI7Qh+C4JxZ/8bYF8H2YZD/GHwGhJVv1vpWku
	 itdVjL7QR/OovwKT6ZWat5REmluKCBp+GSUu4mOutglo2Oa/LLw4pROixviuxs1tvZ
	 ZuYDA2adRJgOk6tWTKxZFn08vpVMBmP7WzV7+v0FkproxI/uTRRpZAk3UMqnW8fxIT
	 UatHIxi3s2RcdS9+tN00WVJO4Twi79l9ffj9sbGyZkCVqtOmdQQmBqsiK4Ifj0FTM/
	 h8ZW32MCG2nNf6Lzb+u/3ldrDomcxAROkzjfnWPB6qxd5MP615rPEPrYLJEbz1LPBr
	 zx3dRAiLHIk4A==
Date: Mon, 27 Jul 2026 16:24:39 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Sasha Levin <sashal@kernel.org>
cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Scaling our security process
In-Reply-To: <albMUqack9yMq0rF@laps>
Message-ID: <241384q7-s5n1-0267-64ps-13r514r4o123@xreary.bet>
References: <albMUqack9yMq0rF@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 14 Jul 2026, Sasha Levin wrote:

> 3. Do we want some sort of a shared distro security backport list? Every 
>    major distro pays people to backport security fixes, and they all do 
>    the same work in parallel behind separate walls. A list where 
>    upstream and distro security teams write and review backports 
>    together, would pool that effort and land fixes where users are. 
>    Sure, it allows for more leaks, but we end up causing these leaks 
>    ourselves when we release a fix without working backports.

Well, linux-distros@ is still there, and is used to coordinate security 
fixes in exactly this way consistently for vast majority of all the 
relevant projects, pretty much except for the kernel. With my distro hat 
on, I'd add "unfortunately".

At least our documentation now refers to it properly (in response to 
linux-distros@ becoming less rigid about their original rules) since 
0217f3944aebad1d, but it's still not, I believe, seen as a full-fledged 
part of the process.

Thanks,

-- 
Jiri Kosina
SUSE Labs

