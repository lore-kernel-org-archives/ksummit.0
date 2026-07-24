Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49063D9551
	for <ksummit@lists.linux.dev>; Fri, 24 Jul 2026 14:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784903224; cv=none; b=HdA65RsKrtFaYgsAdy9S1AYyxG9DYM3r20vjC+pXCckcgUADw2tmy3lJpw8OpI9S7yfsCPGSBsLkbN5/UqwA0e15rYJFTM4f8miHZ30UauCZLDzfh1feoEeQiXU85zA0GsVsshENaxJruwSSVu6WzYZyG96CmOjRPM5V8LPM/C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784903224; c=relaxed/simple;
	bh=kMfBerGSTcbkjIBdaOWV5jwNBVDbG3bYAeZ2FJuz5x0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rcorUpm3yYjrBVBw8wBvcY3YeFD/09D3qLqWRcr0x03EeIJcjb5PbFdKVJv3DtPHGAOZlsISgszq8Z1cR13bkV2xspgQAqKi1rbA5R+E2p4ad7VvImARjHnsjD7heSEpYpLluJmdMVkCylCGX6/CK3qI6NTZz0mXg2lL64yt/LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kroah.com; spf=pass smtp.mailfrom=kroah.com; dkim=pass (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b=QwDH3M1U; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=fp89J3yG; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kroah.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kroah.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b="QwDH3M1U";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="fp89J3yG"
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.stl.internal (Postfix) with ESMTP id D0D947A0292;
	Fri, 24 Jul 2026 10:27:00 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Fri, 24 Jul 2026 10:27:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1784903220; x=1784989620; bh=NdQHLCE+Sq
	g1xoy9MGK7ZnOBhoUdDYoHIs+VTnjWhJA=; b=QwDH3M1UKZtvLVFdqty9qg73yB
	9TvJBXpnFrnD4NjQqHwVMLRAh6au/PFIJns58jFNdXHsFrgO9Bw7VvCkfnKzkMz9
	UpidnoA3s0QLXxYh8lDARIwaXzlLSWks06JfcknW2D6ub71DLShExpuf81fsKAIa
	J8uu874L14lGmDhVQLkE1qZbR5euUVlz/DCavHt/NBAIeBoWVoGO8xZHw2EJPJcY
	gcwK88x/Jfn32QPzPNSdO8Y8wyTdK+MNNd72t+h+/kMRWEK3CtYSpZndrJZ0Ae9H
	4B/QYqiL+MdSq8cveqDjT77a64kMYn+ajwS2SGObAqqPH7a5La5XrG6X/pLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1784903220; x=1784989620; bh=NdQHLCE+Sqg1xoy9MGK7ZnOBhoUdDYoHIs+
	VTnjWhJA=; b=fp89J3yG1pPosUgzIfpofZwmDGObESPAriDwqwrCJkmtmpxt+3z
	z/Hd16Sw3xkjDeLSmR9ggS3z9iHxsgjGmwkjCovENn9IOGvh97495HS/wDciD7ZZ
	90Ok4do0AqViZ1WeEICS26fBP4VdP/9DLiqGtj/agWGMR/Na+sMx4i8MittL6HNX
	MHHKTuSDh9FB3V3Mwj7y/tYo0x22VdT4sMOu1VbYsQPKVpBcys5XuLNGYSh0ML+L
	99Pjw59csta6fUtIQYBnAJfyTN77kEEKDPtqIeYds5hT0RL79KuhZZUaf3xf5SD0
	N1BbvJxwdBgw9JaS6GzaROlootjMy0Z3O8w==
X-ME-Sender: <xms:NHZjag3Dvq4dumIVChD_Wu9KvCXaEqZUYSzay4CWbvbt9QwIcp_3sA>
    <xme:NHZjagRJsQjvhHE2eVkKKSiJ5UsTFlQ31ThZdXbIFGsTe1btI6nrsyjaw6JD0Sl-5
    82Yp_22sjKjxQJ40CuLpiVeihJhPaoSgEZxIUBJPCtfUfi1>
X-ME-Received: <xmr:NHZjapysfaOzEjFT4WWp1IF-UpaSV5XxXQzzVsLeIagtk-ceym-NEVLJE_WPwcyrgZTCcf0HmrQ_exulOfPDBtgONA>
X-ME-Proxy-Cause: dmFkZTEC3++iqm0xtrOvAn1Mrn9Qsv+whvxAcS4x+Uu0JmTgsJziyQx9zElhCVJJlj8OQv
    PjdOR5p9oBNqkrmxqzan83cQ1yRjo4AXa60uSUouf7w5EcG22lGDQ+l1WAeu7FcUq/CM6/
    3x+sT9VnuCcVoKsq3ShIpf5iGZEPFE0PvpMkq+w8XQotWSDutwJRhyfORoNgtDpQQcM67e
    7G0QJ7DmV0iUocQHTLxe/3XCAj/gGrN+d4mpOmn5rAQiFDRMlxyWACzlpX16/xee1VWSJe
    Ql6H99FH+3LFyA9sA2jHLlWznSQHZv7ipGNnfxjdG5S27/rdDCnS5svCC1fjrUoHO+j2q4
    9Ryk+ldcOnyICZM6rJS+YN8w62bbPKMU0KyxUkpNXi4TTNDItaqKip/mbU22bSCj/jUIMI
    9qhoWQF+m+ujHIHybNwn6HjvAZcyzCuj0x4riiz5k0kdY40CyU0Lfsg9smObDCkk1eWaIx
    qkjQjcnqiDDAo5/uV8TCbfaNaahKCWUe1uZzXM5X8ai1ZFp/+n9mr6IY5qwQDQRDud+QnT
    6SoGaf0Fa441XA2RsxVMYnWyNcIvMSuGLYqDf3c4U+R0k7USRW1wU9gnSvaB+p/DTPdRwH
    Hdcho90/O6QAZlDk9Pxeq6+zat0/J/ikZKXJFQ3GonkEE2dJwZf2LIvg+3PA
X-ME-Proxy: <xmx:NHZjagD3KXAX2dATyZiPHx4G6UI9r5Ez6OlCADz-gdHilkOVZ8r0jg>
    <xmx:NHZjalELfFz042eqZPsDsZNqBQFwsc_dSx1TXqkm9o1KbVW7bVfKUA>
    <xmx:NHZjanNsxQZzH0eepN04GxV-TcIjZn4bEUg1qvQ85CdPJfC5wJDCSw>
    <xmx:NHZjam40DwOhZBRM3K638UY-r2xCj-87GU4bTKvdxZ2t2Abm4fZsSw>
    <xmx:NHZjap6kf7MkcbsNMkp6JdO8s2smLmCd4K9ERYcaWkwBjDDcWamHimXo>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Jul 2026 10:27:00 -0400 (EDT)
Date: Fri, 24 Jul 2026 16:26:49 +0200
From: Greg KH <greg@kroah.com>
To: Rajat Gupta <rjtgupta09@gmail.com>
Cc: ksummit@lists.linux.dev, Jamal Hadi Salim <jhs@mojatatu.com>,
	Matt Martineau <martineau@kernel.org>
Subject: Re: [MAINTAINERS SUMMIT] Deterministic verification gates for
 security submissions
Message-ID: <2026072439-uninsured-igloo-eeb3@gregkh>
References: <20260724033528.704-1-rjtgupta09@gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260724033528.704-1-rjtgupta09@gmail.com>

On Thu, Jul 23, 2026 at 08:35:28PM -0700, Rajat Gupta wrote:
> ## Proposed Solution: 4 Verification Gates
> 
> Rather than judge prose quality or detect tooling, prioritize submissions by
> evidence:
> 
>   Gate 1 - Trigger + Impact
>     Does a reproducer crash the kernel under a sanitizer?
>     Higher impact evidence (controlled corruption, privilege escalation)
>     gets higher priority.
>     Automatable: YES (build kernel, boot QEMU, run trigger, check output)
> 
>   Gate 2 - Root Cause Evidence
>     Is there mechanically verifiable evidence (KASAN trace, bpftrace output,
>     differential test) showing WHY the bug occurs - not just WHERE it crashes?
>     Automatable: PARTIALLY (sanitizer output is automatic; understanding
>     causality still needs human judgment)
> 
>   Gate 3 - Patch Verification
>     Does the trigger crash before the patch and pass after?
>     Automatable: YES (two kernel builds, one trigger, compare output)
> 
>   Gate 4 - Regression
>     Do subsystem selftests pass with the patch applied?
>     Automatable: YES (same QEMU environment, run selftests)
> 
> Submissions are prioritized by evidence depth. All 4 gates pass -> top of the
> queue. Missing a trigger -> bottom of the queue. Not rejected - deprioritized.
> 
> ## How This Helps
> 
> For reviewers: A submission that passes all 4 gates will take less time to
> review. The evidence is pre-verified - the reviewer confirms it, not
> investigates from scratch. Unverified submissions (prose + patch, no trigger)
> still take 30-60 minutes. The gates surface the verified work first.
> 
> For submitters: Clear requirements. If you show up with a trigger + RCA trace
> + before/after proof + selftests, your submission gets priority regardless of
> whether AI helped you find it. The incentive shifts from "write convincing
> prose" to "produce evidence." In effect, we would be encouraging people to
> use AI to produce concrete, verifiable evidence.
> 
> For the process: 3 of 4 gates are fully automatable. This can run as CI
> infrastructure that assigns priority scores to incoming submissions before a
> human ever looks at them.
> 
> ## Honest Limitations
> 
> This cannot distinguish a symptom-fix from a root-cause-fix. A NULL check that
> silences a crash will pass gates 1, 3, and 4. Only gate 2 (root cause
> evidence) helps the reviewer spot this, and that still requires human
> judgment.
> 
> What it does eliminate is AI slop: submissions where the bug doesn't exist,
> the RCA describes an impossible code path, and the patch was never tested.
> That covers the majority of current noise.

I like this, BUT I will note that this would only work for parts of the
kernel that we all can emulate/run.  For networking, this would be
great, but for almost everything else, specific hardware would be needed
to verify anything.  Just look at some of the recent DRM bugfixes for
specific examples of that.

However, for the network developers, this would be nice to have.

> ## Potential Discussion Points at the Summit
> 
> 1. Should a working trigger become the minimum bar for security-tagged
>    submissions? Or remain advisory with prioritization?

We don't have any such "trigger" to meet the bar of any random person
emailing security@k.o, so I don't know what you mean by this.  It could
drive the decision of "do we talk about this on a public list or not",
and "which issue should I work on now", but it's not going to gate
anyone telling us about issues.

> 2. Where should this CI infrastructure live - kernel.org, per-subsystem, or a
>    separate service?

This MUST be something we all can run on individual machines as
security@k.o reports can NOT be sent to any infrastructure run by anyone
else other than the developers involved in the report.  So if you can
build the framework, great, odds are we can all run it ourselves as most
security@k.o participants have a random box sitting around somewhere
behind their private networks.

> 3. How do we handle legitimate bugs found by code inspection that are hard to
>    trigger? (Hardware-dependent, narrow races, error-path-only.) Proposal:
>    lower priority, not rejection.

That's a huge number of bug reports we normally deal with on a
day-by-day basis on the normal mailing lists.  So not a really big deal
here, if it comes with a patch, and it seems sane, we take the patch
like normal.

thanks,

greg k-h
