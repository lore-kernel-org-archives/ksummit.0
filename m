Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBF0220F2A
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 02:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786329590; cv=none; b=YJHeOPVNFgC+zNHv09KmTU1x/FOvcmpszgrNvwVRV9UbR47oRaH+lk3RPcKkXzLkippxDrRrDMw/Sy2S0BJYtcTA/enapzQJVwI16c8cp0NjAaj9x4ks4+5F/NumT7FW52FIIPIB2MTtbo+Lbk45sQVPbK88iW8u7zay5JWm9qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786329590; c=relaxed/simple;
	bh=h9U3CPMFIh1Pl+Dg2uDNu8+IXbewnKkUWfsVL75Y4As=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=jQyzvrV1cgmxnvEbbBqpsVsyf7WhgLgH78FWccuu4WaBUx4zb0ea7FSwBjwcY1yN8zF+KtSBMquqHyGTh2gXMyY5Sbhz5T9EMXp4CKi229hqwDEWPoPB75NOXhOtUyjesikD9A+mwXewJzKaWljBuhFFFh03Ih387LnfgfznDnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=G2L+2odW; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="G2L+2odW"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description;
	bh=n+Pn2VUc48B+UzfO2XtYvlxutbxddNqImA/SgGD0gds=; b=G2L+2odWQt3NO7WiIJcKGPKjw3
	pHTLJDAt6G4sDY6ZNI2twXsjJC84RhrCpm/4Zqrvqpk+84PckzIjtzfH857Um/anwS7GbjRex33Np
	44JCpfPNMywx/8T3piSuW8Msf4aM8Vk7PRri6V0EHNKj0cWxM4Z0arsaXiw8T2QIUcGeDpW1F47CI
	jl9G/1aBlvcYzCoPvkYpFCmqbXc7iYpg4FiuPb6zr9GGzTF5bUKaswbyT+SRdP5qo6pbk1jDOCeTD
	zJLc6j2gesZTpPhLO9r0jNW/GATGB8VMy+Q01kEjAKnVFPDjU5+yev2OIZzhd024kfeNXYlR8YB7m
	IYMlT/rw==;
Received: from [38.23.173.23] (helo=ehlo.thunderbird.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtFvS-0000000AvLQ-0CxV;
	Mon, 10 Aug 2026 02:39:42 +0000
Date: Sun, 09 Aug 2026 22:40:02 -0400
From: "Liam R. Howlett" <liam@infradead.org>
To: Theodore Tso <tytso@mit.edu>
CC: Jonathan Corbet <corbet@lwn.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 ksummit@lists.linux.dev
Subject: =?US-ASCII?Q?Re=3A_=5BMAINTAINERS_SUMMIT=5D_Time_to_cal?=
 =?US-ASCII?Q?l_it_quits_for_the_maintainer_summit=3F?=
User-Agent: K-9 Mail for Android
In-Reply-To: <ankkb2siES7o86qd@mit.edu>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com> <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com> <anfUgiByUVffXlrQ@mit.edu> <87y0efi08u.fsf@trenco.lwn.net> <006B9A78-D7A3-4684-91C8-BCA700487B65@infradead.org> <ankkb2siES7o86qd@mit.edu>
Message-ID: <656C14F6-0620-4035-98ED-DFB990B6F0C4@infradead.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 9 August 2026 21:26:53 GMT-04:00, Theodore Tso <tytso@mit=2Eedu> wrote:
>On Sun, Aug 09, 2026 at 05:56:45PM -0500, Liam R=2E Howlett wrote:
>>=20
>> We could have a reserved number of seats dedicated for specific
>> subject that are temporary seats that would be used for a specific
>> topic=2E  As a specific topic expert or interested party, they would
>> be less likely to stay quiet or be disregarded as not knowing the
>> workings of a specific policy=2E
>
>One of the reasons why we discuss maintainers summit topics in advance
>is partially to create the agenda, but to also be aware who some of
>the interested parties will be=2E  And the program committee *does* take
>that into account=2E
>
>The other reason why the discussions on the ksummit list are so useful
>is that it *is* a pre-MS discussion=2E  Everyone gets to hear the voices
>who feel strongly about a particular topic --- for example, such as
>the AI/LLM discussion=2E  The voices and ideas that are presented in the
>mailing list is absolutely something that influences the discussion
>that happens in the room=2E

But not *who* is in the room for those topics?  I'm suggesting that you co=
uld select someone outside the core group to provide input for the topic=2E=
  It appears to everyone that the core group is constantly selected and I a=
m trying to suggest ways to help expand the views=2E  I am beginning to thi=
nk no new ideas are wanted, tbh=2E

>
>> This brings to mind something else which I've been think for some
>> time, we should have delegates when someone cannot make it in
>> person=2E  Not as a replacement, but as someone that can speak up when
>> things are relevant to their particular expertise - and potentially
>> to help the succession planning of that subsystem=2E
>
>As far as succession planning of a subsystem, I'd argue that MS isn't
>the best place=2E  For example, at this year's LSF/MM/BPF, the
>discussion over succession planning of the mm subsystem took place
>there=2E =20

I have no idea how you read what I typed and came up with this response=2E

Let me try again=2E

The memory management (MM) subsystem will have a new lead maintainer withi=
n the near future that will be representing us at MS (if we have a seat at =
the table at all)=2E  What happened differently last year and this year in =
the planning committee to account for this upcoming change and how it will =
impact MS?

Liam

