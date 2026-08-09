Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0585326C385
	for <ksummit@lists.linux.dev>; Sun,  9 Aug 2026 21:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786312592; cv=none; b=YnnI1Q8tLh2osvxn8RA3qmpfFU+eG3JzsO3NoEESz986vzPZwVbc7OAhg2B1Ig/0CmPqejI4uwRGYkzziMTDt59b9M9ardonc01dW7G8a/BRZ/CKhQzSSjF9ubtoJaRTeJkYdtSygY7b0Ni/4IrUiAHxwecWoaTRm+tWIUbnSjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786312592; c=relaxed/simple;
	bh=RoZ1Q6ZXVqQO5cWLvaEjtBob/RS2Xjt6/5wGgGUbI5g=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=QfUC0ChzXkvVgQNm3yx84aEdbAC+5VyCvGXB1xgYsHQKkYno7caTILtoJ1Gszl3JfC1eAikrByWSffnJb2PD9K1uOoX+5NUYb7eOc/mDC+1VfPQGs63pE0D7b0sOtOcHWShCn7w+P21Ls96CAO6RWOJYz6xjER63U5Qnl1SYkcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=k9SGXOCL; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="k9SGXOCL"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description;
	bh=Ynm9V57sg5jDAYS63M/YP5ZL0EQinLd+lcVTZ9wwYM0=; b=k9SGXOCLkmAsZsqAArtDhCxYS6
	HB48S198jT0+BiVUYLxsC3JNOjf9NS82sPRYwsd0WpmIOJFU8pVgL/E9c/yf0VZDtuHBIypqfGAwi
	N2XDuWaWjEvhC4DMSzGsIzpfs/UL+7MnN2IQLBNVKp8MpYTBc+w/1CzpZ5I4Sk/ScPtGQ2UMGlA1d
	mymbVXGlIqGx27ysHtJxMEeKOt/ylbFpnhQuOplCsc/GLmOYRZf6NYSQJt4wQAB2+R5xxmqtDRP68
	m5JzHhzz2daiAg5ECTsGzTdrYVMQGl9/wAcvjAZGkstBa5LwGYDISodu9Nb8J3+4lsPzSxgA731Jp
	WzOL4jfA==;
Received: from [38.23.173.23] (helo=ehlo.thunderbird.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtBVI-0000000AmHR-3TqQ;
	Sun, 09 Aug 2026 21:56:25 +0000
Date: Sun, 09 Aug 2026 17:56:45 -0400
From: "Liam R. Howlett" <liam@infradead.org>
To: Jonathan Corbet <corbet@lwn.net>, Theodore Tso <tytso@mit.edu>,
 Linus Torvalds <torvalds@linux-foundation.org>
CC: Steven Rostedt <rostedt@goodmis.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 ksummit@lists.linux.dev
Subject: =?US-ASCII?Q?Re=3A_=5BMAINTAINERS_SUMMIT=5D_Time_to_cal?=
 =?US-ASCII?Q?l_it_quits_for_the_maintainer_summit=3F?=
User-Agent: K-9 Mail for Android
In-Reply-To: <87y0efi08u.fsf@trenco.lwn.net>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com> <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com> <anfUgiByUVffXlrQ@mit.edu> <87y0efi08u.fsf@trenco.lwn.net>
Message-ID: <006B9A78-D7A3-4684-91C8-BCA700487B65@infradead.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 9 August 2026 15:04:33 GMT-04:00, Jonathan Corbet <corbet@lwn=2Enet> wro=
te:
>"Theodore Tso" <tytso@mit=2Eedu> writes:
>
>> As another thought, when we had 100+ people attending the Kernel
>> Summit, that we would make a *point* of inviting people who had never
>> attended Kernel Summits before, so we would get new blood attending
>> the Summit=2E  After we significantly reduced the the size of the
>> Maintainers Summit to 30, we've stopped doing this as a deliberate
>> practice=2E  Should we change this?
>
>FWIW, in my role in the program committee, I have always tried to think
>about who we should bring in that hasn't been there before - with a
>certain amount of success, I hope=2E
>
>We could perhaps do better, maybe with a rule that N% of the seats
>should be filled by first-time attendees=2E  But we do also have to be
>sure that the right people are in the room handle the topics under
>consideration, and that will inevitably include a number of old-timers
>who have been there before=2E
>

As one of the maintainers that has not attended the MS, I cannot fully und=
erstand all the issues faced by the group=2E

But I, like many, joined the kernel community to be part of something bigg=
er than ourselves alone=2E  The decisions made are not financially motivate=
d, and that alone is worth praise=2E

Considering the size of the community, I would hope that the people in the=
 room have become more representative of thier subsystem or subgroup than j=
ust voicing what they believe is the right path alone=2E  If that's not the=
 case then I can see why the decision is upsetting; the process is disregar=
ding voices in favour of a known quantity=2E

I do find that the selection for the group does fall on the usual suspects=
, and I wonder if introducing some new people could help bring in new views=
=2E =20

Cycling a percent of new people through will probably not fix this=2E  You=
 will have 100 first dates to find someone that fits, and potentially 99 ot=
her displeased contributors=2E  That is, it is extremely unlikely the new a=
ttendee will get the traction with the regulars and walk away disheartening=
, offended, or simply as a fly on the wall afraid to say anything=2E  One c=
ould draw parallels with new patch contributors=2E

We do have more than enough people around in each core area with their vie=
ws of what's going on and how things should be handled  - which actually so=
unds like it could be a strength over a source of guilt=2E

We could have a reserved number of seats dedicated for specific subject th=
at are temporary seats that would be used for a specific topic=2E  As a spe=
cific topic expert or interested party, they would be less likely to stay q=
uiet or be disregarded as not knowing the workings of a specific policy=2E

This brings to mind something else which I've been think for some time, we=
 should have delegates when someone cannot make it in person=2E  Not as a r=
eplacement, but as someone that can speak up when things are relevant to th=
eir particular expertise - and potentially to help the succession planning =
of that subsystem=2E

Maybe we expand the group to two people per subsystem/area to better repre=
sent the diverse ideas that exist in the group=2E

Alternatively (or maybe as an addition) we could have pre-MS within each s=
ubsystem or related subsystems and a feedback loop after MS=2E  The idea he=
re is to at least have some voices heard by the maintainer going to the sum=
mit for each group=2E  For example at LFS, we could have topics for the MS =
to discuss with Andrew before he attends LPC=2E  We sort of do this already=
 but a formal process across all subsystems should exist=2E

Thanks,
Liam


