Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9542FD694
	for <ksummit@lists.linux.dev>; Fri, 24 Jul 2026 03:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784864187; cv=none; b=MNpkDq7MKqQhe1x1GNItC/IG9pfhnkR+rQwYDZBcq5aR2ExvCZBmHime3/Ct8SzQJLFvR6VzHK2Lba6JxNCGMxj3UOWXvPUQKvZBpbrGRtwD77T0JiyNYtoUx87ELdh7jUUOuBL2PKO1It2qnztJzw3ARisXpfQ24VyDq/4mbKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784864187; c=relaxed/simple;
	bh=bSjLcpNremGIdBQr0fSh9FF+Njr1OCM/QA/YtiJA1OA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=K/ONsLieVzkHT9d9CmW/g4G60SNiW9WXbVH485Iz0oFrjeBKxdjSObLYCj+ZFTivkvNAHd2yiowfa+BDwhrso0+3lf2VH8ZkNHyWgYaH2xZ7uID5dxpAr0fa0WvrTKKIuU9m1I7ymDj2SBY2BinbAy42JjMni+qWUfGNvlcEj9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ERhXKxby; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ERhXKxby"
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-ca80d708489so803733a12.1
        for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 20:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784864185; x=1785468985; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=GVgVn37qOtmmZHw08/QYXC7lRjPxy84xNnSBJFBYX5g=;
        b=ERhXKxby4gj9SjhbSz8Ln95Dp4d2HogMrx6TdFeobDUHgqD8DQPR95L1+QwNPMFMvF
         BmjsaP8/HDZ7PU7XYmgu6wH6yNCfdd4481GCYzBx8AKuRqAcWlxKres1KrOeEcjdzdqX
         ISfxM+XUPu0841P63mv57B7gE3qh+VfDpZWIJg6TFp6g4zUzE02xvRBfrCQx/ITTooTC
         fgP/kav7EM4AaDCtfJG5xkweLF6ipQLgPB+jXH2O6fRrzG/150HeU0TvHkXx0Ovl5pkM
         dj/tp80qwmvb4CYgLD9VZqXFEEBKv8sv4Cs3UC97eA0keBwmdCJbkR+oPYqe8YJYr8y+
         hanw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784864185; x=1785468985;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GVgVn37qOtmmZHw08/QYXC7lRjPxy84xNnSBJFBYX5g=;
        b=eONhDYiynqEjJ+a0XGAHJzXZsr1APFi3xuDkMA6ZVfzyYnD0aLAlSmI+RmEaeFna2n
         B3a7Ykh/2y1G41RS0jw3BPwTvHp661vP6hna3J/C6cLMjzmvtU//tEPwH88NN6g8amZ0
         bi649zz4hLItfrxZBYxpKMpA995nbfiW3nxzLDGHj5c7/7leKurf30ag08oRKOjRNN9p
         gkqxIsu4Y8Eb7+pmaSMq0XcluHq3KpYT+RJE2f3fkI5mAiiPALFqOp/RPz2hLarNzzZ6
         SuDheoDNvh7vwyLFGpd0+lW1wUR5d9VBejBy0dsulJiIdWZ8fYT1ULWliwUQr/popdGy
         IOfg==
X-Gm-Message-State: AOJu0YyyPVq/alPsi1x4v4XPQjmjtrlaWumHk/1f+KAix5i2oU/OuWzN
	Vs6T8PMVc7ABh0Vv0phG5wyGI0n03MRF2yPgZhuMZEaqsjcpMM6F9czUgrdsbg==
X-Gm-Gg: AR+sD135IJMQp9KQA7ufi1OuPyFCJ5eFq9Clm0DSzq/PwB9weDLCXxvahpsbSwuSz+8
	uTYapvgrhc1pYYxqOb3s35uACDRcNVd3J4EnBVUfYKXK7z4oM7OuwN8hHy2aLI7DPaJ68QvAMxe
	MiMPnJIKyHR7z52HkAi91UbuM26AplMpi4sFHtNnjxQtRYFxbMHrAjYbJ5ODC41b0c1oyulw9mD
	AE9wHMl+VSRoLozmwYPZO5BaIb9yYDl1n1QoX7tzdey20WbqDC+87BwtOTpUWUOtSXCi4FWV1C/
	xWVcnMLioGqI6J6A836pEjvSLHu1uT29NNKPYPvLLt3xabKaFef3mHPdx9M3HyQ79EB6wH9g1eJ
	76FrIeGggWvE1y4OBte/VVzS/JPHPzXhfzOiU8IJLPJXaGgwReWTWM+pyeOMPhBNftY7kqZF8qu
	mj/ZtxJiZcvLEn0nSx6hI38kY0IgHBpk/JEXGicOXLkIwTmTsoyUYQehSk42JAap/THPK94HO+e
	zBwmusplxhMFadN3YwfzwPTYHrlLHWQzVLZRpm9o2QyFfbWbFE=
X-Received: by 2002:a05:6a21:4d8b:b0:3c3:a195:518c with SMTP id adf61e73a8af0-3c44caf0453mr5766787637.21.1784864184873;
        Thu, 23 Jul 2026 20:36:24 -0700 (PDT)
