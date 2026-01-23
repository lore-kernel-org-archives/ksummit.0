Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80DA332EAD
	for <ksummit@lists.linux.dev>; Fri, 23 Jan 2026 11:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769169532; cv=none; b=HoPBGiHmfw6hKaJ0FMUu7nNtvRo9kAbmylq3Xkd9Ot8Uu+VkeQOEhtWw2mNfJudsoU/6pljmVjAif1bkRppUS/SymkaqaxztDuFmDuWk1AIDktZdLKT0zgFvFnSPraLuQTOXOIJxYe2NL/EexCwh2mZHzwLhsuoQEGSka93NENU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769169532; c=relaxed/simple;
	bh=6l4UMo2KZ7yCPHncux5ATkI+SXvnSX/OGiBUoGbzsDc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qQ4XUvUR2BIWkLl4smL8owWCliMXEGU0TAaRq4JhQk4FyEj09bUVtWsfht5pDshDFBIJozRvnTqUjiFdV90CAZNH2cPi8Fz4qDN/APV0HHUkR5jEv5Zi03qhDG9SH3pDSywmYRbc2B14FALOeE9k7yGrQRovv3R+L7wrjuoSXAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=RwEMHZwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="RwEMHZwN"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5ECEC116D0;
	Fri, 23 Jan 2026 11:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1769169532;
	bh=6l4UMo2KZ7yCPHncux5ATkI+SXvnSX/OGiBUoGbzsDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RwEMHZwNgAgm63RrMGT+i5momv2PI5iJ00tJET4/+q9V1QntbW/wZw0YxjkrigVHJ
	 MIas9Gobz771VIcoTFiN297B22LD974uRxYijTwgYbhRYn/ov0Z3aqfeSY0jepKmqU
	 AylHcoUN/HysTcTyqtqWo2dC4y+hj4mosVtCqhMA=
Date: Fri, 23 Jan 2026 12:58:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	users@kernel.org, ksummit@lists.linux.dev
Subject: Re: Web of Trust work [Was: kernel.org tooling update]
Message-ID: <2026012320-tiptoeing-backspace-241b@gregkh>
References: <20251209-roaring-hidden-alligator-068eea@lemur>
 <6e0c8c00-4efe-432a-92e8-c51aa15b4a34@kernel.org>
 <2026012340-cannot-spud-5d46@gregkh>
 <20260123124700.0ab2a954@foz.lan>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260123124700.0ab2a954@foz.lan>

On Fri, Jan 23, 2026 at 12:47:00PM +0100, Mauro Carvalho Chehab wrote:
> On Fri, 23 Jan 2026 10:29:28 +0100
> Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Fri, Jan 23, 2026 at 10:19:56AM +0100, Uwe Kleine-König wrote:
> > > Hello Konstantin,
> > > 
> > > On 12/10/25 05:48, Konstantin Ryabitsev wrote:  
> > > > ## Web of Trust work
> > > > 
> > > > There is an ongoing work to replace our home-grown web of trust solution (that
> > > > does work but has important bottlenecks and scaling limitations) with
> > > > something both more distributed and easier to maintain. We're working with
> > > > OpenSSF to design the framework and I hope to present it to the community in
> > > > the next few months.  
> > > 
> > > the current home-grown solution is https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/, right?
> > > 
> > > I wonder what the bottlenecks and scaling limitations are that you mention.
> > > 
> > > Is there some info available already now about the path you (and OpenSSF) intend to propose?  
> > 
> > There will be a presentation about this in February at a conference and
> > hopefully it will be made public then as the work is still ongoing.
> 
> I got curious when I saw something about "First Person credentials"
> at https://lfms26.sched.com/event/2ETT5?iframe=no that 
> "would begin with the Linux Kernel project" - and more importantly
> how and when it would affect my duties. I guess I'd need to
> refrain my curiosity until the end of Feb :-)

Ideally it will not affect anything, just replace the use of gpg however
you use it today for kernel work.

thanks,

greg k-h
