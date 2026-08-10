Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A2B39F16B
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 07:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786346814; cv=none; b=fMEYrN5d3oM0JXQiWT8iccdmwjuPnfxG3ZQ5MVi9GYcemuHzGMQRvStxPL0dTFUPrd3QK9Q8LvvFDc+lbWNWeq+82p5LF2KRJAf0Y2QnWW0O9yI0kNThX+4TtCb8SvrgrDdBJ+3VcS9IRFxhtFLYRuIoQ0QjjeJFHAaoEvKPaFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786346814; c=relaxed/simple;
	bh=Gb6HliNiWbYVKK65jfl4nISkqr9AUMKA1Y6h0tfGgIE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B+rvSu47YbE2Ac5kUyhT0kq46Fu7iAhTU3i20hXfILgCuPQ0sBeNHVEmUNyMMDHbRW8cJqybaC/Nwtz78/ca2nfvn8EyFCsysSUgeUFBumoqPHFYcoEvN92/KkSeH5U6jo5yac7RQljiNaa4Vtponf2cVH73aqJAfPt6+VNagxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPyuMFm7; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPyuMFm7"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FE061F000E9;
	Mon, 10 Aug 2026 07:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786346813;
	bh=Gb6HliNiWbYVKK65jfl4nISkqr9AUMKA1Y6h0tfGgIE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BPyuMFm7y2p2C53d4UXb0qkkptPNYxgAxf/TG6gbbZApQUoBhnN5Hw7yaYCgSbdgs
	 3FJch6PU85hqr2TKknu/jPEi7uF3BPZPLnAke8x9wvyC0gWEXkuB/Y2sRaUE2lMUui
	 I3C8tuJ5P+kx3PniwtVpX3JQHR55klOXA6JVpkKAixFPC/LoveU14RZDl2YLR5touv
	 RQ/FOyzRmhTIfZ33JrDueK4NfyY/+ckpOLHRu+ylx6iZ8Qpzmfe8hRVukzTHdI9GTI
	 GEI1mdFyeORf3nLcPMuVdU79tcHdUBDAOQ53FbgE2Mfb/EbMo+x6gzJDkgpguA6LTf
	 809gdtz5TRz0g==
Date: Mon, 10 Aug 2026 08:26:36 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: Dave Airlie <airlied@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	Steven Rostedt <rostedt@goodmis.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, 
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <anl7CgkKb6tORavG@lucifer>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>

On Mon, Aug 10, 2026 at 08:10:21AM +1000, Dave Airlie wrote:
...
> I think people really have a misconception about what goes on at the
> maintainer summit, the best explanation I've been given was that it is
> Linus's staff meeting. The people that Linus works with closest, get
> invited to talk to Linus and help him figure out where the overall
> ship is going and where things are going wrong.
...
> Your language choice already makes it feel like you see it as some
> elite or special group. It's a bunch of technical project managers
> talking about the processes of producing the kernel. If a talk about
> the technical content of the kernel sneaks in it's very rare and also
> usually not of interest to half the room.
...
>
> > I mean I don't know, maybe it's necessary to run it as a tight ship of
> > trusted people, but I think we should at least be more clear about that.

I mean this is kinda my point.

It is being advertised as X but is actually Y. So say it's Y.

That's not what Ted's posts or the write ups or generally any comms about the MS
say it is.

The CFP-ish bit is probably pretty redundant too on this basis?

> >
> > However I wonder whether we should look at an alternative approach like
> > those with M: entries in MAINTAINERS voting on topics, or something
> > similar.
>
> Voting on what though, I'm already over the number of times
> maintainers with small potato problems think that the lives of
> maintainers with big potato problems would be much simpler if they
> just adopted their niche one-person mutt based review process.

Ah good to know core mm is small potatoes ;)

>
> Dave.

--
Cheers, Lorenzo
