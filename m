Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=74.125.82.175
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792669509;
	b=aUf2fTXel26/eNragZa0l4MXPXLda6Zy9dCqtyPGs1NkMBxuewR2z876VVRW2Dk+YTyZ
	 Pgj7QTuOrkfEMu2U3VYK50NyU4qKwb4dXQ4tqFdSrHh3DsDu6+V+htCvDFf7HnPhuXO+S
	 fmoToZlgAPxilKGVfmmVjMfkDDZO1PbXfkcH80bUy9CBRDJUmZ/NSLGIn2uXekV1U28dF
	 ocwKz3XoNL1QoiJDQ3Zh0urjKtjYG1dsFjObEhqJJPSf9y1vqgvnadDrX6p7eKD2RKBdL
	 ecBYQmTbRJiMEbyThI+A3MdLQVMyNgKwR/PoGvTzqffjO2VBLXPAzzvuR84PdSeCJ/w==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792669509;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:References:In-Reply-To:From:Date:X-Gm-Features:
	 Message-ID:Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	bh=UifHhMPXVlR3/YmuyIrMlpuZk373MtjpLyJtHpwSm04=;
	b=Sm4Cca/xs/NHBiino7xXKSQh0TOyXQU+qMpUK2Px5E+H6Q33W5OfDcX0eehl7gMoytoX
	 +q1tLn+7mX892MxMJmIiw322bFucAz+XirC7qQwvSKjVkPKEX6XacG8ReOqsPqwtLDeTu
	 J7/zkRf1/0GZ9YFH+ZszsXplvInXVOlhXRRrCTdcrzGyBexLiszaGWB/+VxEi9Cq2+DB6
	 xIro3bwo/CORipnHMxQIjBLpE2laRp7o47qToD1NY5vXE4s4PH5lqmtpVm+Edr8NQJjHq
	 5GXR00hBfaoyCcz3ORUgfIb5av8z75S+hxJiv0pNUF+ZJHemmYmEod70Nsq79Z9pj6A==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=BdWcob4R;
	arc=pass header.oldest-pass=0 smtp.remote-ip=74.125.82.175
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5287F606A319
	for <ksummit@lists.linux.dev>; Thu, 22 Oct 2026 11:45:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5287F606A319
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=BdWcob4R
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-35ca5244753so200587eec.2
        for <ksummit@lists.linux.dev>; Thu, 22 Oct 2026 04:45:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792669508; cv=none;
        d=google.com; s=arc-20260327;
        b=hnmWSI8wEzGcT4M45G5bdQt9tuGgfmt2/S8TL+RkxrWwaNTVY2RCbueePDX9GICY+R
         2tT0cgg+lmKpSyJWRklDIsHCbknhU+6Rno7WxX2HXcbQpFAAIL6SRWBJGFK5aM61Vzv5
         wGnmljrafuM/lOmZxUIPuW+23nNfVmUpPFUJ8GFlQnPsNCbm/RyDXoR8JGPKmshPNOHv
         nFKDB39lHoCZU5lUccB1QHLmU4vhENxAByScIhAL6uyfdbb5hRc4Ke+zigjcZeEqv/45
         EzjC/wPTXeA5VRVc50eh5EfZ4mhoEIYKnPnqs5EncqcIsNjWK+WYsUklk0FpgCSqfZCm
         4tYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UifHhMPXVlR3/YmuyIrMlpuZk373MtjpLyJtHpwSm04=;
        fh=5sJ/ry0Yq07lOexfCx0FJO2DHpsTs3MZUz/xF913Huo=;
        b=XjxXzjMiJRySx5oFYeefkYNwGxEbyGtuwlmlDq5dpHvtXKFAbeZ+z/GW6f0qob5vFY
         CRVFmqKHw9JpRGPKZxkYf7WGaevXUKgBPb4QtYh9W/ZqKCJ3OzddWiSw+epOzIJZIvIW
         HFc67HnXAjty+3Z32TRe/OBp33mRXQzIQW4ucFuW0Bz6K98aQloOt636flGwJoqmYCrD
         Ohtnw2qKEFlL/pRGJkPu3byfBHa66ShR3eraxn3xL2JbAVll7qQAvj20i/eWX+e3eahd
         ckV6+OGnVP1NHsMKsL19yGiZjRHYugoFJgno9XcrusgGcVQsKkCBdlPNIuDDji6G4M4/
         0wgw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792669508; x=1793274308; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UifHhMPXVlR3/YmuyIrMlpuZk373MtjpLyJtHpwSm04=;
        b=BdWcob4RKyXhGi/XwulMsQHg19cCIQWmYOhQLf8UqxxiOC81aAM8qQQvp/Bx6gMYuc
         KUcknxugWQ3NMJ2us8WWQz/WS4M2EtRDUEMqUrBHWPBO8/crEzsJB1rd/Esc/LeTLs1g
         pZ2zbaTCl7u97+AyzYpD/VdJFuzu7ll2LhDxHYXiN9Buox2/tcRGeY/X2DqL00Wy+Tmc
         5fRijUR0iUHjaL0u/yoan7vcFjX0hO1MLThh7ELrhD+YS17VQE53DIxEMQppCYCSSmHj
         1VDYxlKYWTHiZYbj1nOEKsvgqm9S+DRLYajZZOC82VYXqr6db2lh2CBbdA2q+9qUx3uZ
         n38A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792669508; x=1793274308;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UifHhMPXVlR3/YmuyIrMlpuZk373MtjpLyJtHpwSm04=;
        b=PCK16kWnwnhSnhNc+guPxu5QgtnBXW/qaqqlhom50+b7BCI8QYhAzgWw8uzXVKajEd
         N2ShvvVvYvD18efCnPxY7AZdBYQKxkkZrFF2CnLaOogd+2S/ovzruCqwuYZA+fiQh5B9
         aqqem9O4sZjezQIe/0EA1iEDcLp+x6Mz52SDXAAWpKIRMZL3KGJmU0R7TI2KV9hR/b7c
         kHzg9u942cZ476rnZR3Hu4xzSf/CscXHgjUKvfRx12fM8Yx+XDGirIuL1HChrwq3isNg
         wswZYTtHgNwXEY3jYtogoiz1qWOQlNwlzDkYPD7gyV8VsekfkbN502QqG0Jlisje2U83
         0nrQ==
