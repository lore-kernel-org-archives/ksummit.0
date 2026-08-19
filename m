Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4747648B368
	for <ksummit@lists.linux.dev>; Wed, 19 Aug 2026 16:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787157882; cv=none; b=WenIE3q5jtHA55a79FA7PQZKyS7up2TKZASmpjW12x5hAgBFIQWLwWQSb6ZJGEGtjQlirFVe4yun43z7bO0n9GNVwt1hOSIjh4fyzrtuUUup3mH4c8NYuyUW8ntmp8yhXnjqTx7Pw/EeC6bG8rEiezakTzB8aSW4IDc0zxMhCnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787157882; c=relaxed/simple;
	bh=PUS2uFVg09Pmf0/TMXBz5mV45lDq016zrrrmW/O6FFM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EeCyOMtHdPOKHKJavT10megsxxcy/tr7VMFQsztJMXlm3qtE9h525qeAPg1N68Sp5v2ihzLVYHVKGaYg5sJ0RzPKz/u48PvmRlWw3t2EhbO6W42Mtvn4vyojkgLJIwLIBBtT/wo1fOp1M95WprrHoEOudAtKotgJyOeQiQvjRow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=VdP+p+KD; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="VdP+p+KD"
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6a20319d030so1746935a12.2
        for <ksummit@lists.linux.dev>; Wed, 19 Aug 2026 09:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1787157878; x=1787762678; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zPJsPtnYCbd8KHErbnyCQMHt4A8bnxT0wDXJ/KlvXjg=;
        b=VdP+p+KDe9zOK73fN8cpZJdAV3UJi/g5Y/I1YduQHYkpDJ4hfvHnoICGbMeH/WJ09v
         4luen+fymriGvik5eisWjVxvfERHSXRAwmfWyO5YEuUKrJZofTwzI6AkdTBtaBWRnpJJ
         glfY965nL7hyYIbS4Fpt4St/2e1nLDKHIEmGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787157878; x=1787762678;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=zPJsPtnYCbd8KHErbnyCQMHt4A8bnxT0wDXJ/KlvXjg=;
        b=odycoYLSByXVPLWvUS3OKn8m0bHWlQzigiceTY8IrJkBQQh5W63lBaiPwP5DYrc+0q
         qngFZpFuxK4ZXmLXDZIl0oKA065i7SY0MnrKQS8w827CSoulBoS1T0dr9I3r46lkuHof
         HKEAqXuzRMoMik02DVxWBQ424yg7cUftJMt6iiJdkTyRsTbjSsNzxmxUqPx5+UhehxlG
         vRRn0FBl3myuuZnfQImyFwpm8wYTNNgwrdlz3MhTOs+9Y4BhInla4TuM+CRKf9wyKAh6
         +l+M0y3v1YNRl7AXSvDJR7Gxj1YIhbbWHfpeAg4JIgbgKCd0bsZkqgRXnIwNL6uws2jb
         M2iA==
X-Forwarded-Encrypted: i=1; AHgh+Rr/PodpXiOM1ryi9AZv2lH+Gnvr/sRSYHlGNXI1doLycdWhwFT4FIRP0gy+L1eCJiQXOaO7WaVy@lists.linux.dev
X-Gm-Message-State: AFuF++n08GaVfkphqXzlP7ZkRgqFsE84oa2+q2A6CnWZ8Og+y81PBWOB
	G/+QUch+/7vzLsAa13I1q30JRonwwwgjxDWxhLefyjlUzmvTTWOIWzLggQ0ONNHmtRGbah36RUR
	z99vTlk4=
