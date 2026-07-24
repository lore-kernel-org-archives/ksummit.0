Received: from relay.hostedemail.com (smtprelay0017.hostedemail.com [216.40.44.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6350439021A
	for <ksummit@lists.linux.dev>; Fri, 24 Jul 2026 12:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784895914; cv=none; b=ZbhSDuRl2JsgMdOuu69cL133E3IZgjYhlbDJVzBCQW2VIXPcJ6NHfTC4685Ug90RCrBT1Jg0rdViuRpb4oWvMQ/AUbsgdD4mqia64u9UgWa8QHuvNIWY34d/71xSeXHHzYVYCaqKWad7TdwuIDgPLFmSZTcdOq5Tte9eckH6bA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784895914; c=relaxed/simple;
	bh=LCilE6jN+HxexhjbKOBereWbGS1K7J2w/LcCX8H6jU0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qki4XdykcbitQHGWsaZ/bhgOtqCencU/WlGefZTI+fM3lG0VrFItcXv4pr/ucaAX1/YqB70W2J2npsKelzl6C57zaRBoz48CEstHjnpWjAcM10vy7vPqdSCK4DAiXPdQxMAFPqYKDM4zH4pla+AdMSUx3b7rXwqmK8pLVmKaCiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf19.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay06.hostedemail.com (Postfix) with ESMTP id 60C3FA100D;
	Fri, 24 Jul 2026 12:25:10 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf19.hostedemail.com (Postfix) with ESMTPA id 5934120026;
	Fri, 24 Jul 2026 12:25:08 +0000 (UTC)
Date: Fri, 24 Jul 2026 08:25:32 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Tomasz Figa <tomasz.figa@gmail.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Linus Torvalds
 <torvalds@linux-foundation.org>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Roman Gushchin
 <roman.gushchin@linux.dev>, Jason Gunthorpe <jgg@nvidia.com>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <20260724082532.778f0b32@gandalf.local.home>
In-Reply-To: <CA+Ln22E2BbKoYHNKbeOeWZuNvH4r3dx5Of_cLg2Mf+xm+xLszA@mail.gmail.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
	<20260715185757.GA191552@nvidia.com>
	<7ia4pl0oymo0.fsf@castle.c.googlers.com>
	<CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
	<20260718010949.GG1889304@killaraus.ideasonboard.com>
	<CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
	<efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net>
	<20260723084954.42e6a6e4@foz.lan>
	<65fe52a8-d6e1-4c5d-ac74-6c731874db15@roeck-us.net>
	<4d27a17a-ddd9-49c0-8d6c-e044b28ffa0a@sirena.org.uk>
	<41cffdd7-af79-444a-a086-7861437c96a1@roeck-us.net>
	<CA+Ln22E2BbKoYHNKbeOeWZuNvH4r3dx5Of_cLg2Mf+xm+xLszA@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 5934120026
X-Stat-Signature: 6h6oq4z9z9cjqbuhnafhz7bqjr6rm7bf
X-Rspamd-Server: rspamout03
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18pMAbvfLfiE5SPIj5foElao+ExkvSwXRQ=
X-HE-Tag: 1784895908-810658
X-HE-Meta: U2FsdGVkX19h1rTMTQ7aBvrP04ZQximWiHM6K5vDCxAKc2jHC0Rg4KIYxuDauY0aO7b+IsSv/oSmbAcRFIPqaPLa1+9LhcjKoOieyKXNo9wTYivztnu/KfWUMama7p8BImCHJfsKt67FfFkbk/RPlyU/8/7heEpgQE3AodejPphebI7pWRtkUvvhEJCcEr5/oi1Sld7NaE8i+1gclgTs54sQXNyfbuIdODxUVg1qvgRY6elsQHxli8yxqxkQGAzQI/rMNJ8HycOAXNqMiHFtpvbB3nnzouDg9kwYd0laNYrvC1IyCvr2WaSiCuktZRjEWdlijQPRIXjO4ivUw6D0q0dMlkKR8U75UG8hcUwJpcD8eTdwNBp7fvvFzz2UptHbsNaZkZIpnUQ5uuBSpcRBVQ==

On Fri, 24 Jul 2026 09:08:14 +0900
Tomasz Figa <tomasz.figa@gmail.com> wrote:

> One thing that I find tedious when reviewing further revisions of a
> patch (series), and that would be exacerbated by having even more
> revisions, is ensuring that all the comments from the previous
> revision(s) have been addressed. Is this something that Sashiko, or
> some other review tools (possibly non-AI) could help with?

I agree this would be very useful to have.

> 
> (For a comparison, the Android/Chromium Gerrit, which is somehow so
> hated by the kernel developers outside of Google, allows me to easily

It's hated for other reasons ;-)

> see the difference between any given revisions, lined up with comments
> from those revisions, making it really easy to confirm the necessary
> changes are there.)

But yeah, that is one of the pros of Gerrit.

-- Steve
