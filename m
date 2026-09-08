Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9740253CA78
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 12:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788871177; cv=none; b=VCVXS96AOA1Wf/XPUM4pLlDn8bRI2+JrjdHsukA/BmfhbOgusIcCdgJzGR+JiCh5njC4000x0gV6X7IdS4rAVmJszcHFwKL/2ek0pgGMb/h+FNu5v6NX/YHN8h48WIVANS7mDC6Tl9h/d0gm/8VlLLVra2J57DcFqu5O2v+geGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788871177; c=relaxed/simple;
	bh=0NJJzfM/3uVpoVqA2DvAfi1Li2+sYJhUy1hqzc/YAUU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ImvFJye863ybnZiT8RCE/Tf1tAJhZXW3f+yYdwAJpt9qORbe2/8ULFn05f22fAy6kGCsfHZqc+tkWRdyiXIENA1gNOMqvcJCmcKgbpfdv1Yl7c1oJ0fDC8wT0RWn7JH2eQThBtKi1R2HuAtnfXg8+uQaBhB0j9MZP45ch5+EUGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=B1+2thuQ; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="B1+2thuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B95A41F00A3A;
	Tue,  8 Sep 2026 12:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1788871176;
	bh=DdnhzLCoHlXMp1/z9f04KudgMjR7SEOGpfPVp263U3c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=B1+2thuQ0+iLnLRyGzZOcS37yp/kpuzbvL0psC2GH6wvkJLsDP+RDyXomqJiYhdzL
	 X3FNXx9ccbG9tikty+zK/xKgxKYX+VLtPUc8fLBzMJyGw3/ldJzAXwIBYyi/w+0egf
	 M0Y8xmZtsTPrITBVA3U2GEcs5slCmTLrYeimDamg=
Date: Tue, 8 Sep 2026 14:39:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: ksummit@lists.linux.dev, istoppa@nvidia.com
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <2026090837-buffoon-satisfy-4de3@gregkh>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh>
 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh>
 <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
 <2026090825-scallop-pushcart-830c@gregkh>
 <CAH2bzCS_LHff_RLyYP2bKAmJOZEJNBJyBsZKnG6E=7JRDLjLng@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH2bzCS_LHff_RLyYP2bKAmJOZEJNBJyBsZKnG6E=7JRDLjLng@mail.gmail.com>

On Tue, Sep 08, 2026 at 03:25:48PM +0300, igor.stoppa@gmail.com wrote:
> On Tue, 8 Sept 2026 at 14:54, Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > You are forgetting that "you" are "upstream".  There is no us vs. them.
> > If you want to use Linux, you are "us".  Welcome to the community :)
> 
> Decisions about what gets merged in the Linux tree are taken by those who
> are part of the hierarchy of maintainers. And, ultimately Linus.
> That was the intended meaning.

Maintainers review code, without that, this whole discussion is moot.

> > so if you have changes that you feel are required to meet your use
> > case, wonderful, that's what we all do on a daily basis.  Post them and
> > we can work through them like anything else.
> 
> While it's clear the value put on code, I have to confess that it's
> less clear to me
> where/how to initiate any discussion about the kernel development
> process itself,
> what it entails, and if/how it can be amended.

Why are you trying to change a process that works for 4000+ people and
550+ different companies every year without even a solid real proposal
that we can review?  This is baffling to me.

> I have tried to explain the constraints we have to deal with.

I did not see any concrete constraint, just vague assumptions.

Again, please show the code, without that, none of this means anything
to us, nor should you want it to (otherwise what would keep everyone out
there sending us vague proposals as to why they are different from
everyone else and slow us all down?)

> While I'm not expecting an answer, perhaps you can advise where to
> bring up this topic?
> Clearly you don't think it's suitable for ksummit ;) , but then where?

I would suggest stepping back and learning a bit more about how we do
development here.  The first step in interacting with us, is you posting
working code for your need.  That proves that this all is something that
you really have gotten working and want actual review on how to get it
merged.  Without that, there's nothing we can do here.

thanks,

greg k-h
