Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B27F2512C8
	for <ksummit@lists.linux.dev>; Mon,  7 Sep 2026 20:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788814609; cv=none; b=M3sZw9O420i9PRu44B5Wk0pJ9Nsk2D4kr++G9O26TiVgfeUcOu5qzg7Y80KKr8BQgT87mCKzKdH9/zB5K7woFyBkzw6rM0e9Jc7XoAbS8kiMiWLVRndQh8N4+c4ML2snmq5T36Dk7AdoJhfDx/t2LbH4rivCSRpG/uXFXPLr5v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788814609; c=relaxed/simple;
	bh=DG2DHOGNK0zXD2GJTbR1LHXfOp3IVernxv8Zy1aXYz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KqLWWe9Sft2ru9FrShCfEnlraWZtDcq780qfi0EjVWYS0+T7xxpezaG7aIjyALPahgafgelmgvM1baA27ddSMhJ8rnT/vLoCGwEzY2gvP+dSd+Ul81kC/zLPsrmXmeEoGrMPrFxfN0e5uo01aMEkmQa3m8iUzKTaYIl50SpLIvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=cAxaBl1Y; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="cAxaBl1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71DFD1F00A3A;
	Mon,  7 Sep 2026 20:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1788814608;
	bh=OZCpGpekGihroki2yjPjys6tU97BIv8LTb+96l1eccQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cAxaBl1YnSmb0zi+/ItEHKVW+HLQ+aC4scGd5/xqVY7ERy7xpMaA+UpuNENdpj8mY
	 yxu2xYHH8Z3O3yc9FM1JCxfsprypeSgnffHQ7ZfcOmjOZqfakLBHlmMkESDbuhoG6F
	 IiUSs3IPExd5+Vk9zeE4e669j8e2nH9VZFI30H/w=
Date: Mon, 7 Sep 2026 21:46:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: ksummit@lists.linux.dev, istoppa@nvidia.com
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <2026090747-carless-trio-ae92@gregkh>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>

On Mon, Sep 07, 2026 at 07:53:14PM +0300, igor.stoppa@gmail.com wrote:
> TL;DR: We (NVIDIA) want to explore the possibility of upstreaming
> mechanisms currently reserved for a safety-oriented fork of the
> kernel.
> Should there be a consensus that they can be valuable, we can plan for
> the work required for upstreaming, but first we would like to discuss
> the content, the expectations, and what it would entail to reach a
> mergeable status.
> 
> --------------------------
> 
> The long pitch:
> 
> Intro
> 
> In the field of Functional Safety, there is a strong demand for use of
> the Linux kernel as base operating system for safety applications.
> 
> Examples:
> Assisted/Autonomous driving, industrial/humanoid robots, medical
> equipment, aerospace.
> 
> Linux, though, was not designed for safety, and it cannot be used as-is.
> 
> While there are attempts at claiming safety compliance through
> process, these are insufficient for advanced safety applications.
> 
> The reason why said claims are insufficient is that on one hand the
> vanilla kernel would not survive negative testing (e.g. fault
> injection) and on the other hand a process-based approach would
> require demonstrable absence of safety-compromising bugs.
> 
> Which is more or less in the same ballpark as proving absence of bugs
> across the entire code base. Not very realistic.
> 
> At NVIDIA we are developing kernel extensions that support Linux-based
> safety through actual hardening mechanisms that can withstand that
> sort of validation based on simulation of faults.
> 
> --------------------------
> 
> References
> 
> Some of the problems addressed:
> 
> Linux Virtual Address Space Safety
> https://youtu.be/pe9OVjWdF-w
> 
> Identifying Safety Weaknesses and Fault Propagation in the Linux Kernel
> [https://www.youtube.com/watch?v=gW0W9YPnsjI]
> 
> 
> What we are working on:
> 
> NVIDIA Linux for Safety – A System-Level View
> https://www.youtube.com/watch?v=9GPQVu7KDTw
> 
> NVIDIA Approach for Achieving ASIL B Qualified Linux
> [https://www.youtube.com/watch?v=ueIPuhcyAUo]
> 
> --------------------------
> 
> Opportunity
> 
> While Safety was the primary goal for this exercise, it has become
> apparent that the very same mechanisms could be employed, with
> different policies, also for more traditional purposes, like integrity
> and security. This is something that could benefit a broader number of
> users than we had initially anticipated.
> 
> --------------------------
> 
> Question/Topic for discussion
> 
> Would the upstream community be interested in this sort of hardening?

Why not just submit your patches like other projects do to get review
that way?  If you don't have working patches, there's not much we can
really comment on, right?

And as you are working on this with the other ELISA people, why not work
with them to get the changes merged upstream?  Or is this separate from
that effort?

thanks,

greg k-h