Received: from WOSSA.na.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13d130f42bbsm22727747c88.14.2026.07.23.20.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 20:36:24 -0700 (PDT)
From: Rajat Gupta <rjtgupta09@gmail.com>
To: ksummit@lists.linux.dev
Cc: Rajat Gupta <rjtgupta09@gmail.com>,
	Jamal Hadi Salim <jhs@mojatatu.com>,
	Matt Martineau <martineau@kernel.org>
Subject: [MAINTAINERS SUMMIT] Deterministic verification gates for security submissions
Date: Thu, 23 Jul 2026 20:35:28 -0700
Message-ID: <20260724033528.704-1-rjtgupta09@gmail.com>
X-Mailer: git-send-email 2.51.2.windows.1
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

This builds on Sasha's "Scaling our security process" thread, specifically
point 5: "Can we tell AI assisted quality work from slop without burning out
the people doing triage?" I'd like to propose a concrete answer to that
question.

We discussed this at the netdevconf 0x1A "New Age Tooling" BoF two weeks ago
(chaired by Jamal Hadi Salim). The maintainers in the room were in consensus
that detecting AI involvement is impossible and the wrong goal - what matters
is whether the submission comes with verifiable evidence. The framework I
presented received broad agreement as a practical path forward.

## The Problem

Security submission volume has grown significantly, and the signal-to-noise
ratio has collapsed. Most submissions arrive as prose-only reports:
plausible-sounding RCA, a patch, but no reproducer and no proof the patch was
ever tested. Reviewing these from scratch takes 30-60 minutes each and often
ends with "can't reproduce, closing."

Greg noted in Sasha's thread that LLM-based intake filtering "just doesn't
work" - I agree completely. The answer isn't AI judging AI. The answer is
requiring deterministic, mechanically verifiable evidence from the submitter.
The verification involves no AI.

## Proposed Solution: 4 Verification Gates

Rather than judge prose quality or detect tooling, prioritize submissions by
evidence:

  Gate 1 - Trigger + Impact
    Does a reproducer crash the kernel under a sanitizer?
    Higher impact evidence (controlled corruption, privilege escalation)
    gets higher priority.
    Automatable: YES (build kernel, boot QEMU, run trigger, check output)

  Gate 2 - Root Cause Evidence
    Is there mechanically verifiable evidence (KASAN trace, bpftrace output,
    differential test) showing WHY the bug occurs - not just WHERE it crashes?
    Automatable: PARTIALLY (sanitizer output is automatic; understanding
    causality still needs human judgment)

  Gate 3 - Patch Verification
    Does the trigger crash before the patch and pass after?
    Automatable: YES (two kernel builds, one trigger, compare output)

  Gate 4 - Regression
    Do subsystem selftests pass with the patch applied?
    Automatable: YES (same QEMU environment, run selftests)

Submissions are prioritized by evidence depth. All 4 gates pass -> top of the
queue. Missing a trigger -> bottom of the queue. Not rejected - deprioritized.

## How This Helps

For reviewers: A submission that passes all 4 gates will take less time to
review. The evidence is pre-verified - the reviewer confirms it, not
investigates from scratch. Unverified submissions (prose + patch, no trigger)
still take 30-60 minutes. The gates surface the verified work first.

For submitters: Clear requirements. If you show up with a trigger + RCA trace
+ before/after proof + selftests, your submission gets priority regardless of
whether AI helped you find it. The incentive shifts from "write convincing
prose" to "produce evidence." In effect, we would be encouraging people to
use AI to produce concrete, verifiable evidence.

For the process: 3 of 4 gates are fully automatable. This can run as CI
infrastructure that assigns priority scores to incoming submissions before a
human ever looks at them.

## Honest Limitations

This cannot distinguish a symptom-fix from a root-cause-fix. A NULL check that
silences a crash will pass gates 1, 3, and 4. Only gate 2 (root cause
evidence) helps the reviewer spot this, and that still requires human
judgment.

What it does eliminate is AI slop: submissions where the bug doesn't exist,
the RCA describes an impossible code path, and the patch was never tested.
That covers the majority of current noise.

## Potential Discussion Points at the Summit

1. Should a working trigger become the minimum bar for security-tagged
   submissions? Or remain advisory with prioritization?
2. Where should this CI infrastructure live - kernel.org, per-subsystem, or a
   separate service?
3. How do we handle legitimate bugs found by code inspection that are hard to
   trigger? (Hardware-dependent, narrow races, error-path-only.) Proposal:
   lower priority, not rejection.

## Background

I work on AI assisted offensive security research. I have found and
responsibly disclosed multiple privilege escalation vulnerabilities in the
Linux kernel with full evidence chains (trigger + root cause + patch + working
root exploit). I use AI-assisted tooling in my research workflow with
deterministic verification at every stage. I presented this framework at
netdevconf 0x1A in Rome and received positive feedback from networking
maintainers.

Slides from the netdevconf 0x1A BoF, for reference:
https://github.com/rjt-gupta/conferences-slides/blob/main/netdevconf-0x1A/slides.pptx

Best regards,
Rajat Gupta
