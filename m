Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95D73612E0
	for <ksummit@lists.linux.dev>; Sun,  9 Aug 2026 18:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786301253; cv=none; b=q40GvxsOpH3X42YxYB7GjBa8kgvBjkS+VfZQBqrvTHs8ws4gznfOjLB0jyk6b0MudqZ3zQM+zpOYiWALRVyuesLUGvowbGNK72Bh7U7l3lTC+ii9VPKIY39HEyW5NbqNd6TKvHqV0DWpnOdXLsED8F1CuzrjG68g8cYfnwI8NGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786301253; c=relaxed/simple;
	bh=a/KhQrXhgxCfBlwcANO2olMNr8WMVXJJeFNw+4xDi2A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ltPdf3NAZgDiqslIuU5PpVO2rdkFFuBn3h1wYX/Yb3Yp2YCBU5S7m4VxsLm/W8mOLgtnXIPxyq5mYWp67YT53pUmPVvV46KH0pdWuDoBXvylsFLTgiNWmT6FaFxDyKW/2T9WxNz9emJx8WMCWa5doqHol2ztQNGtJVtaa0SXKmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=trPeI8M9; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="trPeI8M9"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=KTY7I1oQbKiTrwLuQfdd1MVFzbW4yGfbck/EMwLqnkc=; b=trPeI8M9rr/cFhQeYM+KvYmoGY
	xxoAhn0vYSiHO0ayKQmsY5R/UMn4dqEm00Wv00OoB03T+GiE0cyunV0kZxmv49HVA2pM6tFmsHjxY
	zOvyyoMlzNHWsiTewaRpnHRMAeAw2uibg7TOE4kwMVOU0LhfnnStsE4BQ/O96GWf9Pc+nH7oZOiDk
	XljLMh7UBjGOKNbc/lY5qYf91bXdcfP7bDNmFE7Tut4Stl+Nh+0tn0enPqHXUvaN68KHGQBFZO/CE
	YvldXHuxQIe2fH6U83oMNoZT2uBDqQBcGGkBn/3yXTvU2XmiGCCtszoEJu9jWUjifsyolZpBhQqb4
	KlAOuWCw==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt8YO-0000000AalF-41fK;
	Sun, 09 Aug 2026 18:47:25 +0000
Message-ID: <48552534-ab4f-474f-ab6f-d09a1516e610@infradead.org>
Date: Sun, 9 Aug 2026 11:47:19 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
To: Theodore Tso <tytso@mit.edu>,
 Linus Torvalds <torvalds@linux-foundation.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 ksummit@lists.linux.dev
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <anfUgiByUVffXlrQ@mit.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 8/8/26 6:51 PM, Theodore Tso wrote:
> As another thought, when we had 100+ people attending the Kernel
> Summit, that we would make a *point* of inviting people who had never
> attended Kernel Summits before, so we would get new blood attending
> the Summit.  After we significantly reduced the the size of the
> Maintainers Summit to 30, we've stopped doing this as a deliberate
> practice.  Should we change this?  For example, we could decide to
> include a few people who aren't currently acting as a maintainer, but
> are fairly prolific contirbutors / reviewers.  I do *include* such

I think this is a very good idea and would like to see this change.

(and I'm not looking for an invitation :)

> people for consideration in our ballots, but they tend not to be
> chosen by the program committee.  Should we change our criteria to
> explicitly include a few such folks?

-- 
~Randy

