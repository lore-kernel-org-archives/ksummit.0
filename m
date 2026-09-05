Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AB91B142D
	for <ksummit@lists.linux.dev>; Sat,  5 Sep 2026 01:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788572947; cv=none; b=s0gHmhW3WWJrn0Yv20FtSq4J8Orqig7/rIHbJtbO1wPX6Z09YjDkWiqK/RSKFSvhDOtOuDSzfrz7bG9pnoo5T3azUedxmkF/Z5Vg5pPJ/U5mcin+JDeU8r8m2+l71disQ/kL6IMb2fo05XvUUkGKENsGFH8pBpbZUHMzj4Kdazo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788572947; c=relaxed/simple;
	bh=ZgJPZ0RSSJ2Qv/5DYd6BONJ4R0Wir+SDkktucoFqaIs=;
	h=Date:From:To:Cc:Subject:Message-Id:In-Reply-To:References:
	 Mime-Version:Content-Type; b=JuDNo7m6UXeCdPtgq+Etqbj4gyRbLnNCehmsCCGhSYTPPCY+/fXyer3iPbjlTnM53NjfuwkzprLJdYgndW0qsTLpBHvU8N2UW625FZVYXIDG78JupNegBCjYuA8dd9YzYcfLfBax9qMRyU7x/Z4gyFlvvNxO0Z4Y62cpI8VSf34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=eDlGBmxK; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="eDlGBmxK"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FAC21F00A3D;
	Sat,  5 Sep 2026 01:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux-foundation.org; s=korg; t=1788572945;
	bh=KCBYjcBFetUWiGPrDed8yUUBijDv19BEMzZKI5J4qV0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=eDlGBmxKLAPDXze9I+yiFfYENCMQ5z1fJQxEGrxKHHElfHyeZm4clDBI6c5oAQtc/
	 3uFpqRY9DCGA6F3bYz79PRJP0bm3YnBI8/F3Np/0/yONEbGM0Id3GF2ovpApA/vE10
	 4fEU2PnlWKZsry0WjytqVtJJusAqFU1epNkc2IRM=
Date: Fri, 4 Sep 2026 18:49:04 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Luck, Tony" <tony.luck@intel.com>, "ksummit@lists.linux.dev"
 <ksummit@lists.linux.dev>, Roman Gushchin <roman.gushchin@linux.dev>
Subject: Re: How to credit Sashiko with a Reported-by tag?
Message-Id: <20260904184904.7c62db0868ccb7d86fac3fea@linux-foundation.org>
In-Reply-To: <CAHk-=wgyDUCS-vz4fb1_0J9oMKiOooxsFc036x0RZa-sFcXfMg@mail.gmail.com>
References: <SJ1PR11MB6083385BE00A70389C211177FCB52@SJ1PR11MB6083.namprd11.prod.outlook.com>
	<CAHk-=wgyDUCS-vz4fb1_0J9oMKiOooxsFc036x0RZa-sFcXfMg@mail.gmail.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 4 Sep 2026 13:18:35 -0700 Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Fri, 4 Sept 2026 at 11:27, Luck, Tony <tony.luck@intel.com> wrote:
> >
> > I see 30 different variations so far. Most popular are:
> >
> >     211     Reported-by: Sashiko <sashiko-bot@kernel.org>
> >     142     Reported-by: sashiko-bot <sashiko-bot@kernel.org>
> 
> You missed a few other variations:
> 
>     Link: https://sashiko.dev/#/patchset/...
> 
> or
> 
>     Closes: https://sashiko.dev/#/patchset/...
> 
> which are sometimes - but certainly not always - accompanied by
> Reported-by lines.
> 
> And quite a few times I've seen Sashiko mentioned just in the
> free-form prose section.
> 
> Honestly, I don't think it matters which pattern ends up being used.
> It's not like the bot is going to be upset about the different
> spellings, so all that matters is that people see "oh, Sashiko did
> something here".

There are people (Roman is one) who trawl the commit logs to get an
understanding of how effective/useful Sashiko is being.

I expect that some standardization in how changelogs reference Sashiko
might help in this work.  Roman?


(Last I checked, nearly 1000 commits mention Sashiko.  God that's a lot
of bugs we either fixed or didn't add!)

(And nice statistics for this will perhaps help persuade Google to keep
funding the thing)
