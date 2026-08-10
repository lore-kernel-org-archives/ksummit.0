Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25BD2C15A5
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 15:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786377148; cv=none; b=PTFqhq3wlSBPrXvbmIVEAGFaghkU5iQ849/AJqQJMPpoMocuiMUuADroXQwTkgMIha/gbJ9aCYziNUriHv1pJFEzSTchLyfjhWMoHgGVHf3NPUkRJFdr/ttQxk3I+JPW1EBB4Jj5xW9IohANSikGFqxHRKPbA9jumX3ZHo6V+Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786377148; c=relaxed/simple;
	bh=q2n094dx2CWkdImfyFZpruXJ+JB6xTVFfQZ4PUxwgdQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SG0F/+7JfbGk4TnpxnBVVHqMrW6TBFlhCTxh32nEwR0j6u9SxJHdK4xVf+AHcBs02zE7aSwkd/Kju7xNqJRrDYirtGnl3wDciclMKHwJPy5Iimb5nMi9EEkh2haEQXD+Iva1i48qzql5vXFDKs7mW5Est83r93ILKfwv6ceKvE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=otITb7Pf; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="otITb7Pf"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=U6BG7G6e1C4MnYvKJxEbZOoKgNnj6dQIj+EF0fUsfwA=; b=otITb7PfbIrVAd0HVqoyq7crZ7
	F+c4VsAGr4YSJBVHUUojqWckeiSEB72jdTWIAaUF9eHxI93m2tg/GfV+U1If9CkNrHT+f1cfdR+mG
	UaLdCPvsHKK8Ti7Cd/3bQgyCQwu9+3Y7A6uFksFS901xG1mv/7A8t650LxYaST6qh8Vfoe7keOuQK
	5VQNUSZS9L1EflaZB7ywWPQtDZ0qykbs8UBPuD9WX3zVyylviOO76gqe0J1d89EU84BeSARFevY4C
	tx6HXsvHSk5w+JfwKrQFJP6UtqKl4gIcmHUNGVEzAQ7075YUS8QqoCAssiTwc7p2PjoNzLMJUGnt4
	OV0vo4fw==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtSIR-0000000CJUk-1mvh;
	Mon, 10 Aug 2026 15:52:19 +0000
Message-ID: <aa8f4e34-906c-4a37-a8c6-623389addece@infradead.org>
Date: Mon, 10 Aug 2026 08:52:12 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
To: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
 "Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Dave Airlie <airlied@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer> <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 8/10/26 8:23 AM, Mark Brown wrote:
> I don't think any of that stuff is really what's causing issues with DRM
> externally - for -next the issues I see are the constant cherry picking
> (which I gather is also an issue for stable), and outside of that the
> thing that comes up a lot is that it can be hard to get someone to take
> responsibility for actually applying a patch if you're not a DRM person
> since the responsibility is more diffuse.  This can lead to issues like:

That's even true for simple kernel-doc patches. :(

> 
>   https://lore.kernel.org/r/46b86d82-6ff4-458a-ac7e-cbbae214b4e5@I-love.SAKURA.ne.jp
> 
> or things where the DRM parts of a cross tree series look like they're
> being ignored.

-- 
~Randy

