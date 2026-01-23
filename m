Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5859E2D6E76
	for <ksummit@lists.linux.dev>; Fri, 23 Jan 2026 12:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769171385; cv=none; b=NxR5l6WyAxUh3sKdZofCJTjpP6YaP0SdZX1W3Ou35GgPGqyWbUd5QpiyQvRdiNGnEkZoDflWN3ofinzAQ0q9KzXu+z/rEwItUMiCOxDkLkfvar8Q+HWHbteUCgba5b4XinnX6+OxMIMostSVmd5bJpXKMnebpC4cekgy+JmCKoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769171385; c=relaxed/simple;
	bh=uqqzsE9E8TeS3aizrY5y6ucE/iwGo+gVpCFBWtga0YQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XlBmXsoshleQd/Dv1DoStjS7K5xqsK7QXjdmQjWMtCjBtGkP+oCVrk4soTd+WtHEZe+Ufq2rVd04WFwe+43YWyh8EPK/mU243TeyBklDknS9eM9LXFC6reTaY/nbB1DcgTPiZKi86Br7xdC1PLSFDZyzuzUIM80lNKYoB8Qqh3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=AzbxVePw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="AzbxVePw"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 933F5C4CEF1;
	Fri, 23 Jan 2026 12:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1769171385;
	bh=uqqzsE9E8TeS3aizrY5y6ucE/iwGo+gVpCFBWtga0YQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AzbxVePwjvv1o8e4EF/2uR2OM8h/5mnUVkUatDALRkkYvP4wY6Dk7p7xe2/cuqfTK
	 PHQlpQMSro2EMe7OiWA5jcVjGLJFd8jPrmLmvPcYf9qP/V1OyALagbt6vfNs0W7MNo
	 Xy76L4WRJPe7hMA2gwe6gSRhUmZgI8RoYFbsNg+E=
Date: Fri, 23 Jan 2026 13:29:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	users@kernel.org, ksummit@lists.linux.dev
Subject: Re: Web of Trust work [Was: kernel.org tooling update]
Message-ID: <2026012314-repressed-chummy-635d@gregkh>
References: <20251209-roaring-hidden-alligator-068eea@lemur>
 <6e0c8c00-4efe-432a-92e8-c51aa15b4a34@kernel.org>
 <2026012340-cannot-spud-5d46@gregkh>
 <20260123124700.0ab2a954@foz.lan>
 <2026012320-tiptoeing-backspace-241b@gregkh>
 <20260123132449.3f8a01dd@foz.lan>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260123132449.3f8a01dd@foz.lan>

On Fri, Jan 23, 2026 at 01:24:49PM +0100, Mauro Carvalho Chehab wrote:
> On Fri, 23 Jan 2026 12:58:48 +0100
> Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Fri, Jan 23, 2026 at 12:47:00PM +0100, Mauro Carvalho Chehab wrote:
> > > On Fri, 23 Jan 2026 10:29:28 +0100
> > > Greg KH <gregkh@linuxfoundation.org> wrote:
> > >   
> > > > On Fri, Jan 23, 2026 at 10:19:56AM +0100, Uwe Kleine-König wrote:  
> > > > > Hello Konstantin,
> > > > > 
> > > > > On 12/10/25 05:48, Konstantin Ryabitsev wrote:    
> > > > > > ## Web of Trust work
> > > > > > 
> > > > > > There is an ongoing work to replace our home-grown web of trust solution (that
> > > > > > does work but has important bottlenecks and scaling limitations) with
> > > > > > something both more distributed and easier to maintain. We're working with
> > > > > > OpenSSF to design the framework and I hope to present it to the community in
> > > > > > the next few months.    
> > > > > 
> > > > > the current home-grown solution is https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/, right?
> > > > > 
> > > > > I wonder what the bottlenecks and scaling limitations are that you mention.
> > > > > 
> > > > > Is there some info available already now about the path you (and OpenSSF) intend to propose?    
> > > > 
> > > > There will be a presentation about this in February at a conference and
> > > > hopefully it will be made public then as the work is still ongoing.  
> > > 
> > > I got curious when I saw something about "First Person credentials"
> > > at https://lfms26.sched.com/event/2ETT5?iframe=no that 
> > > "would begin with the Linux Kernel project" - and more importantly
> > > how and when it would affect my duties. I guess I'd need to
> > > refrain my curiosity until the end of Feb :-)  
> > 
> > Ideally it will not affect anything, just replace the use of gpg however
> > you use it today for kernel work.
> 
> I suspect that, at some point, we'll need to setup our new
> credentials somehow - hopefully without needing to be physically 
> present on a gpg-like key party. If we can do that using our
> existing infra or our current gpg keys, the replacement should be 
> easy.

Yes, we will have to "recreate" the web-of-trust somehow.  That's part
of their proposal, for how to do that and maintain it over time.

thanks,

greg k-h