X-Forwarded-Encrypted: i=1; AKwUvBw2MQ6LLin763lehD6icrd/L1fr0m25p7GO8VhvEcbov63rq/yqIiZ1xh72DVIku/3t01PV0wtn@lists.linux.dev
X-Gm-Message-State: AFq9FYJ+jGnQco+WRKQoDJJwzNhHSHpkwjuQtw6TI01XkaY37JlZPjiW
	Nicv5SiiDkhDO0/jbI2Oz9I13vyXdQjninQQPMFTdK6i+qjFEKf5bdvReC2GcgtbEktp1L3PIDk
	R7p2xhARzJdwVtQrkfwHmRrjTjDIzU9FOu651Dj4=
X-Gm-Gg: AYBFou25aNVGrUF77nyvoSiaBno51sXD4lIXBwwAfB/ZDmvq0zgWcAz7sFku3hYGY7g
	cZDTB57HJO4PYFK+jWqjxgSlcZPJ0yeeM1qoF+KkLwgJ+Kx7Nod8XLM+1tW17AnevWoBBgmlXQp
	YYXA6K9KQkOaSR7QfitaHAxCyXUncSEsGxgtDvC8hhfufh6jw7Lh1m+IskcEOESONQYroeryooo
	GN2R0smQO3G1DfAHyGc8VY2skEnP1QA4KVWq+Ht4ZuZGN/ZYwO4Yek878Z74KdRTDi6PHkZvFwQ
	CPRyA/YfgQ0J/4zwpxpl7O7EclD0GPDQSSxMbuY++pEW9rS8zA4YRItdKVPcPHG4DrEPv//GXow
	HX9heLMSZ3GaaD/ttuiC9mCRL5eddzvblfKD9JS8K7O4M1i/lRCv9CW9o6Roe2SnmXJbX7moyHU
	g7o1UK3bqBbstNTLTdOjgI7IesZAhKplmciYmHrlmorhac8bhjNOV9OHQFyX/06QRZGqPNBbdHT
	TvQ6uFBRz9zt36+W6kxq9ABzV+AxdMPtDbN
