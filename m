Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC2B3BD643
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 22:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784240812; cv=none; b=OPZF+vs9RtLqn3Ve0Pp+537SSopmF5PtAXumRyiFiMHopMUQJa2lwKD9yPcuMyscy2InNgKpv0PXVh58zIgCORZ29V4p8s6/4cxUYKF/qVN9IXkFiKZaXURh9E6OO3gfHggkyT//ZbinOl/GGeyNjKo+UrfEA5GYXGKk+MbK0go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784240812; c=relaxed/simple;
	bh=BjRCVQ28HwTvwQp2s0DniigWRgnXrEmhpW6aZ/JC+cM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QEN5F7YZDY9gb/w4wnFc9BGa0h0cRhxJfriP4T0rAEWmLbaVdOKcRWW1lX9KWBmZ3B7O7jxsEk5LwpsvKNsUfnRFUC4j+VzqKJAHiWIBQ205XiMCDrXAEntaxmynDbI5fUHvVcWR8njOodzdonluNMmCEeu/HN5jnbPHMq9Wy1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8VAkdfa; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8VAkdfa"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BC8A1F000E9;
	Thu, 16 Jul 2026 22:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784240811;
	bh=uVB3NRe7zsOx5JMqS6SGqBGf/HPDlvu8kCHlTpV2NU8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=V8VAkdfameru4w1zGpf/wz3qNfHehhQMoojEzLuSaSJyupQgpL5ykW45Mx7AX7+vM
	 JYRTc+xdx4xYuxBrIGd3dzq8nGzIYE+9OCXQ5YBOtJ9qsRA/B1bjKga4oSCaNY22Qa
	 cSVSQDYhXrLSQE0qHtrzzn6oNuxu8p75b4IXQcEW2/7WN/mngyWyQBy/B6tzx+JVPV
	 SS8AgtLcBYBnrlWNMK1bYllaNKER2vUoVu4CaLWcn3KdUJg8aZNpculC+nnZTGFCb8
	 9O+B3SDGiTXDZQ6jmcb/yjcf8zveJU6TaCKMNu7sinQuDw+zcmE+vY61iSQuZJMGX/
	 yOOmK7C382SMA==
Date: Fri, 17 Jul 2026 00:26:47 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: Jason Gunthorpe <jgg@nvidia.com>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <20260717002647.4830c9fc@foz.lan>
In-Reply-To: <7ia4pl0oymo0.fsf@castle.c.googlers.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
	<20260715185757.GA191552@nvidia.com>
	<7ia4pl0oymo0.fsf@castle.c.googlers.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 15 Jul 2026 21:21:03 +0000
Roman Gushchin <roman.gushchin@linux.dev> wrote:

> >> Many engineers have asked for some sort of interactive mode where they
> >> can ask additional questions or follow up on the initial feedback from
> >> Sashiko. I plan to add this to the local review mode, but for the
> >> central public instance, it is problematic from both security and token
> >> cost perspectives.   
> >
> > Could there some way to download the entire context from all the passes
> > to a local environment and have a local llm chew on it to answer
> > questions?  
> 
> Yeah, it's an option I though about. Like a download button which just
> dumps all relevant context as an .md file, for example.

The better would be to produce, instead, a trained dataset - or - even
better - a patch-review kernel-trained model with a couple of different
sizes (and kv compression), in GGUF format, allowing people to use it
directly, e.g. something that could work like this:

	ollama run hf.co/sashiko/sashiko-<some_model>:8b
	ollama run hf.co/sashiko/sashiko-<some_model>:36b-a4b


Thanks,
Mauro
