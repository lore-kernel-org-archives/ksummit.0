Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3305936F8F7
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 20:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786394130; cv=none; b=izX/yeMpPrt9U66LC1uFB97wY+vR829CRH1+9xwD6MyXx0ckiUVDBKXZ0+UY+Z/a22l8BKLYyTJhUVLJfBmUOOC9yu/9tnKqLo6yAdiJppNkbBiwnOw8jPHUjlpEV0N1YeQ6P4Nv5qjQXzf3Hl7yK1npl7fOXKCk9mfWhxijRzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786394130; c=relaxed/simple;
	bh=ncfuCPhyXMuYXsM5uOzB/XyN2VB11WEV9TtWTY3Yinw=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=s1761mWJErMw35/qR/hCJ2WYs9cD0++nZv3g6NdE18/TZFE+MqZ7/1jsJNSUG+r0XaVUsgwrwo8MNWdNgzvMjTiHoLhGUPwolZoyGdSCxeplteZZxm6+FW0HxXnxBsObeXv1sv5YQxQYGX8giXCqv6SIlzEFRgG4EqL47a8f5aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=dFjWB7o/; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="dFjWB7o/"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description;
	bh=SF239tqX8mnab8jz7X/a+tJJ4WO3s8DIXIS7bDXaLTo=; b=dFjWB7o/v/fTvsbkxO6GzvCf1z
	cqXN0GfC+FNjVqv+9uJC9H6a9aNhXbJzK+VQvyHXf7w1twF44i55Fb00euJzuth0/RI6XzqwoV/m0
	iSC54Zqsv0arb1fLmV+GGbjRzlJiQxvr+Bde3BOM9y6ISHPXxranXUV4PI+iXtqlryNh5IVbCIjUV
	XJip+J3kR6DeA+n0i0WquwzsHVCgVOt3vq8nqkFIP7WqvvmMPLrNwPpjsofYOcqQr8as6YfpNOFJB
	n+a2YTmmJJK7VBD6QGsfygX1SyteGGJGPajyGenq4WchcZLtpsNBVluQjZ0yajO4M40ijg1BMZbrj
	JBXWkAkw==;
Received: from [38.23.173.23] (helo=ehlo.thunderbird.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtWiR-0000000CqLq-0IAE;
	Mon, 10 Aug 2026 20:35:24 +0000
Date: Mon, 10 Aug 2026 16:35:48 -0400
From: "Liam R. Howlett" <liam@infradead.org>
To: Steven Rostedt <rostedt@goodmis.org>,
 "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
CC: Jonathan Corbet <corbet@lwn.net>, Theodore Tso <tytso@mit.edu>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 ksummit@lists.linux.dev, "David Hildenbrand (Arm)" <david@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Airlie <airlied@gmail.com>
Subject: =?US-ASCII?Q?Re=3A_=5BMAINTAINERS_SUMMIT=5D_Time_to_cal?=
 =?US-ASCII?Q?l_it_quits_for_the_maintainer_summit=3F?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20260810092003.5fda8e06@gandalf.local.home>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com> <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com> <anfUgiByUVffXlrQ@mit.edu> <87y0efi08u.fsf@trenco.lwn.net> <20260809170918.218792b2@gandalf.local.home> <anmHaRzbnY7rtLX8@gremlin> <20260810092003.5fda8e06@gandalf.local.home>
Message-ID: <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 10 August 2026 09:20:03 GMT-04:00, Steven Rostedt <rostedt@goodmis=2Eorg=
> wrote:
>On Mon, 10 Aug 2026 09:14:56 +0100
>"Lorenzo Stoakes (ARM)" <ljs@kernel=2Eorg> wrote:
>
>> +cc 2*David, Liam, Andrew as referenced below
>>=20
>> On Sun, Aug 09, 2026 at 05:09:18PM -0400, Steven Rostedt wrote:
>> > This should not hinder new people from being invited=2E As the kernel
>> > changes, new people start to have more stake in the kernel=2E People =
like
>> > Miguel and I would even argue for Lorenzo ;-) =20
>>=20
>> That's very kind of you and Miguel ;)
>
>Oops, Miguel didn't say that=2E I worded that wrong=2E Or at least I didn=
't add
>enough commas:
>
>  "People like Miguel, and I would even argue for, Lorenzo"
>
>As in, People like Miguel and Lorenzo=2E And I would argue for you=2E
>
>>=20
>> However I'm nowhere near the caliber of attendee the LF describes and i=
f anybody
>> from mm should attend it should be David as Liam also suggested :)
>>=20
>> In fact as David is taking over (albeit for a transitional period) from=
 Andrew,
>> it makes sense that he be invited _this_ year in my view=2E
>
>It's also about who is able to articulate issues, not just their standing=
 in
>the community=2E You are very vocal and able to bring up things that shou=
ld
>be talked about=2E If we have someone that is higher up the maintainer
>hierarchy, but doesn't speak up, they may not be as useful=2E
>
>I'm not saying that David or Liam wouldn't speak up=2E What I am saying i=
s
>that it's not the only criteria=2E

I don't want to be invited=2E  My only reason for being vocal is to facili=
tate process improvements=2E

Thanks,
Liam