X-Received: by 2002:a05:7301:1a18:b0:351:7883:bf47 with SMTP id
 5a478bee46e88-367473c9a92mr9794707eec.0.1792669508335; Thu, 22 Oct 2026
 04:45:08 -0700 (PDT)
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <atO3pCuUxI950ftN@mit.edu> <3354ebda-5158-489b-a577-5cb10e5d5fb0@oss.qualcomm.com>
 <atZ4J86j7CXF82HX@mit.edu> <2fef166e-088d-4ffe-8d0a-0143aebc1b26@acm.org>
 <ate8oESqneK-3sQJ@mit.edu> <7e473af8-2f7a-4a36-a926-e756873c9c52@linuxfoundation.org>
 <atic3bbDeyJI6MJs@sirena.co.uk> <atjlUoEmTagZjrYI@mit.edu>
 <atjpS__OwjZ-Q_Fh@sirena.org.uk> <20261021114524.4c2ea2a31a9d527b78e78768@linux-foundation.org>
 <atkX3WwwV8XhMRiM@mit.edu>
In-Reply-To: <atkX3WwwV8XhMRiM@mit.edu>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 22 Oct 2026 13:44:55 +0200
X-Gm-Features: AclHuK-XAu1-d11zmrhlN3wsQruIzf1xRWqY4TkytzhxzOkV_AzC278eMp2GmIQ
Message-ID: <CANiq72n=Y6XMyfuqYNUYpt5fxVmyrm6di6BAgXdrKZADDMm2Qw@mail.gmail.com>
Subject: Re: Patch pre-submission to Sashiko
To: Theodore Tso <tytso@mit.edu>, Sasha Levin <sashal@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Mark Brown <broonie@kernel.org>, 
	Shuah Khan <skhan@linuxfoundation.org>, Bart Van Assche <bvanassche@acm.org>, 
	johannes.goede@oss.qualcomm.com, Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev, 
	sashiko@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 21, 2026 at 10:03=E2=80=AFPM Theodore Tso <tytso@mit.edu> wrote=
:
>
> It's considered good engineering practice because regularly running
> the test allows regresssions to be detected, and by increasing test
> coverage, it makes life easier to feel confident that a future code
> change, or rebase, is ultimately correct.
>
> Of course, you need to do the cost/benefit tradeoff.  If the test
> takes a very long time to run, or if maintaining it requires a huge
> amount of code outside of the test, then it could be that the benefits
> aren't worth the on-going costs of keeping the test around.
>
> This is one of the reasons why I'm a big fan of unit testing.  The
> unit tests tend to run much more quickly than integration-style tests.

Indeed, it is a pleasure to work on projects that routinely add a test
for most regressions one way or another (e.g. compilers, typically).

And, yeah, sometimes the amount of time/code/setup/... may not be
worth it, and not all kinds of projects can easily do it, but still,
the bar for adding them can be quite higher.

Regarding AI, LLMs do a fair job at adding tests given a reasonable
prompt like the one you linked (I like that it mentions looking at
existing examples first; I do that in many tasks and it can definitely
help).

Can we move into a new skill (or similar) after Sasha's series land? I
see you already wrote it in a fairly generic way, i.e. not tied to
ext4. And hopefully having the prompt around encourages people a bit
to add more tests when it makes sense.

  https://lore.kernel.org/all/20261020161642.3713052-1-sashal@kernel.org/

Thanks!

Cheers,
Miguel
