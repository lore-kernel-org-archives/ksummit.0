Received: from fhigh-a2-smtp.messagingengine.com (fhigh-a2-smtp.messagingengine.com [103.168.172.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0A63264EA
	for <ksummit@lists.linux.dev>; Wed, 30 Sep 2026 01:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.153
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790733508; cv=none; b=EIX2bHU8C05usJSLcMeqdRNVivMXzdvPfGXiflp+fr0obL33XwlWV5zWkB8ko5a8TI/2Vtm6aNwfOwExRwoLYhHJp1hv2gJ+GxW6bAqw42vGJsAzlieEZ2bTZcuh6R4aKVFrWGOXJh4Ku/0whx4viyI/RGBAFxgV95PYIX2/Y+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790733508; c=relaxed/simple;
	bh=+brTNzMiIBKnEmLsuBrZqbGsQQ3+e60A6dhPKonci0E=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=Y5QeQ6a1XvHt3zRDnppiwGhBybb7mQtJ5XyqMIzepmzVdB/Aykh8i2IIFHyT7AyUG9s0wbORXzq93lJbzUVxkNkpD4yDgEBr0h1zyE0e3f7jCt/qGBaKmucz9al0XJKfwQUXrqOFYwth+rO/vFMpOXZW5249/KDKHkRABjA20Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wolber.net; spf=pass smtp.mailfrom=wolber.net; dkim=pass (2048-bit key) header.d=wolber.net header.i=@wolber.net header.b=SUNyeEkY; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=l+/k3XZ6; arc=none smtp.client-ip=103.168.172.153
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wolber.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wolber.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wolber.net header.i=@wolber.net header.b="SUNyeEkY";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="l+/k3XZ6"
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 814C2140025B;
	Tue, 29 Sep 2026 21:58:25 -0400 (EDT)
Received: from phl-imap-03 ([10.202.2.93])
  by phl-compute-03.internal (MEProxy); Tue, 29 Sep 2026 21:58:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolber.net; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1790733505;
	 x=1790819905; bh=+brTNzMiIBKnEmLsuBrZqbGsQQ3+e60A6dhPKonci0E=; b=
	SUNyeEkYc5/MWOf0xMI6Pztp9u7iynVEfGfVKXZNpm3d7YgnZLNVilZLJ5tP/V+g
	oqg9L8QLPRM21J4BJMLd8f0hXt91IEih5YjQoEZ1ixFIPrDHdrNPM+hf1+pPHl1L
	Nh2TjwqiLHAWYltwCR+xRoYn2xvbGjmzaEbAV1nNUo6EgEBlevi4uN9n+K3JnGlY
	IRuhs9YV8e41xcjWtLs4tSl+xAMt4KXK8tTPqJOe7oSimBYxxrm88y1xoyHE+OwM
	J4eVCVoR1UH0IJUaqsV+7utd5fwEg0n6OgNg2uVtxAI+N+Aq3exunbxyjoMEsynH
	HAUF6WR2JWp+aspBwLA6fQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1790733505; x=
	1790819905; bh=+brTNzMiIBKnEmLsuBrZqbGsQQ3+e60A6dhPKonci0E=; b=l
	+/k3XZ6MTK2rhC1x+uObtt96D39Cqtu7TWaIYDzrnpZuRPaA0FZUbPJ9mO6fKLJs
	srxwO6M/GKMux1qG84f66USkOzdYqx/tZ79c+z4Ah57iJSmf8j9DAF0If80gLxcr
	570B08G7HzHKMD7g1N7C2XJZdEIQgDpUd315n8NNv5Wydz0bnv/KPhaKxXL1B8Ma
	5CYXwoFaGkTG2U5aytxNktISAUI851hXT3BcXpDKVc35uxPLNMXkxRIveG/jVeTI
	hF/T3dYSuKQE7cRZWvTKVmW4j0GExOFEXlVTfCZkP47JBmi74PuhbH6p00KPgwz3
	VwYzd556EE0x/LN4IXCXw==
X-ME-Sender: <xms:wWy8auRw84pZWtOtvaqhFg68IphmyBSzk84sF-TBb-HCLTWyL086EQ>
    <xme:wWy8aum80oa494Yj9QVNUIvI76_L9i52YuFtYPVcieuTP3_MKT1ckCw6OZp-R6Lce
    5OYJE16dArB3BC72jnLKbbev4BcFd9Kg4PRDtF9lSKHqAoB1EbIWA>
X-ME-Proxy-Cause: dmFkZTF+S+PtX6engCsafSv45Jg5dH/GAXnh3Y8XgPdLbLD9cAD1pOVLEV0rgXdntIubTp
    M5kQdYO+mLkxOhZlonFgcgPkAidFlilMVLLTyR+6l18AUDd935NMTog89o2oOgRZOJQjtx
    GNu9S+COkEjcLR3X/EaMt5s30JSzssBcY2YgniZni9J8h1vsL4j9qsTj9WyE+C8U45RRNB
    Qj5u0KQqXjBMtCcnE0PV4DL+ba94Engnw6n3y1LgasLU3JkvsnhvqMJPOvLmdE/HMgDSPO
    4If3Z1pyY81572co6BO6la6RjJ1lr9nDnh8xF3pYHn5IJ8Dw9t4P0k+j4jLFaPEnmbHokX
    s5+abx7pJZh6xA/yPx7xYo361j5duNWPkZTFfCwfp1h591ctAeTcydMF87KtYpBjwevI8Y
    3ZdmvSyGHM/M/QBpArKeSEH6be9S6aDX62J/swxW4+vVNvmDNMn7XdzxK0QMCFT+LWppZ/
    dK+s3+CetjVBfhaDTk1Li9j1kfN3kdn++hC/QmjsNdh05CHRLi9ci689TB1Jf4FIUaGC6f
    ruQ8as+PGuNdNOK/tN7eY/f9Vmi/Ws7k+qo4LUT4OWPT55Tw2T3dlCdZKwdaeqiJ8sTRYV
    UNscm/X/AsVNi4K1EGKx9nwDfIyFxFZwD8sOTTBAG2H5k62539QPU/65Di+w
X-ME-Proxy: <xmx:wWy8apwY38kLc2C3crzbVNpoJM1TWbnuq6xZk7_hsBF9pGKzMlN7zQ>
    <xmx:wWy8asWjXow10XcRWoRQ9DIuFyplKbTbNqz-8XY222_uPj--WZWMQg>
    <xmx:wWy8at-QKPewZfM_sUaYsxGGJ1_BZAr9vB8T8h2hNO3f0yVA_7i2wA>
    <xmx:wWy8anuABHebam1GdOYSYF6MA9o-1AQgdyNs74WPMi-rS9tLC3V0KQ>
    <xmx:wWy8am-vF1FU6IHCfM7i_Jq-5Q1CemOAneY9fsCcwnONnHIxGbThUVoB>
Feedback-ID: i5cf64821:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 0503D18E006C; Tue, 29 Sep 2026 21:58:25 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-ThreadId: AqdtmtEvmY77
Date: Wed, 30 Sep 2026 01:58:04 +0000
From: "Chuck Wolber" <chuck@wolber.net>
To: "Gabriele Monaco" <gmonaco@redhat.com>,
 "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>,
 "Steven Rostedt" <rostedt@goodmis.org>
Cc: "Theodore Tso" <tytso@mit.edu>,
 "Miguel Ojeda" <miguel.ojeda.sandonis@gmail.com>,
 "Greg KH" <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev,
 istoppa@nvidia.com, "Kate Stewart" <kstewart@linuxfoundation.org>,
 "Gabriele Paoloni" <gpaoloni@redhat.com>
Message-Id: <087c57b5-4ff0-48c3-8d44-fa8a7811c0c2@app.fastmail.com>
In-Reply-To: <7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
References: 
 <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh>
 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <ap-AmsGgDNFYLlw8@mit.edu>
 <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
 <aqARgWGWYG5kZW9g@mit.edu>
 <CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
 <20260908152921.3c90bdfa@gandalf.local.home>
 <CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
 <20260908191440.65efef15@gandalf.local.home>
 <CAH2bzCR3_DJOuW+jfkH7tkx-j4KbPJHVx2k2Z6X=+vaS6rmqng@mail.gmail.com>
 <7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by generalizing ad-hoc
 safety mechanisms
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

On Wed, Sep 9, 2026, at 7:44 AM, Gabriele Monaco wrote:

[...]

> Whether RV can be made free of interference to fit the functional
> safety use cases is still an open problem, though.

I think it fits, but not in the way it is being proposed.

It is less about detection and more about what happens when RV detects a
non-comforming state. You can only handle runtime non-conformance in a
"safe" way if you know *why* you are non-comformant in the first place.

This is why an ER doctor is at a significant disadvantage if they have
no knowledge of what got you there in the first place. Attempting to
remedy the wrong thing often kills the patient.

My understanding of Igor's fences proposal is that it attempts to bound
the state space rather than detect non-conformance.

If we stop using the word "safety" and replace it with the more correct
and far less glamorous phrase "deterministic behavior", then pruning the
state space becomes an obvious first choice.

Detection is in there too, but you have to have a plan for what to do
when you detect something. And that only becomes feasible when the state
space is manageable.

..Ch:W..
