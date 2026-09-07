Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC7851E45B
	for <ksummit@lists.linux.dev>; Mon,  7 Sep 2026 16:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788800009; cv=pass; b=RlGzUZwRq1e/YQjvvvUUVjr0SZJQhnJQJoecQSrXa5f3PzyRALr0VRECI19Ksnc4O60g330zzjNrYtWhwEiR1gBuWdTYY+20ciQ0mFqoWl+StVZIwO3LVQJq1UXY9VZN3bG1SP1r8MbTwz3/niOrZkrk1V8PGMYNQaJutT32Aaw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788800009; c=relaxed/simple;
	bh=D0u1eX1z5nY3jrItjTE8ERZ77nuaih73tPfaYVv0KVI=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=YIir6/a7Wl7JfTperuVcdf5PnoCoqbSIRHhhIGh18i067l789yHhGTXdyt28HW5rORJdWyy7gPY4KfEFkKK43IZmFBd47+V+NY0itAXjIZMv3eVdWdF+V0QRIn+b9bpjwQkeRTrC1Q1stdy/BDCHouku2XX0FBnIXYHYZtAUryw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nYN9w1dP; arc=pass smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nYN9w1dP"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-49d0726ccc2so14635005e9.2
        for <ksummit@lists.linux.dev>; Mon, 07 Sep 2026 09:53:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788800006; cv=none;
        d=google.com; s=arc-20260327;
        b=XzHeMHMBzcjcol8plBLwCKXlnnrH+w3Nxrqob4+LnAo6/ggXgUNSARbRsmLvt+5Lmm
         X8fKlAXFdKopYirmeyvwd0wa6NCfTqMs4KUbI90sDSxOUe3AxHaro7kMC4t+QeI7PgWd
         e5vWzpr1TyZKrbaAbWWOmbHOiUeeHu0FkPJd8rxieEuSFCFLZLhaBxpd7Q4tQ+xwMp9i
         p/VBsPj/K3eAHzLRLGjbREN+7o2fVrC5e7ADTaThKtzJZNvBl/8o1LN28T5Yk6THMy66
         H00mArltRoESg6ciDTN8iuHwXa6yzyHoCvRYhAc8PNor/xxYxuf3/gJQNFDa5N0+p/su
         xu6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=D0u1eX1z5nY3jrItjTE8ERZ77nuaih73tPfaYVv0KVI=;
        fh=y9z88DoO7WlxzazEYFwwP+AIi8Y4r39Mq6uQehwlvGs=;
        b=Wycf3icuC4DjmJWEMEcNrXglZJMY+pBRJnHTUqp3K/FATxehDEE3P5eGvsrveDWImL
         AfWuI7NQqr6GJCK1yTAiUPMb6nwKWLZXsrN8/HTPFUN2GsL03+2PiM46FtLocvLMsDPz
         +P+LZJVejLu52y93e5bNnWXD8GybO0pyzyePNOqV+i3KmbI2lAuUewMxE2u4mvXEqPFY
         I81QLwDB/kFTZQcVw6nq6dOxd27cBPcoEr+gS/OesDLETt7xxrnCfSc2EBmN3HTn+v4+
         SpR22JFxmswBVpQY6VzBB0wLZCq6YaqSElQ0dgMdZde4i6IrGf89dEaJKPu9WrRAh6Y2
         vIPA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788800006; x=1789404806; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D0u1eX1z5nY3jrItjTE8ERZ77nuaih73tPfaYVv0KVI=;
        b=nYN9w1dPl25m+U64JBI2IycMxX7+hWq+RO0dOWRgu34E22aOOZKwJnLegzk/r+ssfo
         NjGRtwZ7BQYofFX1UQxEKyFcFixKb4gxcpyiIMDxzJ0LgjOcQTID5tejW/Gy5R1NM4pK
         p8wIxC8h6SjuL0xYFsSICe87g1w+Lk+Am1OYSbfWxpDht535jvcsVHLspvOrdrdj/CDT
         Xve7S4oFIoafSmIdmBt49mxzS5mSv7LwZcWBDk8/MwqGcLN0eJF0TVT8vewxH8o280Vo
         9oAJDdEW2dI4X9z01NlwFM7XtLxyLLaSnGzOU5XPXpeCA/o74aZarsQTR6BBmIZFEInz
         x7sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788800006; x=1789404806;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=D0u1eX1z5nY3jrItjTE8ERZ77nuaih73tPfaYVv0KVI=;
        b=KWQHqE58rAoyXSh4ISuYOBlRBBy7ccUm6PL7ZSfBAa0lVoR4tByMej1FRSFnPiinca
         nzuadGaP9gBYnNYmY4tiqtFBAWk5FnYH2JmhTS7Z4LH4vSNisAoXJF5CL6BWMUt6ESy5
         HKpvrGCNEyoP61NZUtsLrQVsFw3E3PgzMHJ2aWxNmrA7GHQV4hIOnvJabdc0u1L6WNFl
         jlQ6kd0RT7wSmXJtaJkmO5Wde51VHSrSye01XowBuKEezrWdxLtggxde933McOSlmf7p
         qWSlAS3dwJrksmcepxI2anQMTgejgIarzcWyYCppZsbZg9WCdy06I9XBwxWEji0nNLwe
         xbxQ==
