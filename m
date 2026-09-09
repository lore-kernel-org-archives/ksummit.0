Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACCB492E54
	for <ksummit@lists.linux.dev>; Wed,  9 Sep 2026 01:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788917539; cv=none; b=rou1Ts1aY1WDJiugvaaLPKpkdPMCMjkk/p3N+tPr1/3cxSZKO9NRAuU2dtXH4yRY+6Sfge7UVohJdtAvvEKOe9ZD7FaV5RfDapq1VW/PY4ywnJdoNQ4XhA4pwcyr9FGQX3iqUky5HTFnt3VlrsGTMxh4kqllHtHd8etAwaD50L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788917539; c=relaxed/simple;
	bh=/JuQ1uWmzswZgmkh08XwQAnTGqnmsd07csBUYydRdR4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kosoNSX0Eo/6RZsXgC30u0s3gmaLqNcHv7Dv4Tf9DA+wCaIV6Sc94ksBaZJXP9F1tgNrW5lh+N/Jt/7CzAAcoFiEDoOjWttW/WGABEIOro27ZVN4Sw3ECcihqoKRKwqNiNOgsbl/GqjKah1DHMe21iOuufmBJzQvWgntXzNA0BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=HR13ShRY; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="HR13ShRY"
Received: from macsyma.thunk.org (pool-108-26-156-127.bstnma.fios.verizon.net [108.26.156.127])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 6891W99a001768
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 8 Sep 2026 21:32:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1788917532; bh=e6N/DDVII1jufi3zLBpWppyUDcVSuLrSrwHNMH7HAjg=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=HR13ShRYBNcy5F/2s6iYFdl4x/8un5n6U0fpqlxirIZxmCINexuuoqoi6vLmJpcFC
	 vfeqoAvZnhllgSfsG8vcJGGx8/0+GNr1QPnam0JU5m5SzJoVwfwqt0hmg1Rdr5YSj0
	 P42FXIEwmkf99nFOy3p4Y9P5xbTFzj+AXB5Q6ch6IgLNgpil89XJbrJlDwGLx8G07q
	 VTeoEC9F1T4+9AAWoZoRLu7CBgfzIJqBeD8v2lZmwnk/TLsGNNcgYgfTao9VR+0v1h
	 BI3oSppclXUXE3z2ZmSagXTu3CI1FYXAjXpvgT4/C7gzjFf+YE6Dbe4+BduKYX7tl0
	 JqfLZAu86riLA==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id CBB8613F06AE; Tue,  8 Sep 2026 21:31:08 -0400 (EDT)
Date: Tue, 8 Sep 2026 21:31:08 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>,
        James Bottomley <James.Bottomley@hansenpartnership.com>,
        Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev,
        istoppa@nvidia.com
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <aqC1_EGWSkFTQzM3@mit.edu>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh>
 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh>
 <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
 <132d2a682ce15be4d4f1d8586596dd874195c8c8.camel@HansenPartnership.com>
 <CAH2bzCT_iTLE59=QOcJXUG-mQ_ONDLc_iEbpnAL6-VY_MfTYKg@mail.gmail.com>
 <20260908114024.6165c1db@gandalf.local.home>
 <CAH2bzCRuoa9BPWr2wvHGe6XVU5gu_Z2kC8h4DZm4Ub+PiVfuNA@mail.gmail.com>
 <20260908133545.05cbbd74@gandalf.local.home>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260908133545.05cbbd74@gandalf.local.home>

On Tue, Sep 08, 2026 at 01:35:45PM -0500, Steven Rostedt wrote:
> Just don't Cc the maintainers of the code you modify, as they may think
> it's for inclusion. Cc'ing LKML is one thing, as the only ones that read it
> are those that are curious about what is happening around the kernel. If it
> has some marking in the subject that denotes the patch is for a fork of the
> kernel (that you would be happy to be included one day) it should be fine.

The one exception I'd make to Steven's good advice is if you have a
pre-established working relationship with the maintainer, and the
subject is prefixed with something like [RFC PATCH] or [PATCH SAFETY],
you can ask them to give their opinion of their approach in your patch
set.  (Especially if this is a feature that you are asking if this is
something which in their opinion might be ripe for inclusion in the
subsystem in the upstream feature.)

						- Ted
