Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7056637F8AA
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 20:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786133726; cv=none; b=fTBz5NrL/twIkFPjSV2EQ/lE7OM2psDeQz57MfpkofjSsQxu6ndWz51lNp+PyHkLjZxYydOxVm/dBZbe/6mWZ5vobbAHeHd5qmIJpAKM9KUIaSM+tbGa4DEWzKTXAH2KNg6IP9iZRv59FU6j1whGmXujI8dPS9nU9VOeFf96xhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786133726; c=relaxed/simple;
	bh=Wq6A+DMjtld7ppcsBe1KyYBJpegJ1a9MES9KO9eLg84=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=dTenE4ZxzUsDbsaO3wv0x5xCU308UqRZwdtdv6QmbMWfr+7TTZ58+0lzg+Rx8w4uKzHdF2gAwuNgQcQw8K7502wp1nF3ziL4MKC6wWVGsJVNQm3Qr+D+hzqQlFAuwxh5pTO9WLYUdvrL2hh0wGpy8jx7MSIgS159V209VPIZOKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=rMzOL13D; arc=none smtp.client-ip=198.137.202.136
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zytor.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b="rMzOL13D"
Received: from ehlo.thunderbird.net (c-76-133-66-138.hsd1.ca.comcast.net [76.133.66.138])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 677KFAtw2868857
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Fri, 7 Aug 2026 13:15:10 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 677KFAtw2868857
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026072801; t=1786133710;
	bh=Wq6A+DMjtld7ppcsBe1KyYBJpegJ1a9MES9KO9eLg84=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:From;
	b=rMzOL13DG2cmjtrHhvojyr6EucGGAFAMI5KTY8lr3rpfe/FZnSMtEkcQkCtO/WRk/
	 icc+dHVCyKDuRFR+bUwnaCeKVbi1csJ6IXBy7LrVjWtEtCF8EmlDakCG/m6JnccXMS
	 KcI8pVmQuMXboBO0uC/CemoxmLAOnMu8XypZnbGjYdi5FxMRn2se7miTGO/2ja8Yql
	 shKaKJyvMxlL0VixpcowsvEV8RyffLgYIQYyO7Ph8MoA6ti75SoFCS1to0g/41DYQY
	 CG1TiG9EQxBnm7mkNZMUj1xAfcpZHP4blfIP2HaC/VmPAEvoqGz/HIREkiRcQpEkQ/
	 huTzTOlzqbhyw==
Date: Fri, 07 Aug 2026 13:15:02 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC: ksummit@lists.linux.dev
Subject: =?US-ASCII?Q?Re=3A_=5BMAINTAINERS_SUMMIT=5D_Time_to_cal?=
 =?US-ASCII?Q?l_it_quits_for_the_maintainer_summit=3F?=
User-Agent: K-9 Mail for Android
In-Reply-To: <8f07d379f3f4c67b2a9a62330e43066d312d42a4.camel@HansenPartnership.com>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com> <20260807125825.GL2201016@killaraus.ideasonboard.com> <8f07d379f3f4c67b2a9a62330e43066d312d42a4.camel@HansenPartnership.com>
Message-ID: <D97C9783-9D8F-4F66-B572-32EE1129722E@zytor.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On August 7, 2026 6:09:05 AM PDT, James Bottomley <James=2EBottomley@Hansen=
Partnership=2Ecom> wrote:
>On Fri, 2026-08-07 at 15:58 +0300, Laurent Pinchart wrote:
>> On Thu, Aug 06, 2026 at 11:34:09AM -0400, James Bottomley wrote:
>> > What got me thinking about this is the obvious funding problem: MS
>> > is free to attendees, but only had one sponsor in 2024, none in
>> > 2025 and is on track to have none this year=2E
>>=20
>> The sponsorship prospectus ([1]) indicates that the "attendee gift"
>> category is sold out, does it mean one sponsor signed up ?
>
>The LF paid for the attendee gift last year=2E Since they have to be
>ordered some way ahead of the conference I'd guess the same is true
>this year=2E
>
>[=2E=2E=2E]
>> The maintainer summit is limited to 30 guests, plus up to 7 sponsored
>> attendee according to [1]=2E Assuming neither Linus nor the program
>> committee are counted as guests, that would be 43 people in total, so
>> a rough cost of $2500 per person for one day=2E=C2=A0
>
>I take it you've never seen the bill for attending a USENIX (or a lot
>of other) one day events=2E
>
>> I understand that hosting events in large venues is expensive, but if
>> the maintainer summit is an invite-only, separate event, would it be
>> an option to drastically cut costs by hosting it in a nearby but
>> separate location ?
>
>Is there any point wittering about your speculated numbers vs mine?=20
>The bottom line is there is a cost and someone has to pay it if there
>are no sponsors=2E
>
>Regards,
>
>James
>
>

I think it is worth in all of this to consider the following somewhat bigg=
er question: what are the things (not just events) that we cannot expect to=
 be individually sponsor-covered in the long run?=20

The whole mission of the LF is to provide funding for exactly these things=
 through aggregate fundraising=2E=20

To me, that comes in a few buckets: ongoing infrastructure (e=2Eg=2E kerne=
l=2Eorg), fellowships for senior architects like Linus and Greg, funding pr=
ojects that are highly critical but not "glamourous", and urgent assistance=
 (legal and financial) for members in the larger community when either some=
thing catastrophic happens (e=2Eg=2E the xz disaster) or there is a brief o=
pportunity window (we had a few day window for getting sparse relicensed; I=
 had reached out to LF for legal assistance but never even heard back=2E In=
 the end we had to wing it without any legal help=2E)
