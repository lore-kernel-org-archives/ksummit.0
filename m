Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B1243F091
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 21:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786398313; cv=none; b=eeeQrCK4LqNvrdFv80cTMhRjK8cv30/yXcltwS67f7Ege1EmVWPEf8XjQx9UhHq70lDD0ciMC0RfRacVP5P7ymV4Qdjcu+7ImOxPwVcoYHXRiyqCfcUIxNWI5uTnTQlURIbnkTLOOuwTbZ3alUWBWk+MRTvJSmuZ6JxMJ2wH3AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786398313; c=relaxed/simple;
	bh=HtFPoHiXhsgQWgGKV6R9Iy6JVpQultpfD/Cb5UOSLTE=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=TkAtq6s77kNDm51go13O5UmI5IGY91XnV91js8aV8wqs3nFtp+YOmNBb4gx8a4zLSUjGpwcq7bwYjiR5QcUVIaSvSGVFcz0RQ/T4XQUOnh1upEhN8LaPETswD+jPLMfwoJ0J39sdE9lmlOTgbL7uODjOlrxoM39y7Ss4t8HC0V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=OSYrmGjK; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="OSYrmGjK"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description;
	bh=fDSoZ8aV+G3aRQiHFwIN1ZZDuhtGyPPpEazhlNPcCR0=; b=OSYrmGjKXFGXxTLou6jWwHw2Dt
	yJFxLbUxi/KFyBmPoPwyjaGlvopcOjDYA74nNCeab4aUQKHmBMBNyJmqDWMuwD4ff2ZZUe2EVarLd
	oFsBuDAggeIZZaRCQ/DTD0qx1EcX2SJT4cltfZoPakubMS3c7OAagoZhvkLCJ5o54f5wrcTCmCrBm
	fmLL7Xf9wAobbSdrWQpa2ULM77RK3GKEGmHyJwWcy3+xGJlGMB7ge4LP3h3MxdBUR1+wrGpfxjQJJ
	fmD87ItgtJfz1/laXQ3ZLKFSBxdMQ6OqJtIfvizv89GT9PMM6vqlqHHkD0wtanvLCannlQQL2pYF3
	CICFpG4g==;
Received: from [38.23.173.23] (helo=ehlo.thunderbird.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtXnp-0000000CvPH-26Px;
	Mon, 10 Aug 2026 21:45:01 +0000
Date: Mon, 10 Aug 2026 17:45:29 -0400
From: "Liam R. Howlett" <liam@infradead.org>
To: Dave Airlie <airlied@gmail.com>, "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
CC: Linus Torvalds <torvalds@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 ksummit@lists.linux.dev
Subject: =?US-ASCII?Q?Re=3A_=5BMAINTAINERS_SUMMIT=5D_Time_to_cal?=
 =?US-ASCII?Q?l_it_quits_for_the_maintainer_summit=3F?=
User-Agent: K-9 Mail for Android
In-Reply-To: <CAPM=9tybMTBw0iz2BSQ_p+3ybk=SmoLuRgiyyE6BP+=1+2RkfQ@mail.gmail.com>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com> <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com> <anii3u-87kSrB9K3@lucifer> <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com> <anl7CgkKb6tORavG@lucifer> <CAPM=9tybMTBw0iz2BSQ_p+3ybk=SmoLuRgiyyE6BP+=1+2RkfQ@mail.gmail.com>
Message-ID: <F06EE533-9F8C-4869-9C27-5D8D79D8DC8A@infradead.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 10 August 2026 17:30:48 GMT-04:00, Dave Airlie <airlied@gmail=2Ecom> wro=
te:
>On Mon, 10 Aug 2026 at 17:26, Lorenzo Stoakes (ARM) <ljs@kernel=2Eorg> wr=
ote:
>>
>> On Mon, Aug 10, 2026 at 08:10:21AM +1000, Dave Airlie wrote:
>> =2E=2E=2E
>> > I think people really have a misconception about what goes on at the
>> > maintainer summit, the best explanation I've been given was that it i=
s
>> > Linus's staff meeting=2E The people that Linus works with closest, ge=
t
>> > invited to talk to Linus and help him figure out where the overall
>> > ship is going and where things are going wrong=2E
>> =2E=2E=2E
>> > Your language choice already makes it feel like you see it as some
>> > elite or special group=2E It's a bunch of technical project managers
>> > talking about the processes of producing the kernel=2E If a talk abou=
t
>> > the technical content of the kernel sneaks in it's very rare and also
>> > usually not of interest to half the room=2E
>> =2E=2E=2E
>> >
>> > > I mean I don't know, maybe it's necessary to run it as a tight ship=
 of
>> > > trusted people, but I think we should at least be more clear about =
that=2E
>>
>> I mean this is kinda my point=2E
>>
>> It is being advertised as X but is actually Y=2E So say it's Y=2E
>>
>> That's not what Ted's posts or the write ups or generally any comms abo=
ut the MS
>> say it is=2E
>>
>> The CFP-ish bit is probably pretty redundant too on this basis?
>
>In my opinion, quite a lot of the problems that get raised by the CFP
>on this list, often get resolved on this list, which to my mind
>suggests we just need to have a better year round maintainers list
>that doesn't get consumed by patches or internal subsystem matters=2E
>

Reviewed-by=2E=2E err=2E  Yeah, this sound like a decent idea to explore=
=2E