X-Gm-Message-State: AFuF++myaiueHh3pGWVOqsHY1nMmdJDDB1YzwGahYtkwqwQK0DBq1YF5
	QdDFMhP52wHKtk8egipWFpxIFuRv8bc0F21HeItWqxuy/SZKltLcZ4CFtegz3iRovVPX1nynf2l
	ens7wiXoj0MTuxpwKA217ShHfgxA6/afBrnwD
X-Gm-Gg: AYBFou3F3NoEpJ2CG6Gsd6PRkQsXuBEGR1TebE+Xe7cEUApa1L0OKCDl99uUvZkf9Yp
	9qcUr6Tus2C6UT0BZE+EO37IZBK2t0p0jM/TA4qp4A7pshxTmIxjTFIQ9n8I/WYUVIppHYv9Mlf
	5mQdAIwkvB77uzVsiy2hR13LTLz3vGWQ3EHDIvaj7xr+WB9eZZsmQTDc9uq0zRymfZ/7AGS3KrI
	pnBKFx+RzDmVqz5cjx0lmtA3KRuCCATmfKCM46BQ2N8b+BumWWscBDFk5AAw0Y2xzYg20Szy74G
	gIFhOAUku/zhQVLco1uPsXsNW/3UF95GnEYsoKRmVRE=
X-Received: by 2002:a05:600c:3496:b0:499:b65d:1250 with SMTP id
 5b1f17b1804b1-49cf7fe62admr440081095e9.2.1788800005701; Mon, 07 Sep 2026
 09:53:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Mon, 7 Sep 2026 19:53:14 +0300
X-Gm-Features: AcwNN1V3OCSf886HSn_N3DJplL90dlgLd-vidMLh7c5pUUfrUPC3EJQBHoQ5Rkc
Message-ID: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
Subject: [TECH TOPIC] Improving kernel security & integrity by generalizing
 ad-hoc safety mechanisms
To: ksummit@lists.linux.dev
Cc: istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

TL;DR: We (NVIDIA) want to explore the possibility of upstreaming
mechanisms currently reserved for a safety-oriented fork of the
kernel.
Should there be a consensus that they can be valuable, we can plan for
the work required for upstreaming, but first we would like to discuss
the content, the expectations, and what it would entail to reach a
mergeable status.

--------------------------

The long pitch:

Intro

In the field of Functional Safety, there is a strong demand for use of
the Linux kernel as base operating system for safety applications.

Examples:
Assisted/Autonomous driving, industrial/humanoid robots, medical
equipment, aerospace.

Linux, though, was not designed for safety, and it cannot be used as-is.

While there are attempts at claiming safety compliance through
process, these are insufficient for advanced safety applications.

The reason why said claims are insufficient is that on one hand the
vanilla kernel would not survive negative testing (e.g. fault
injection) and on the other hand a process-based approach would
require demonstrable absence of safety-compromising bugs.

Which is more or less in the same ballpark as proving absence of bugs
across the entire code base. Not very realistic.

At NVIDIA we are developing kernel extensions that support Linux-based
safety through actual hardening mechanisms that can withstand that
sort of validation based on simulation of faults.

--------------------------

References

Some of the problems addressed:

Linux Virtual Address Space Safety
https://youtu.be/pe9OVjWdF-w

Identifying Safety Weaknesses and Fault Propagation in the Linux Kernel
[https://www.youtube.com/watch?v=3DgW0W9YPnsjI]


What we are working on:

NVIDIA Linux for Safety =E2=80=93 A System-Level View
https://www.youtube.com/watch?v=3D9GPQVu7KDTw

NVIDIA Approach for Achieving ASIL B Qualified Linux
[https://www.youtube.com/watch?v=3DueIPuhcyAUo]

--------------------------

Opportunity

While Safety was the primary goal for this exercise, it has become
apparent that the very same mechanisms could be employed, with
different policies, also for more traditional purposes, like integrity
and security. This is something that could benefit a broader number of
users than we had initially anticipated.

--------------------------

Question/Topic for discussion

Would the upstream community be interested in this sort of hardening?

We would like to understand if there could be a mutual interest.

Safety extensions were initially thought to be a standalone fork, due
to the low interest that they would probably command.

However, if there is an interest due to the adjacent applications,
like integrity and safety, a path to upstreaming can be considered.

We also want to explain the criteria we need to meet, in order to
retain compliance with safety standards (it's not as boring as it
might sound).

 --------------------------

Desired outcome from the discussion

The feature-set is not small; there is a significant number of changes invo=
lved.

It is expected that any attempt at upstreaming will require
significant - probably multi-year - effort, both for working on the
patches and for reviewing them.

Before embarking in such an endeavour, we believe it would be
beneficial to everyone to assess what these features can bring to
Linux, if they are seen as useful, and what implementing them would
imply.


--
thanks,
igor stoppa
