Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=18.9.28.11
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792442191;
	b=XvVas/xswmmni3lv6dBdcftgblS0Qd9RZ5M9KFCArrxP6oYU1Ifkz1JfVGkEnGRVfsyp
	 MeMLxyECQCioS/qA9Oc8YykvvwYGSZYORjIdKGYQ4V8Q5equp/EOfPXaavv5cWg8gDr3G
	 WyKD7A3rdCHDxOtya2AJcR9RsosSOToZMdpiVcb89WPHYuEd+Bn/uiHYe34EXgI9zFfPi
	 RXquOb2jFYo47v/q4JHOLyU49dHCEBkVeEECrCEgSwXwSWLPEtr5LqrIxRAN59XXWy29s
	 q0xhs1rhcNlsV3M/DELu3lDUDN8xJTSO2bm68x9ijXw+a45R/Tbaj5dyvdtxkrDNV8g==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792442191;
	h=DMARC-Filter:Received:DKIM-Signature:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=B6FtEfAfSM20kF3gL1QXFqVXMDj00WWmcxMKnNYkW/8=;
	b=hFI5D0Kq7LVhZZ/OItt6SjMKo4NMWmNl343tpOi2gr5Zxsf9CPhkUvUXdACO8sH1ewxm
	 6RL0elkEhgVBFi2V6NnbQ+IKOZg0eS5cAhN//dC8QVbGHigvyNyh15un2bVeVOwvJTLQE
	 7FGCp6h+35LjNfUEytqNSDvRgf+FsmgSUjW10wVt/LV82UqDEA+XjzcNwfDwB/jOdHQM+
	 lJ18petuyowdzdWKntTpmkiCWLZarULEu0McHa52NxMYRSK5RIHw43RVhvd3c7sG70sIx
	 hX7o8J+5lOI+6eOtG5dJ1Q6bfIXMi9eWeUPOCuMNi8XU9K6G2IspchzEBiOqnfTXTTQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=mit.edu;
	spf=pass smtp.mailfrom=mit.edu;
	dkim=pass header.d=mit.edu header.i=@mit.edu header.a=rsa-sha256 header.s=outgoing header.b=KgYYjjQC;
	arc=none smtp.remote-ip=18.9.28.11
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13399606A31A
	for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 20:36:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 13399606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=mit.edu header.i=@mit.edu header.a=rsa-sha256 header.s=outgoing header.b=KgYYjjQC
Received: from macsyma.thunk.org (pool-173-48-113-115.bstnma.fios.verizon.net [173.48.113.115])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 69JKaNJZ029714
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 19 Oct 2026 16:36:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1792442185; bh=B6FtEfAfSM20kF3gL1QXFqVXMDj00WWmcxMKnNYkW/8=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=KgYYjjQCsxUjZjuavPKuhRQn5TSUT2npd4i3Sj4VGAu2Td7a43acy2Sd0nPdGryQS
	 Q/T22Lgc/NM9POcuJXBJr8JlK4++jNhQrl2BvbFXYpOAo9hMn0oiJ78JqLdQDYcbcA
	 p2Rw+eIi2jFtOsZJN9E9LvV0VKZ7mJpJo72FtR9j2pjA6xKqwBeTWu1vjQhbQz2/EW
	 T3Lj1DURkqZmZHCnIaXG/WbmEbF8Qumdn1qDjQJntHOKsM89FtTmOic9WSJmo8hAIA
	 XRKEwiBSxsNKi2ZiE3Of0/ULDlkmzfCMx/3aB3rkaexd2YCkdm5/11S21kN7VbDDG9
	 v6M5in5i80Ajg==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 198FE219F1C1; Mon, 19 Oct 2026 16:35:23 -0400 (EDT)
Date: Mon, 19 Oct 2026 16:35:23 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Shuah Khan <skhan@linuxfoundation.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Jiri Kosina <jikos@kernel.org>,
        ksummit@lists.linux.dev, sashiko@lists.linux.dev
Subject: Re: Patch pre-submission to Sashiko
Message-ID: <atZ-V08qv8SHD3ZZ@mit.edu>
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <350c7564-a833-4dd4-abf3-b8488280b0fa@kernel.org>
 <a6670d97-bf2f-4027-95a8-c091144725c1@linuxfoundation.org>
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a6670d97-bf2f-4027-95a8-c091144725c1@linuxfoundation.org>

On Mon, Oct 19, 2026 at 11:53:27AM -0500, Shuah Khan wrote:
> 
> When a submitter uses LLMs to generate a patch, it is reasonable for
> maintainers and reviewers to ask them to use shashiko to find problems
> before sending it to us. Asking for a shashkiko run before submitting
> patches could become part of the patch submitting process.
> 
> How about updating the submitting patches document to add a section on
> this with instructions on how to run it?
> 
> This shifts the responsibility to run shashiko to people using LLMs.

If people are using LLM's to generate a patch, it would be useful if
we can make it super easy for LLM's to call out to Sashiko as an
sub-agent.  We would probably want to make it easier for LLM's to run
our kunit and selftests as well.  Basically, we want to push the work
to the submmiter, instead of expecting the maintainer and/or reviewers
to do that work --- especially since if it's in the agenting coding
loop, the LLM agent can fix the problem more quickly and without
burning human review time.

					- Ted

