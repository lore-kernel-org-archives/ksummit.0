Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558AD1F8755
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 03:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788839565; cv=none; b=vCg3+dGo3ZbtGLg51NB4bREVkg+HthRTtM+m2jrGw5M6hVHOeJhaf8cXm+ZsrQIW8fOxg+Umm8kRP+qmceTXiwRLONi1o54b0uTw0So74VTgPUwbSdr6wYguI/Bt1m7SsSuK6IwDa5ImzxFBnjE72FJYnKo4xE3UZK3Hmxa7Axw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788839565; c=relaxed/simple;
	bh=8hcbs/2ZXN0L3Xb2cxYMyREds6gQa02yDuhDrFS+M40=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eCm7FkFrjYk/d/xLOSg+6mCHO8Y1xY2zPq6VHvhsZ9DMHL/6zVwlGJwqjCIKKry3jlcEXAmWVs6+m7lY+R48spj0ZZvrX/Z4AN50l6nCFVCUddeuTPuN0UsNvAhcDic1PnH+D+wFlTsGcdAIr0ybMtJFFdLKWYaCfXEN2N1jQKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=Z48sBDL+; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="Z48sBDL+"
Received: from macsyma.thunk.org (pool-108-26-156-127.bstnma.fios.verizon.net [108.26.156.127])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 6883qcOv014783
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 7 Sep 2026 23:52:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1788839560; bh=2wFtpjsfTxx5RiTEM5OtYXVd4aAJp/aJaqGITEIlcVE=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=Z48sBDL+iFChkycaE3Nfp2IX3R5cinrR8AZzGQWkufZGqNT7M1v3ZqKMZY2XmsaS7
	 jHoUMu2YzXlWzqGWHF0QfSAaMHtZ1debNfBhx5OTJ5C94PVYww51F8rElJS4+Jjns9
	 N7sUWTfjyxVVJ1znkcAFmau23GdCOPj9IkDPb4Zytq7534wlKPt9spiq8DOJnmesYO
	 0PsTY7BXjQIsJX+FWZN/KSz3wLLMxZ3rxuUvdYNSdVJE8SUL5b7oRTw5TL8eEqBG3l
	 rFXjFLDUmjrDP6VvTgWwzmBhS/ZfsokSjETF5uKBerxSMfN7nnDx8yrYDPcStZoPaH
	 SyvSZuzXJ+T9g==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 3018B13D0D59; Mon,  7 Sep 2026 23:51:38 -0400 (EDT)
Date: Mon, 7 Sep 2026 23:51:38 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev,
        istoppa@nvidia.com
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <ap-AmsGgDNFYLlw8@mit.edu>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh>
 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>

Looking at some of the videos which you cited, and your description,
what the kernel safety effort reminds me is the PREEMPT_RT patches[1],
so the path to upstream that was followed by the PREEMPT_RT patches
might be instructive.

[1] https://en.wikipedia.org/wiki/PREEMPT_RT

There were plenty of people who were people doing soft realtime
without needing PREEMPT_RT, but if what your project required
something stronger --- hard realtime guarantees --- then you needed
the PREEMPT_RT patch set[2].

[2] https://www.socallinuxexpo.org/scale7x/sites/scale7x.socallinuxexpo.org/files/Bryan-che-IntroToRealtime-Scale2009.pdf

I was quite familiar with PREEMPT_RT, since I led the team at IBM
which productized the PREEMPT_RT patches for use by the US Navy's
DD(G)-1000 Zumwalt class destroyer.  Also involved included John
Stultz and Darren Hart, who are still involved with Linux Kernel
development, and we got an IBM Systems Journal publication out of
it[3].

[3] https://www.researchgate.net/publication/220354037_Real-time_Linux_in_real_time

The path to upstream took place over many, many years, and involved
individual features that were useful not just for PREEMPT_RT patch
set, but also for other use cases.  For example, Futexes came out of
the real-time linux patchset.

So that's what I would recommend.  You will need to have a business
case to justify the huge amount of work to (a) implement Linux with
your safety certification requirements, and (b) get that work
upstream.  Since the company(s) funding the work will need to be able
to business income to justify continuing to underwrite your work,
having an out-of-tree patch set is going to be necessary.  There's no
getting around that.

Along the way, if you can find that various features in your
out-of-tree patchset can be useful for solving multiple problems
(which was the case with futexes) you can get those features lifted
out and upstreamed, thus reducing the size of the out-of-tree patch
set, and reducing your work to maintain that patch set.

Cheers,

					- Ted
