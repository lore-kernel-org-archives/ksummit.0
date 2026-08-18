Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7FB30FF2A
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 13:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787058573; cv=none; b=m/5RtFfmjjjjOv80WhkWMlrQgL8p16GUo63Fv2sart3eHHDywRUnq0CyzDO+DF4X27qwFv5epInfugjI2jA/+5MmrKZhZGF2O/za9UFCIHcz/66XWsxbrYYO0cXZu5AW3qXXK5QYLSR2u6PwlnZ7KR3Y4y3886v9q2lehhzMeFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787058573; c=relaxed/simple;
	bh=IqY45mI8URFyVE0Q4zvm2KDWuXaEb7SuHPDGPiQNZXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CrIvgDjDMNEYbZrZLWa7a0dQr1UFcxiA34CcMwqIlBZdiytniTBoCxWHT9xqMyCEw/zpMHQq/ELfPXioFJHCqbCkxzo8GGJx23yBB+U5H875zovaiSLRMa97MwMhcfiVQyrApfDE8Tz8VTStPpFEvQgaK4xcxv6e2ba177V5KsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=28CnqS70; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="28CnqS70"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=DAcDbp7ee4boJIm9Ul5KYOkSLVyxVm682BVB8rX+zI4=; b=28CnqS70tuw49wKEORUQT75ooQ
	JkLKdqwji0qcQUUl94QsLtJCnjXEe1w1jb6uoWM0RgUGQe125IcWnE0tFYpUmAZKNfHmYXmy9+sCp
	u2TWJMcpSdnNAufA/XVDQCtw5veH3ulE/iQMuJbNkTf0NKPxcHGpwFwj0uS2pipKOoPseU5yubJVu
	xsKLY78mRX1kr7zV+XoRznrhLlAZbBNA1y7s+PilbCIlov2C/0aj+0UA1No0mZENqRwIXu9eoqIf4
	pj2STe8HtCOf2xqsCcvvDcmKjAn9GixYviOLVwvGH3gl926Eg3ZGFTm6HwMUg4hJ4Y+5+ko2P3aYz
	V7SuSfmA==;
Received: from [38.23.173.23] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwJZG-000000080iW-1YZ3;
	Tue, 18 Aug 2026 13:09:26 +0000
Date: Tue, 18 Aug 2026 09:09:22 -0400
From: "Liam R. Howlett" <liam@infradead.org>
To: Theodore Tso <tytso@mit.edu>
Cc: Steven Rostedt <rostedt@goodmis.org>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, 
	ksummit@lists.linux.dev, "David Hildenbrand (Arm)" <david@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <od7zzwh6dqabzqyz6tlvd6n4uibcqvnhohikbbmjxwjjtpnjjw@xnkg7kwr2zz2>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <20260809170918.218792b2@gandalf.local.home>
 <anmHaRzbnY7rtLX8@gremlin>
 <20260810092003.5fda8e06@gandalf.local.home>
 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
 <anppSi8oQvvODOI2@mit.edu>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <anppSi8oQvvODOI2@mit.edu>

On 26/08/10 08:14PM, Theodore Tso wrote:
> On Mon, Aug 10, 2026 at 04:35:48PM -0500, Liam R. Howlett wrote:
> > 
> > I don't want to be invited.  My only reason for being vocal is to
> > facilitate process improvements.
> 
> Liam, do you have any concrete process improvements that you'd like
> propose?
> 

When succession is happening, it would be good to have the new person
shadow the outgoing person.

Thanks,
Liam


