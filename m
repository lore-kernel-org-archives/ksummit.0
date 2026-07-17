Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A7A394792
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 21:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784322907; cv=none; b=CZ2BJYfgRwZKr2rz8YgBR0IUOiJOmFnoxA1DoH3s8aTJkOrNW4Jq0LoYJn5LeKnUzpcdK+OdsUhBBQ40yOaTtPNfJYL9ug7nWOEUe8KoVM9WxOGbd7TbYcX3k1AL3VNMOzd88kClq4wsk5VKbERGyIDJwXihvvyalZnoRTsaAZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784322907; c=relaxed/simple;
	bh=Dzu/rrAyRbstNbH/DkwgGDJe8ds/HYUrn7FIvemPGlk=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=SOEifBXOibGCEmfSpwpkR173KQUauNszziKGSXEHs3tF4k/pptiP0ZGw2R1sMGoTnRIdMaOR/kK05EBdgup4nnS+KeHPm+ocKYr1XaSIqKm2KAfjN7TFe9xkrwxLwlxCkswxgtOGsK5lC/FqSyFuWAmemq6OZYSTUc6kwA4ujeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=maof7CI/; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="maof7CI/"
Content-Type: text/plain; charset=utf-8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1784322903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Dzu/rrAyRbstNbH/DkwgGDJe8ds/HYUrn7FIvemPGlk=;
	b=maof7CI/1sutO4P1tRRedCERqpdO2E34+lKgGMOLBQXmfiiskDF/nUSIR2Kv750AtyLvDJ
	XEl92eW59Cjv1l6FFui0QqoZzrbk9aqXNG12PPAEJAQpr/5/5HD6GK5a9M9OMb78/XMNLx
	mdiGpA5vNK3+yBHSVsOXxjiVnLNWey8=
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (1.0)
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux Kernel process
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Roman Gushchin <roman.gushchin@linux.dev>
In-Reply-To: <9e10dc4f-5d5c-4c20-831c-9137e719b337@kernel.org>
Date: Fri, 17 Jul 2026 14:14:49 -0700
Cc: ksummit@lists.linux.dev
Message-Id: <78346752-E2AC-4ACB-929D-70A45794474C@linux.dev>
References: <9e10dc4f-5d5c-4c20-831c-9137e719b337@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Migadu-Flow: FLOW_OUT

> On Jul 17, 2026, at 2:05=E2=80=AFPM, Krzysztof Kozlowski <krzk@kernel.org>=
 wrote:
>=20
> =EF=BB=BFOn 15/07/2026 18:55, Roman Gushchin wrote:
>> * Prompt development and testing.
>> Currently, prompts are maintained in two GitHub repositories and are
>> changed manually or with the help of AI coding agents. However, there is
>> no established practice for testing them, especially across various LLM
>> models. At the last LSFMMBPF conference, there was a discussion about
>> moving them into the kernel tree. I see some pros and cons to this
>> approach, but the ownership and testing models are not entirely clear.
>=20
> Prompts in a meaning how to parse kernel, work with it or produce
> reports: yeah, sure.
>=20
> Prompts teaching kernel code: I don't think so. I find it really
> incorrect approach to create a dedicated and duplicated basic knowledge
> for LLMs, instead of focusing on knowledge for developers. I understand
> that LLM has to be taught basics of C [1], but we should not duplicate
> kernel coding style or kernel rules into LLM-only instructions. Instead:

I agree.
I also experiment with Sashiko auto-creating prompts based on human
feedback in emails and initial results look promising. So maybe we don=E2=80=
=99t
even need to write too much manually for LLMs.

Thanks!

>=20
> 1. Fix docs or kerneldoc to have these properly documented,
> 2. Instruct LLM to read these documents.
>=20
> We do have tribal knowledge and it should be our kernel docs for the
> developers, first of all. If the knowledge is so important for LLM that
> it must be duplicated in prompts (just read some of the subsystem
> specifics at [2]), then maybe better add it to some guide "writing HID
> driver" or "common mistakes in Bluetooth", so developer writing such
> driver that will find it. And LLM too.
>=20
> I keep growing such codified and condensed (keep as short as possible)
> rules for subsystem I am part of [3] and LLM should read that one. LLM
> does not need dedicated doc, different than developers need. Well,
> except teaching C. [1] :)

This is awesome actually!=
