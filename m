Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F014B3EBF03;
	Sat, 24 Jan 2026 20:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769287518; cv=none; b=cVkDQilrlm4nLvgFgCelgU7kI8Pt8ULTfXkMwVswgOCDwr5hZddBApJcuSPiTNbtjc4jDrAZ0DeKbhsdCHfy0mV6nHvsrgdz2p8tz1G/599T+v3DrtBoNgszUhSdpFzeiOI2LjNZx2raVbWsjOOU9apvVBIZGk2FlYhWBr9STc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769287518; c=relaxed/simple;
	bh=Nn/mFeZsUuW3QZNTIcWWrnVhXKVZiBeqn9RJwFBsmws=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=uOQhbvzHg6CEwE44VPb/hqZLYI3iVrjpJi0FnfZdMlA9qiqmggVts1gm1Jb2IPlcr8TUTs4wn9zsgr1Hy64c8RHb/owbp/7PJPg4zkAQckGAvsrQfrinZTZI9uTGp5vSaQhQBz6OmOTZiXBwLFFIhLI9CC/MteafU/LAjzta2j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOShsgGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOShsgGN"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 682F9C116D0;
	Sat, 24 Jan 2026 20:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769287517;
	bh=Nn/mFeZsUuW3QZNTIcWWrnVhXKVZiBeqn9RJwFBsmws=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=uOShsgGN1ihYjjwpA9psz4gJK8R2GYAo0bXu2zEgUC6MFpkRZtt4x8MkYrWNiAhRF
	 Rdz/wgruUWtiiLm+d9eeIfyqkt13bo8eL0PuGZBAhmMJRvCwcarsVAz082oqXrDnYR
	 nAKorcET5VNGp9plSxHVL8oJ4o2xKV+Ru8tAHah1DlRzCLnjA2q3shLW2i7E7pOQ00
	 Pj4OFM/BXFEGPW6Tsl3SjLEExkgxy//sUkkKxfojITtDOQSsoVrl9La4OJkjAvNl4p
	 hZ2KESN0O9KTAvUhhlZ//M8WrStNtWfgBmN9S+f/C9hAujG6vUIhtRx/SQGkFDTpCB
	 mNMDV7jkwWf/Q==
Date: Sat, 24 Jan 2026 21:45:14 +0100 (CET)
From: Jiri Kosina <jikos@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
cc: Dan Williams <dan.j.williams@intel.com>, corbet@lwn.net, 
    ksummit@lists.linux.dev, linux-kernel@vger.kernel.org, 
    tech-board-discuss@lists.linux.dev, 
    Linus Torvalds <torvalds@linux-foundation.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Miguel Ojeda <ojeda@kernel.org>, Kees Cook <kees@kernel.org>
Subject: Re: [PATCH] Documentation: Project continuity
In-Reply-To: <20260124082939.40715e13@foz.lan>
Message-ID: <934p49q9-r248-74s5-o936-431oo97o20on@xreary.bet>
References: <20260124012256.1856709-1-dan.j.williams@intel.com> <20260124082939.40715e13@foz.lan>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 24 Jan 2026, Mauro Carvalho Chehab wrote:

> > Document project continuity procedures. This is a plan for a plan for
> > navigating events that affect the forward progress of the canonical Linux
> > repository, torvalds/linux.git. It is a follow-up from Maintainer Summit
> > [1].
> 
> The idea behind this document is interesting, but IMHO it is too
> optimistic for a contingency plan ;-)
> 
> Conceptually, contingency plans are written to overcome all foreseeable
> bad consequences that might happen. So, it should include backups
> for each possible bad scenario.

I agree with Greg here, that covering each possible scenario is not really 
realistic an feasible anyway.

I believe that rather than the actual deep details of the plan, it's much 
more important to have it written that "there is a plan".

I for example know for sure that there are people out there who believe 
that there is some secret testament hidden somewhere within the depths of 
Linux Foundation on this topic, and this explicitly clarifies it. Which 
should be the main prupose, in my view.

-- 
Jiri Kosina
SUSE Labs

