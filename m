Received: from relay.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C28D3C2E
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 00:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784160238; cv=none; b=sGMUdopLx0LzzIoMgUxrRH4M8dOhxAU1GnK7hsyU1jqbwx9G48aR/VjbhEsrnnkj93Z+qAZic0cInTepa0kmdxkR+MssisuhbXkqRS1I7qJPfwMRbhAYFZy3qMNVvzuCdtCiaIlwiqRCjR8A9hGvxpPqrhaXbYVR5+Mt8kG/yqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784160238; c=relaxed/simple;
	bh=ANIvs2DI7nxk/EU4aA4KujzeIfgDqR9MdokytVGdY3g=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mIu0HV4/3GWlJpJbiC6RfwRWMXmLsSGjumgL7cNxNcg7aY1thRWExH3RkS0HA75iccMoBlxXVWUjIEN23lvxZg0mtbgcWx5fAM1tp/zC4m18rV8/1CeI+QIeWKM5eK+0t1Oud+bW7rJlUq+du8/VZwnpKXMma5jtNeKLd/QlbnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf09.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay07.hostedemail.com (Postfix) with ESMTP id 22420160346;
	Thu, 16 Jul 2026 00:03:55 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf09.hostedemail.com (Postfix) with ESMTPA id 8CCBD20028;
	Thu, 16 Jul 2026 00:03:50 +0000 (UTC)
Date: Wed, 15 Jul 2026 20:03:34 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <20260715200334.70390a27@robin>
In-Reply-To: <7ia4qzl45h20.fsf@castle.c.googlers.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: 9rtkbezh3h8djsftb4cmkrxo1y93odpe
X-Rspamd-Server: rspamout08
X-Rspamd-Queue-Id: 8CCBD20028
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18qPQsHfs5pJypACtn7IUNAtLU37IJBwv4=
X-HE-Tag: 1784160230-642620
X-HE-Meta: U2FsdGVkX19LSX3RyXDHXlKiyEHEd21X659/m8f96bscxTVrDiSZxgnmfAnl5Tijy77Ls1k1a77hzLCDxHVnMxRTLHFI9bauQHdueQk5ROGw9NI4Jp6dXtUhEkNt+fLQ1BLMCEH4/QWXC1g0AuIE2Fcw1MGcwBtOcRwFsKQQ8T21tVd4VMaeMIHAXKnBACt/1W1VE5WESe4On0uOidMN+inZpVnnVlS/gxobXpygPqY5q193x7onbO/EgXP/zbIKPGhgaiXryYcy4EZR3K5qqKioN4g01eJOXdsnbCNDmTAoyIZ4nM3ngPDDl9WqdK7NDRI4/Rwwf3aM2LBYQgdIRGV/IRNmksBG

On Wed, 15 Jul 2026 16:55:03 +0000
Roman Gushchin <roman.gushchin@linux.dev> wrote:

> Sashiko and AI code reviews in general have gained a lot of traction in
> 
> Some specific topics I propose we discuss:
> * Review of LTS patches and kernel releases.

Honestly, I think those that use LTS should get together and support
developers that will look at the reviews of LTS and push to get the
fixes for them. I keep hearing that LTS is used more than mainline and
upstream doesn't put as much priority in what goes into LTS (and stable
in general) as it does for mainline. Perhaps those that depend on LTS
and stable should be the ones doing the work.

> 
> * How to maintain the long-term stability of Sashiko?
> Several kernel engineers and maintainers have rightfully expressed
> concerns about relying on infrastructure provided by a single company
> without clear formal guarantees. It would be great to discuss what a
> more sustainable model could realistically look like and how we might
> get there.

As I believe Jason already mentioned, it would be great if we could
possibly get kernel specific model information that can be shared.
Possibly even with an open source model so those that want to buy a
NVidia Spark or something similar could run their own reviews ;-)

> 
> * Handling of pre-existing bugs.

I like the pre-existing bugs. But I do agree it shouldn't be sent to
the author of a patch. It should either be a separate review or email
that says "Oh I found these pre-existing bugs around the code that was
modified". I want to know what pre-existing bugs are in the code I
maintain, and I would love to make sure that it's public so that
someone else might want to do the fix ;-)

> 
> * Prompt development and testing.

No comment.

> 
> * Interactive mode.

Yes, this is something I would love to have. There's some unique ways
the code works that Sashiko could use to get better.

-- Steve
