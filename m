Received: from mail-vs2-f40.google.com (mail-vs2-f40.google.com [74.125.227.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B403EA955
	for <ksummit@lists.linux.dev>; Fri, 18 Sep 2026 07:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.227.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789715779; cv=none; b=hjlyJRbej+j4KpiLPrNhnJW+fYbr/Z7h7CkP1pK8jIENxsWolwYj1lg4uwK7uqmDJpOUm1w+MeGOriv0yxx0BenSbI+MH9xljbmnIboivEQP9m33Ra3gbYjH/X/yiVqkoboV8onYMYG9qukCPTmeBgedIKT2VZWF5MhZYRxPgpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789715779; c=relaxed/simple;
	bh=mhUyMvHcN4TX949sQh/esZBXP5LhyBsWejVcPg2AphE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IBZvwvzHQhpRvz9kIoIzO2qqyKyCY0iJVOZosL7PuAmchO3BngA+QLpY3V1IdrY1+fENneZVnnr9iHkq9Iqvw5LX92u4Mju+FjWYjr8xMlh5Xjp5EfJZ8EkBJFUGEEK8kY4OCfetpSjNMG+Qk7bkm4H5g2pujF3cNyfg24B7lZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.227.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs2-f40.google.com with SMTP id 71dfb90a1353d-5c9b0bdf5b5so122936e0c.0
        for <ksummit@lists.linux.dev>; Fri, 18 Sep 2026 00:16:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789715776; x=1790320576;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=bqMe/meCGvroxGnBcwNhNK9UqrtwhnE2+lm9mYH3a/0=;
        b=UKMlDU3QG4bA9HD+M2w5syY3llTJ7KlWrSGSBIi9kQ+ba28YjeJGGvaQ2RF+iNlQ/h
         pUCJgtOCTcA3DPL3kkRCMHOO6zpXiRVm9/a3dIt5Jhk2QRFpu6I8ZR2k0xksebPd3a/3
         xDYiA5mqb1YaapmaxC9kY/t2di1uSbQyfAQAhvb4Z5mDANeNQyykbArXjzsAU1PAE87u
         C14GtxalGDQQSntyouT37sTVlei0g0r77GLng4PJd6gl/tu0W3aX73maG5p0wGhhJfuA
         U8iKPXQr8FOIZn3nsAt8nv64B4St0M8PFOB5rqQ/fF0Zv8trrkqmkT+xiXsA7visHn8v
         R47w==
X-Forwarded-Encrypted: i=1; AKwUvBxKTfKuy6MN8lY9jBfmrKILqBV2M6yUCEqPJlsJUNNh+X2w7XN4DUf4HSWxMxhWRg8dyzjbmyAG@lists.linux.dev
X-Gm-Message-State: AFuF++nuoSHhXdMU/KLUIDblXotgJJNGKXHdLIzSUKI6cb8/5ejlklvA
	YzMDgzITjlsHLERFSYg7qqYO2TcDZOqmWDI1UV4rd4GDBebPp6MzVN8cBaDOlX0O
X-Gm-Gg: AYBFou3uZYKRPvml03efss/i9eShOZC0iBtGjoXYYQcw/er7xee88P8MWarJn1xlIsQ
	2KmrDcXAeyabcuhieX1SCzSTjL9xrsMg0Ts9b6NzN6gbtz431bTP+tnKrSRr1AX0Fvss+Ags+KO
	SDgJYEGszwsXIB7kxxmvRGwYZjsI84luV/EvHW/+4uTf6ne8vhl8WystfcS/lDfae6cWxwPsSt8
	OzwKpa6kEEU3IzPcm/qTX4K3TPe4j0/pEcP/NzdJG22JP+CXarFgieQOhkA5pnZgu5AHmdl/eG1
	tEtTfP6R9xs0MyoMUew2ZVDWAmJGtkmbnXyr56YCXsXDTVjmMY8G/ak4wK+bLumSJCFZBChop6u
	h4QlkyTggvvT5V2Avmk/c4zhyzDSapN4IiVTleghS8s4Vey0u/+Yno/avQJfWYzfDKDP9dzrpbU
	CCI8dCX1lNjakURPHfnYpU32h6RCgvLKJagsDpWe5VqpBmiL795M9CJ/94D3E6Sq9CJT0n23V8I
	C9ROfUlk0Ef6Agv96lm0jvpkcEVT7DKk1SN6/66jVdD/Z4=
X-Received: by 2002:a05:6102:6896:b0:7a1:f7d2:e842 with SMTP id ada2fe7eead31-7a55d28b47cmr510748137.18.1789715775670;
        Fri, 18 Sep 2026 00:16:15 -0700 (PDT)
Received: from mail-vs2-f40.google.com (mail-vs2-f40.google.com. [74.125.227.40])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-7a59c567936sm880314137.9.2026.09.18.00.16.15
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2026 00:16:15 -0700 (PDT)
Received: by mail-vs2-f40.google.com with SMTP id ada2fe7eead31-7a0477a4a01so131070137.2
        for <ksummit@lists.linux.dev>; Fri, 18 Sep 2026 00:16:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvByP4JvZf677eAdkhVCW1vpi0IrEmnUkxfBk3PmPxly0yYzOV0DYeXoMfC4lA/bYHJ1+V9LWpzX0@lists.linux.dev
X-Received: by 2002:a05:6102:54a4:b0:790:fd7:cf36 with SMTP id
 ada2fe7eead31-7a55b94efeamr554171137.11.1789715775067; Fri, 18 Sep 2026
 00:16:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <a7f69e8d-1140-44b5-baf8-bacb8c30c01a@kernel.org>
In-Reply-To: <a7f69e8d-1140-44b5-baf8-bacb8c30c01a@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 18 Sep 2026 09:16:02 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXASe0VkAwaKedwA_4R3y9ob+n61JBVYODOEves62K_Fw@mail.gmail.com>
X-Gm-Features: AcwNN1WvhK3fTlIFBM3xM76KqQ_q75nJQb86r9gVZkwCkG2xgXVRLjSNKLjz2rc
Message-ID: <CAMuHMdXASe0VkAwaKedwA_4R3y9ob+n61JBVYODOEves62K_Fw@mail.gmail.com>
Subject: Re: 2026 LF Technical Advisory Board election - call for candidates
To: David Hildenbrand <david@kernel.org>
Cc: tab-elections@lists.linux.dev, tech-board-discuss@lists.linux.dev, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi David,

On Thu, 17 Sept 2026 at 20:53, David Hildenbrand <david@kernel.org> wrote:
> The 2026 election for membership on the Linux Foundation Technical
> Advisory Board (TAB) will be held electronically after the 2026 Linux
> Plumbers Conference, from October 8 to 15.  This announcement covers
> both the call for candidates and the details of voting in this election.

Thank you!

> The public minutes from TAB meetings can be found in this repository:
>
>     https://git.kernel.org/pub/scm/docs/tab/tab.git/

No minutes since last election?
Thanks again!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
