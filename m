Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03D135FF6E
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 05:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786426147; cv=none; b=S7pg12YjqyH1srZ6vor+Ddn9Sj32ZvhDwPE055UzAnGOUoFgvxDg2uNvG8i6/k3MHOt2IFHPsYberJc6J0rVdm6uEaNVDs2VIZCHzyK/JpV49D+PWEzf2F/qXhJKaPY1YMwfCOTMBcYJWnZki3Hlb8K9hUM7+q8QQvyt1hJMPd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786426147; c=relaxed/simple;
	bh=UG40KTZlIiITD/pijtbAc+/92pLD2+qeM77iPsAJ8v8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZVhgGqaZjWDM98iihxbjdGyrEbUbx6thcA1Ea5nNppQ+1KChjRK/vqAuppx0cH4tKnRB326oDI4QtRfCArnB6g/ozrAFRl4c3POO1d/Hqd2LLT4evKwx6UkngsTKHp/mYyHPG1g3GuwHvRaaivgvXguK/ASGmhe7z6OVVaExL1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=egqqTbhb; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="egqqTbhb"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=lLjIymwgPsfvbeo9zedisFypugVEa+fERQrquD+NWa8=; b=egqqTbhb6iB5mruRIfbtYcdr4O
	8Dn1bAZ5nftCV7OQKR7K11WgTTjlIo4lw/HiQdbcwA92tHw7HS3Zu2OQ9M+LEBDxtQh2lnvifOJCX
	xPgL1nwleRMvrXQLj9JLZ5nM807nKt3OmLKpGaQ0yAaBgz1q2/mumgiSIKLK4AfE1BIELNxM42kLb
	nnGL54dx3AVRDPBucoqzYNO4fyVlY0x/DCfMH0F6CnQHorzS4+beo4fw5VAF8+a4TsfZmOUVLqJXb
	haXp898moBq9GKy4cOmBWbA22cjycQ7hpXGODFN4qgUmvghCZN/gb31q5femlEc+cFoT9B4yTJm4+
	aGibryiA==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtf2r-0000000DK0G-241c;
	Tue, 11 Aug 2026 05:29:01 +0000
Message-ID: <bb767aef-79e6-4019-9dac-929486db14f0@infradead.org>
Date: Mon, 10 Aug 2026 22:29:00 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
To: Dave Airlie <airlied@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Andrew Morton <akpm@linux-foundation.org>
Cc: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 "Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
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
 <aa8f4e34-906c-4a37-a8c6-623389addece@infradead.org>
 <CAPM=9ty=Kb7rqNg14UCJWz=GJuMbQMZpvsDxfEdgeqePDD1gXw@mail.gmail.com>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <CAPM=9ty=Kb7rqNg14UCJWz=GJuMbQMZpvsDxfEdgeqePDD1gXw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Dave,

On 8/10/26 8:24 PM, Dave Airlie wrote:
> On Tue, 11 Aug 2026 at 01:52, Randy Dunlap <rdunlap@infradead.org> wrote:
>>
>>
>>
>> On 8/10/26 8:23 AM, Mark Brown wrote:
>>> I don't think any of that stuff is really what's causing issues with DRM
>>> externally - for -next the issues I see are the constant cherry picking
>>> (which I gather is also an issue for stable), and outside of that the
>>> thing that comes up a lot is that it can be hard to get someone to take
>>> responsibility for actually applying a patch if you're not a DRM person
>>> since the responsibility is more diffuse.  This can lead to issues like:
>>
>> That's even true for simple kernel-doc patches. :(
>>
>>>
>>>   https://lore.kernel.org/r/46b86d82-6ff4-458a-ac7e-cbbae214b4e5@I-love.SAKURA.ne.jp
>>>
>>> or things where the DRM parts of a cross tree series look like they're
>>> being ignored.
> 
> Is there any tag I can put somewhere that for cross-tree patches that
> are just changing and interface, or cleaning up an API change, that we
> give you an Ack without getting one, it's really a pointless bit of
> review theater if something needs changing.

I'm not familiar with anything like that.

> or can I offer drm-misc commit rights I suppose, but yes we don't have

No thanks on drm-misc commit rights.
Actually I rather expected these patches to go thru drm-misc instead of you
or Simona handling them.

> a good responsible person for acking non-drm patches, and they can
> fall down the cracks. But if it's something that can get handled via
> another tree, then I'm usually fine with it just going in via that
> tree.

With the understanding above, it might be possible for Jon Corbet or
Andrew Morton to merge these patches.
They can comment if it sounds reasonable to them.

thanks.
-- 
~Randy