X-Gm-Gg: AR+sD1327W1zgdSgfg1tOF/1B5gPu1HYr2SGhsASjSTPZjSzZ0QpAkNusm/QmxwNHIw
	STKR3xtvjPNQWxGla2Kj1SAZwRc9WK11/DqClobgoupPMuKPeybwHBlnNucfKFZFSB9O9M6uayV
	Vdp3dgDY0qJ7v4qPvMp5BPrHtC6k1rD87qmCwtaB8Rrkz1zS/YqdMIV0+G5Muh3PgL6z3qNSSDG
	x2UpHjTEQPw24GowgmgG/Wshko0zqIP2srMsksJu+h73N5uF9H+ehqjeHoH5QxHz+wOaGYSaZT8
	H2R8ygWrGVKfFUri/HnclLamt0GQ6hdgfajQenUE2vtGoUZi1HcGyRczWwSDHBTDB8WB2lOVtu2
	UjZq+HapzToJENw7juFiejt1ttHnggqgf+ExZ0nIOopiGvHn2WMPuKUQ+PLL5vRn2yMsUwgCHYB
	wqusPht2YxrlnJDR72hR9Fw9Vo3yo3/3vFsBzmXbkRz6cYXYCiyP2yNPMRWdtuZoKfz3G83Q/Hd
	X2LF/IhogNnXO5c7mWGFrWhGrb0PpKn7veahQ==
X-Received: by 2002:a05:6402:3983:b0:69f:fa13:ed3 with SMTP id 4fb4d7f45d1cf-6a403300de1mr3550307a12.16.1787157878273;
        Wed, 19 Aug 2026 09:44:38 -0700 (PDT)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a3feeca188sm1154047a12.6.2026.08.19.09.44.37
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2026 09:44:37 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6a157f90752so2204396a12.3
        for <ksummit@lists.linux.dev>; Wed, 19 Aug 2026 09:44:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrIeGrBViuoRoqAp8Ojf4DgqgT+2zjArtDMqmwacfOy5fmec7G0wjfyTa+FoprlZ6FG8uiezNrD@lists.linux.dev
X-Received: by 2002:a05:6402:2b96:b0:698:663d:d7bd with SMTP id
 4fb4d7f45d1cf-6a4032ed4f4mr3937290a12.11.1787157877092; Wed, 19 Aug 2026
 09:44:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <anl7CgkKb6tORavG@lucifer> <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home> <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
 <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
 <ant9_jhefKix5TGu@intel.com> <5aa1aa71-3eb5-469e-b285-94df94ac5bef@sirena.org.uk>
 <CAPM=9tzNxPUJGwzabdEwGiTrZER6VBHHDgaOq2bn+zBeFusjCQ@mail.gmail.com>
 <3a382504-6bff-45c0-8b05-3982e604d7c1@sirena.org.uk> <e5bde7b3a9093fa4a9b27f47a3bea9f8c5a6101f@intel.com>
 <87v796o6ol.wl-tiwai@suse.de>
In-Reply-To: <87v796o6ol.wl-tiwai@suse.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 19 Aug 2026 09:44:18 -0700
X-Gmail-Original-Message-ID: <CAHk-=whSX9=u+AdiKvVM9AzV7wrnmGZypXc4_JA64a-x8mRfhw@mail.gmail.com>
X-Gm-Features: AcwNN1UvkbsrVQbDKgodCaw6mSkNBBEnYiNJTmzJH_xGSz1sB5NjtQwenVKEFhU
Message-ID: <CAHk-=whSX9=u+AdiKvVM9AzV7wrnmGZypXc4_JA64a-x8mRfhw@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Takashi Iwai <tiwai@suse.de>
Cc: Jani Nikula <jani.nikula@intel.com>, Mark Brown <broonie@kernel.org>, 
	Dave Airlie <airlied@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Simona Vetter <simona.vetter@ffwll.ch>, 
	Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Aug 2026 at 01:28, Takashi Iwai <tiwai@suse.de> wrote:
>
> So, a single direction cherry-pick solution doesn't suffice, and IMO,
> we need to have some reverse-mapping of the aliases.  This could be
> some external content or some other way.

No. Christ people - you're doing things wrong, and then to "fix" that
you're making things just worse.

The point of git is to be reliable and rock solid and have immutable
history, and that's more than some "feature" - that's not just a core
design it's what makes git good.

And your "two-way communication" is BROKEN. It cannot work. The only
way it works is if you maintain it externally and don't make it part
of any history at all - which is fine, but dammit, then it has
absolutely nothing to do with commit messages and should be seen as
some external hack and nothing else. And it damn well should not be
part of any "endorsed workflow" because it's a hack built up on a
hack, built to work around broken and bad workflows.

So no. The drm workflow is already questionable. Don't make it *worse*
by building your tower of shit un that base of garbage.

            Linus
