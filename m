Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DE52FBE
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 05:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788843938; cv=none; b=fYDJIiwpuIKkj5kECLj/2iFJ5GZ/A14DnJj7CawS6gp+NRpBQrTtScRCuCyat6nJquIP86m1Q35ipnvio3++5cyQD0i2b4ho5vKQtYv6y4a9Pbiv3gj9wHbB8c9lzkj5vmRTeFQQhNFfSjXtsdCBNOA11s5pBX4b8v4iAPmFAQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788843938; c=relaxed/simple;
	bh=9YVWQgO0GonmXG6Bjq/bHh1WAqiNpOoh+tPWsrcNKhg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ggo2TVSSFtA3E57KT22tQlAA1pz/i8ta2yrMNK+T1vrKKdR3zCLHIkRXUGn0veSII9PuvdesBHjB1JkXX4iOU8Cz/nBYZPk4rYuAkr8UCJJsvourybZO9r26t2DQyGlQsGAnjIlnMwBwbLAAZpy5EbP5lbdhdIjtAiZx3xWwfYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=oP++giPW; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="oP++giPW"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 810561F00A3A;
	Tue,  8 Sep 2026 05:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1788843937;
	bh=mrsi200LZtMueZ0NusOdFzWdES4GUve67ZPbfEJPyaM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oP++giPWl1d6suMTs3zIcjBsBV0U6K//NJ0WrCvzQnp7yOyvCkjoGlSlddYOLH61s
	 IHmOpN/DrpkQfx0M5WPhkUjpd242XkcREqZhzISVcI//dH78Q0lGBhKaJ+Ydj/Q8We
	 E//3NBn7tG3LUSc8JWB9UTxqzgeFZVWwnnypL87w=
Date: Tue, 8 Sep 2026 07:05:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: ksummit@lists.linux.dev, istoppa@nvidia.com
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <2026090810-yen-tablet-8843@gregkh>
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

On Tue, Sep 08, 2026 at 12:42:32AM +0300, igor.stoppa@gmail.com wrote:
> - if indeed there is interest, then we can try to prioritize this rework
> But we would also seek an agreement that the final shape must
> still satisfy our safety-oriented needs.
> After all, what would be the point of upstreaming something, if then
> the end result turned out to be unusable for our main purpose?
> It needs to remain compatible with its original intended use.
> That is one of the points I'd like to explain.

If you don't even try to create something that can be upstreamed, and
submit it for review, then there's nothing that we can ever say other
than "I guess they never tried" :(

> >  If you don't have working patches, there's not much we can
> > really comment on, right?
> 
> I did not propose a code review, though.

But that's what we care about, working code that solves a problem that
you have, in a format that we can discuss.

> I proposed a discussion about the architectural changes supporting the
> features we have implemented.

I didn't see a specific feature, nor how it was implemented, in your
email, just some videos which aren't really "reviewable" at all.

So, along with what Ted said, turn your ideas and proposals into
something that meets your and your customer's needs, in the format which
we can actually review it in,  and submit it for inclusion and see what
happens!  I don't see anything "special" about your topic from any of
the thousands of other new Linux kernel features/additions that warrents
a change in our development process, do you?

thanks,

greg k-h
