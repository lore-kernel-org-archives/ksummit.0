Received: from 013.lax.mailroute.net (013.lax.mailroute.net [199.89.1.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ABD31327A
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 20:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=199.89.1.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784232334; cv=none; b=QYAKpsXgoyXJeNbuWW4VqyN1H9SeRyF21kDa4ioKZsh5kogqkSmIx4aps0PxxopsyabfcaNdfVj/jDekaNcuqE+X71nQI92bJ2NdbZ57yyEO+KmdjWZyjSkjS63fEDr5UXn1nqoInW/n2mwB6dGn3sRAx2vsFC0IXEI12amfQig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784232334; c=relaxed/simple;
	bh=sNfquZkt+LJTEwRY8olxc+fSuNj/AU2wqqdgxSJc05M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DT7esJ9GxmXdJzgBLNMma/eLO+CIqy+dtalSlxEnLVj9L9FBmmy12PVEYBiKhtk4VKI9rip43pnHEWxaP0TYOV5Esz5d02MJxdIkfIC0vximzcIa5BVf2OiunPzLELnTwqyRFQN/5qBJJXib3J8d8MQSsCPXNzrnPpvtqcYJtNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=acm.org; spf=pass smtp.mailfrom=acm.org; dkim=pass (2048-bit key) header.d=acm.org header.i=@acm.org header.b=4WmQ+TE2; arc=none smtp.client-ip=199.89.1.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=acm.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=acm.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=acm.org header.i=@acm.org header.b="4WmQ+TE2"
Received: from localhost (localhost [127.0.0.1])
	by 013.lax.mailroute.net (Postfix) with ESMTP id 4h1PDD3qp4zlfc3w;
	Thu, 16 Jul 2026 20:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1784232330; x=1786824331; bh=aN2UmnXE2E2mZc+11/19WMdb
	TVdJuypZLZNaO1wHhJc=; b=4WmQ+TE2MgWl3WpIytP0rMlqg+hZ/SwhjRNJSz/p
	0P31wtdGXbloyQcvolGc4HiQg6Rc8Mv8yEremLboh7E0OXNRvjiI7CH+b8bzOdRm
	ScxKfgRwfytYYlZtKwRVvkqOuPhl4kLhM/NHbk7EM8Tx3AOL7FGbP7oA8L8wgQOb
	7nlqfnOJ2WvtnxZEOsOUz6+GXwYWsaM/E4m0cSOBq5XOW0sE14am9xl7d7YfWac7
	D1ZA9m5V03GitLs38EHNc0dOuvEvzAsktHIyKSQjS0yY25/m7FZPlldxwhWZoMZp
	n1IWQvjDLlHd3CZJ+XSln+/POMWPk3BDk0/gCQyY0InBgA==
X-Virus-Scanned: by MailRoute
Received: from 013.lax.mailroute.net ([127.0.0.1])
 by localhost (013.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id Cu3YBinEGDkn; Thu, 16 Jul 2026 20:05:30 +0000 (UTC)
Received: from [100.119.48.131] (unknown [104.135.180.219])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 013.lax.mailroute.net (Postfix) with ESMTPSA id 4h1PD93VQ4zlfl8H;
	Thu, 16 Jul 2026 20:05:29 +0000 (UTC)
Message-ID: <7b58f83a-a680-4c43-b29f-227c7b0c10ed@acm.org>
Date: Thu, 16 Jul 2026 13:05:28 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
To: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>
Cc: ksummit@lists.linux.dev, Roman Gushchin <roman.gushchin@linux.dev>
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <87y0fa7pdm.fsf@trenco.lwn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 7/16/26 11:36 AM, Jonathan Corbet wrote:
> What will we do when the current round of corporate generosity ends
> and that tool goes away?  Maybe I'm worrying too much, but this does 
> seem, to me, like a possibility we should keep in mind.

My understanding is that Sashiko is open source and also that it
supports multiple LLMs. I do not know whether it supports open weight
LLMs. Roman, please correct me if I got anything wrong.

Bart.
