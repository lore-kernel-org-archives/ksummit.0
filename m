Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE8A30C17C
	for <ksummit@lists.linux.dev>; Sat, 25 Jul 2026 00:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784938795; cv=none; b=LKvcagHptoamWv36iidSRS4xFzraokfCzIikCNUaRUrnQjQQjOht829Kna5oskFV8f4Oc6Cui60thO0FKX8+7oYa+9WOy3lTmlnciD6fKBu9lS+uEfG4g+poVd8ohl8C3lrsrOzVOgjnQw8vtuUT9mjRBEGQWMMD2go8KSXj8JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784938795; c=relaxed/simple;
	bh=LQPynvqPzYT7c7mFEO0TUeCX3RYgq3GwJyG1aUroa+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MudFWZvk84abo9+AN5m4c7yuWsVp2BMqLrXupzV3C2iapcDkUNoXG1HgRVc7h0ZyCPkl2endyqxAMBe91JEDY01MltPLHo8east6wlromeoim2po9oOFOH2ajNqfXZJyDGf2xvfXBJjbADFheGYRFgh/64l68/KdE96fyqZiycs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DrRgXlnt; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DrRgXlnt"
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2cc7e86e7aeso11001925ad.2
        for <ksummit@lists.linux.dev>; Fri, 24 Jul 2026 17:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784938793; x=1785543593; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=c8OmPqPZ3i5yvpcYeLBovZK8sOsVlAQDskuR5x5Vz68=;
        b=DrRgXlntD1dMbqkD9yriGjIqJNFQ632mhQAV75Oa0Z70OA7HjVuQADRB+QO6HxT42h
         D1L3KXzom1rFML1PA0ph6ROCPnryRk/W0Z5FYeBZI4kN364qNqeLJelAgIefSGjiM2cR
         fEeEfwYwbPPE/sxVCwS0iiziMe6OEph2YGqY2nUz6sV1P0/HV6/2YHU3DmJPLaZJGAVp
         3xTOFneMV0gre3WDqhIFsy4vn3KOacqMHva1HqFzp1Qu5c7SQZCHxG7vY3IerMmL1yyR
         /lUwK/BXQtYyl0ePg6DtwkR9migJP0RLRSfNG8e0E332mzhfh2jMvL1rnDKUMreGxrDH
         7o2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784938793; x=1785543593;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=c8OmPqPZ3i5yvpcYeLBovZK8sOsVlAQDskuR5x5Vz68=;
        b=KJf0jGiswYAfEBJ1Qo9ZGMt6dF3J+JMlMAHfIJXcT96O3w+G4rIhGO/8p5BLD5QUti
         lgPkFlIXzRPRzQYcccxkINA4tFW1REwty3+MwzoEMgaOS5hIRJyjj4o9uXO+sDzue6sF
         OVBy6+VgXhm5cWywwrpj4TcjI+xQJ6eyFp7hgs82aSW3wtCdgOm45WUZu0WjyCKll3Jh
         G6dPstyp5SAKia5uNMWQsFkVMkwdUlwr0ppkwdS+qyjMcFgDkrqlwZxoPr95X+qCZy+/
         qg31Hjrl3Wl91l0BsU+COTWo5uDfh3d6tj66mKT3QFVxAj9twOHRazaXLPbc/Pr7xshj
         FpzQ==
X-Gm-Message-State: AOJu0Yyonyyj0gcLw3BvrVSz9qSFCFGocwAFwyS5GID9+Fxt2+tCk7OR
	q9ZB+naxSDCD28evAig/AE4VYu1OjDr5CzSqg7+O1+oV/lXs42SRfn14jdJcBTF5
X-Gm-Gg: AR+sD10me236zNO+xNWcpQgNc5pZGp7DX8MErvmNiFW5I3StCjSEWWPFbyDV0ITXx+f
	sZQwvO9h3p7MS6q0m7NIwrcF/iCH93/jcrOm1M1uj36KzCB9kO4jC/Acx0AqjoY34AfERz1PR9L
	qFkBVde295jV3lt62W3UuJsxbi6Hfv3kXX5Fau2CFGJW/5wkgxmqiYiS+tI98IZZ2kF+kXy8jI6
	9PUFLxFFpSjn94CaDDfSO2GLFfmcIkpjRkCYT2tQTc7YVfAbcKiB6Xuj2Xdf3ZZEZ2rFW4D5Jpl
	1TrBrBLOdwXPNAy7FGiMLqfGmAfgQU/cJH4JjJq/XecTgA4GZKjAvr/npZVhZkgbKdhu3ONz4hR
	n7Ai+vom33ImjpY12LBdSOPrDHUKjacYXINnaa5AM8L0u1/KO5d0Z/r5r9is35EGY7s8p26JvjJ
	5Q08jdrwqjdwYPdF8LNLA0n3mVvlT27r5rZZd6NWgKOHNYQYJkFmjixNh/0yIi3PNATvZuMnUmK
	K756wkIZtjyDbrKBsKlDqElakuSPyO+ux4/ewTBSmvxc72gXDilYIhuQiQ6
X-Received: by 2002:a17:90b:3811:b0:385:d033:d9f1 with SMTP id 98e67ed59e1d1-38f2961363cmr629767a91.28.1784938793317;
        Fri, 24 Jul 2026 17:19:53 -0700 (PDT)
