Received: from relay.hostedemail.com (smtprelay0012.hostedemail.com [216.40.44.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBDE3C4B9A
	for <ksummit@lists.linux.dev>; Fri, 10 Jul 2026 12:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783685790; cv=none; b=QV7ELHp0elk6o0kmGQVlKWELSXyqjesUTxxIFRT2DcRb52gfGlSR5ey0vzxDecAJViUMeX7peiWwhnXqurxuAXryBTjpFd4EOduY+mRG4gXcpD6XFIH0nTn27crEP5uLcCN0W02arj8NOm/H0jifymr1sro4XDEiYfqCIz005ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783685790; c=relaxed/simple;
	bh=LDySB71eUrFbmsOdfinscvvDAABRx7BGJFrtV0/ecy8=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=rrfreDwBnae47cvKxdvdN1Knu9+lJ1BdJG2veoYiAeD0KUjfPyqd6iqhTj1OOJqM8CIk0kXCV7Iyy19ZANr/RmtwQgxsoen+ElZAU/qyYtIKXD++t0ZKxMfCOncMAFrIf2JbwD4eN16Ak1gFjXuo80jpnVgag7m34SvtPJAp8j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com; spf=pass smtp.mailfrom=perches.com; arc=none smtp.client-ip=216.40.44.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=perches.com
Received: from omf20.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay03.hostedemail.com (Postfix) with ESMTP id 3A6A8A03F4;
	Fri, 10 Jul 2026 12:16:23 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf20.hostedemail.com (Postfix) with ESMTPA id A44D320027;
	Fri, 10 Jul 2026 12:16:21 +0000 (UTC)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Date: Fri, 10 Jul 2026 14:16:21 +0200
From: Joe Perches <joe@perches.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Dan Carpenter <error27@gmail.com>, Matthew Wilcox <willy@infradead.org>,
 Kees Cook <kees@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [TECH TOPIC] Implementing malloc
In-Reply-To: <CAMuHMdUBHvY30ZuV=mpnkQ0Fip4vk0iqb252H9YNiOJ=AtPpyg@mail.gmail.com>
References: <akKBVsFBro_4QM74@casper.infradead.org>
 <202607090956.6381F35@keescook> <ak_WOfpcaZIuh99t@casper.infradead.org>
 <ak_rr7I4wVPieWYT@stanley.mountain>
 <CAMuHMdUBHvY30ZuV=mpnkQ0Fip4vk0iqb252H9YNiOJ=AtPpyg@mail.gmail.com>
Message-ID: <a3ce887f7d876c22f2a0048e6307fe75@perches.com>
X-Sender: joe@perches.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Stat-Signature: ny6u3jktsj5wgfngqc7g8967km57cc7c
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: A44D320027
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+0OZjQVhSr9UmQGAs+6UDep9uocWfOO64=
X-HE-Tag: 1783685781-417039
X-HE-Meta: U2FsdGVkX1/cJ9fz5kLMoOI0WGJNHbvbjjKdahTXt/mCYJdj9BHzlv+4h28w90PA4lXI8EqqTlzCOHLq/yPX3lAsH7d8rBYADsUppZH3jFvFV+Go7c4NdOjT7O8/HrflIXHV+arDIrpEGNAd42q148pRYpepvNoMiTxkbSpseTLbN99wmiepBHYjHWBV1frvjZBqDLOvRD0qHdbXqWvzHaCRADtjjft0i57FRHeVh15v4Zshl84ow/q8TJMrtu5GtyWRGQHi09wCMvwQz1euVvmGnjWKszT/g14uyZcpQ/9vSVJ4Gq30lTqsq0UC6OxI7PF2usHFvFSRjBlLtYQ/SrCeL5jCGlsBfEK2ELWWC87xYwzseU/CQrbA0/Q9vzbr

On 2026-07-10 13:21, Geert Uytterhoeven wrote:
> Hi Dan,
[]
> You know that most people are using the devm_*() allocators  these
> days and so they do pass GFP_KERNEL? ;-)

One day they won't:

https://lore.kernel.org/lkml/eed0c57a2c897e34d411229c3de41c5402791894.1781575297.git.joe@perches.com/

