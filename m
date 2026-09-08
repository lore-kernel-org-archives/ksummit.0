Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784495328BE
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 11:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788868467; cv=none; b=Ts/JFLWsFssgoGXyrtPlpyLgzlaGBnzQcMNs0Na7tNqSjhSGE4pUdtHknPir85phCkRItKuGj5rUdLUwg/0xq/5t4LdSNX33x3MQFBpsUDnFmYFt9hlhFaSPgxVawZ7UDBZGIWl8Zw78iUFGXYjOZMCw6W55oTK6LOa2YPGoa3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788868467; c=relaxed/simple;
	bh=iSCUqBI/RPl7SiJFs3xzlQI1ksxeWRK4ayiKyU5k74I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nXZF0C61/kfVN9Lgr6TAop65N732aVkmWM+LggXGqL7RCrF5v3Az7bACMuFf30Lr/Qwhv3Ot+01oGUSp6n/3Wi/IObR1ShYiupEfRjW8g6HSJRfzG0W/Yx1BFrxDEfXaysWHMvSjONbJy3FdQGyEL6bvAZi7Ks9ZATYYKJqhyfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=bsmoffBy; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="bsmoffBy"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A9281F00A3A;
	Tue,  8 Sep 2026 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1788868462;
	bh=+CT+ws84hkTZB0vtyiCGUfBsFximFer4mOzps0mSdB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bsmoffByjcL3nW0/hYi8BBVg0Xyk+O1mEdHhHwKSlM0pF7MP2neN0Er2Jo81izTNE
	 WfDRiurcLA6BPkwg+mt6OsjK/p7vLINz/KD009CheuMy5zYBht6bFlO31+IJMX9jh1
	 nImQEmtpEj/ciW4Nk+qJc2li+xuuA2FzPcQQS5V4=
Date: Tue, 8 Sep 2026 13:54:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: ksummit@lists.linux.dev, istoppa@nvidia.com
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <2026090825-scallop-pushcart-830c@gregkh>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh>
 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh>
 <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>

On Tue, Sep 08, 2026 at 02:26:04PM +0300, igor.stoppa@gmail.com wrote:
> > But that's what we care about, working code that solves a problem that
> > you have, in a format that we can discuss.
> 
> There are 2 aspects:
> 
> 1. working code that solves problems that we have, but those are for safety
> 2. working code that solves problems that upstream has, for example
> integrity and security

You are forgetting that "you" are "upstream".  There is no us vs. them.
If you want to use Linux, you are "us".  Welcome to the community :)

> What we are doing, in a nutshell:
> On ARM64, we are enabling per-core, per-function, selective transition between
> different kernel memory maps, with different write capabilities.
> Kinda of MMU enforced rings.
> And we pair that with the ability of controlling memory allocations, so that
> specific allocation requests are served from matching memory pools.
> The same is extended to userspace creation, of course.
> Scheduling and other stuff are involved as well, but I hope this gives
> at least a generic idea.

That is very very vague, sorry.  Just send patches showing what you have
done.

> > So, along with what Ted said, turn your ideas and proposals into
> > something that meets your and your customer's needs,
> 
> We will do that. No worries.
> But this round was actually about upstream's needs. Not (only) ours.

Again, if you use Linux, you are upstream.  To think otherwise means you
really don't want to use Linux.  No one is forcing you to use Linux
here, so if you have changes that you feel are required to meet your use
case, wonderful, that's what we all do on a daily basis.  Post them and
we can work through them like anything else.

thanks,

greg k-h