Received: from [192.168.0.224] (99-188-240-205.lightspeed.sndgca.sbcglobal.net. [99.188.240.205])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-314bc5a04b2sm3515444eec.28.2026.07.24.17.19.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2026 17:19:49 -0700 (PDT)
Message-ID: <b1b39482-9ae2-4bce-bdc1-a817f90dc5ab@gmail.com>
Date: Fri, 24 Jul 2026 17:19:47 -0700
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] Deterministic verification gates for
 security submissions
To: Greg KH <greg@kroah.com>
Cc: ksummit@lists.linux.dev, Jamal Hadi Salim <jhs@mojatatu.com>,
 Matthieu Baerts <matttbe@kernel.org>
References: <20260724033528.704-1-rjtgupta09@gmail.com>
 <2026072439-uninsured-igloo-eeb3@gregkh>
Content-Language: en-US
From: Rajat Gupta <rjtgupta09@gmail.com>
In-Reply-To: <2026072439-uninsured-igloo-eeb3@gregkh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 7/24/2026 7:26 AM, Greg KH wrote:
> On Thu, Jul 23, 2026 at 08:35:28PM -0700, Rajat Gupta wrote:
>> ## Proposed Solution: 4 Verification Gates
>>
>> Rather than judge prose quality or detect tooling, prioritize submissions by
>> evidence:
>>
>>   Gate 1 - Trigger + Impact
>>     Does a reproducer crash the kernel under a sanitizer?
>>     Higher impact evidence (controlled corruption, privilege escalation)
>>     gets higher priority.
>>     Automatable: YES (build kernel, boot QEMU, run trigger, check output)
>>
>>   Gate 2 - Root Cause Evidence
>>     Is there mechanically verifiable evidence (KASAN trace, bpftrace output,
>>     differential test) showing WHY the bug occurs - not just WHERE it crashes?
>>     Automatable: PARTIALLY (sanitizer output is automatic; understanding
>>     causality still needs human judgment)
>>
>>   Gate 3 - Patch Verification
>>     Does the trigger crash before the patch and pass after?
>>     Automatable: YES (two kernel builds, one trigger, compare output)
>>
>>   Gate 4 - Regression
>>     Do subsystem selftests pass with the patch applied?
>>     Automatable: YES (same QEMU environment, run selftests)
>>
>> Submissions are prioritized by evidence depth. All 4 gates pass -> top of the
>> queue. Missing a trigger -> bottom of the queue. Not rejected - deprioritized.
>>
>> ## How This Helps
>>
>> For reviewers: A submission that passes all 4 gates will take less time to
>> review. The evidence is pre-verified - the reviewer confirms it, not
>> investigates from scratch. Unverified submissions (prose + patch, no trigger)
>> still take 30-60 minutes. The gates surface the verified work first.
>>
>> For submitters: Clear requirements. If you show up with a trigger + RCA trace
>> + before/after proof + selftests, your submission gets priority regardless of
>> whether AI helped you find it. The incentive shifts from "write convincing
>> prose" to "produce evidence." In effect, we would be encouraging people to
>> use AI to produce concrete, verifiable evidence.
>>
>> For the process: 3 of 4 gates are fully automatable. This can run as CI
>> infrastructure that assigns priority scores to incoming submissions before a
>> human ever looks at them.
>>
>> ## Honest Limitations
>>
>> This cannot distinguish a symptom-fix from a root-cause-fix. A NULL check that
>> silences a crash will pass gates 1, 3, and 4. Only gate 2 (root cause
>> evidence) helps the reviewer spot this, and that still requires human
>> judgment.
>>
>> What it does eliminate is AI slop: submissions where the bug doesn't exist,
>> the RCA describes an impossible code path, and the patch was never tested.
>> That covers the majority of current noise.
> 
> I like this, BUT I will note that this would only work for parts of the
> kernel that we all can emulate/run.  For networking, this would be
> great, but for almost everything else, specific hardware would be needed
> to verify anything.  Just look at some of the recent DRM bugfixes for
> specific examples of that.
> 
> However, for the network developers, this would be nice to have.

Agree. Networking is a natural first target. > 
>> ## Potential Discussion Points at the Summit
>>
>> 1. Should a working trigger become the minimum bar for security-tagged
>>    submissions? Or remain advisory with prioritization?
> 
> We don't have any such "trigger" to meet the bar of any random person
> emailing security@k.o, so I don't know what you mean by this.  It could
> drive the decision of "do we talk about this on a public list or not",
> and "which issue should I work on now", but it's not going to gate
> anyone telling us about issues.

Right, these checks (not "gates") are just prioritization signal for
the reviewer's queue.
> 
>> 2. Where should this CI infrastructure live - kernel.org, per-subsystem, or a
>>    separate service?
> 
> This MUST be something we all can run on individual machines as
> security@k.o reports can NOT be sent to any infrastructure run by anyone
> else other than the developers involved in the report.  So if you can
> build the framework, great, odds are we can all run it ourselves as most
> security@k.o participants have a random box sitting around somewhere
> behind their private networks.
> 
Agree.

>> 3. How do we handle legitimate bugs found by code inspection that are hard to
>>    trigger? (Hardware-dependent, narrow races, error-path-only.) Proposal:
>>    lower priority, not rejection.
> 
> That's a huge number of bug reports we normally deal with on a
> day-by-day basis on the normal mailing lists.  So not a really big deal
> here, if it comes with a patch, and it seems sane, we take the patch
> like normal.

Makes sense. 

Thanks,
Rajat
> 
> thanks,
> 
> greg k-h

