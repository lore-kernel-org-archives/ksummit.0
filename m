Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BEA424662
	for <ksummit@lists.linux.dev>; Fri, 10 Jul 2026 11:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783682502; cv=none; b=jzxt7eQiNBcb6pJgBKhGY9FEGnXWjEQO9TZIY0Os/Xekqkuqje271hWOFFEXFJJY7g05fckn29fMzmQ/zHxJXmSzDIXrkg27iOvZhE0O4HvUFK58QLW/3dvcl75GdiBCnxny0+tH+UL9GnKvqR3YI3mPewNYl+Q+iH1y9V3jQ/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783682502; c=relaxed/simple;
	bh=nTEI340WiTMgBfNtZMuZi0jpbMT3d/Q7U0apAe7VPXA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hihg2cGhN6nK5ZouP+iadwfAV9hfvrGz6uW3DookVV+GV9wLu7O0lslTqKAOvvK3e8/RVFA//GDnUEYKsT342K/jICaXIKOZl21LWPD5aGhu1AUhuM7Gv9q1e9hBQXOnQAe8u+5tXFJeW33Qg+OUVI4+vCrMDiauymaEH7/T4do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-9618b8bdc51so262979241.1
        for <ksummit@lists.linux.dev>; Fri, 10 Jul 2026 04:21:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783682495; x=1784287295;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=R14Iu1c1xSwT75d4RQWWByXe6cLmyXyLnmlkHXSmZeQ=;
        b=DJnETEQe8fFuUzsfKhKGGt4cDcX5vldFMkENQvVPfo8J6QKXQXmqo5dy+KnITOIBqZ
         Q0gxhOH90SH99wYTg8sxehvxdGuQSVecJtPLeNDqehUCNlsftKVbV49wo6sGquNOSlfb
         jLBZXAm/BzgIyf6+nD15WferVVl0FPixM1MZ8CEai/iS/nisbJKIPg7F3xCFzcOu//jH
         2qsdQ4xhu/UmJP6SG9ZGyy7018XIYNwlPI52pus8NVTLqhQn+n4Wc4b47sqQA3TKyDbT
         ZHi8RF8pffqyhr4zmVO3wIvx7WGKs9Hrfyav5fnd3GqWTabi4JyUmKIXtW8IOKMOyYsQ
         +5HA==
X-Forwarded-Encrypted: i=1; AHgh+RoxdbRuUhV7baqOQXIPMLQrOSuL8CzUMpmbPniVz8RqGaL67ZxPcWtHkfNf1qM7PigeMXV5dsyW@lists.linux.dev
X-Gm-Message-State: AOJu0YxQmaK3Mc79sgdQj5yAVi4/XRwwD/TWBFqc3COfQcZzqLKu4ZaG
	KPp7Z7O17zB5+fu1U/Fh34HT+5eIRTPLd55KUfV30f2lhjpnwozMT1cYdBRHAja5UrY=
X-Gm-Gg: AfdE7ckdSwEg3hY/ozz56/ixmy27k5Do8HMT+342tPyOhTjEITtjXN6Yxm/BRjfPtfm
	bbjhPEoHiG2H8J912YWri62RC2IDTqXt4oHneNhbRHay+7gsEJVjRZc6Z1udqznW55nHa+KmurS
	5nB1QkaVN07e5RBqV4NPrX2bI1XRUMtTs6AYXE0VxeqcClBMhjGRgivlvwi80AE/2RDKmEdfzB2
	BD69i1Og2SxmRIH1I4SkPdTXiwOUlMzJYsNSDjM6rPgVDXgfVnX19CHx7+0J47l73bNIZc6sKCn
	palSm3eOflvlnW3IULOhhmxQCs656kO6eJ8TLutRYW5ctEoCDy9ECOme9Wbwtsek7hzu5gzyKvx
	8YJ3O7pYoYIPmN0B5QkdJgN6WzsEXgSrqaW3wr9MWKj/fcgjl7joyompXrSOXDXt6J3e8UzUJWX
	ebYGesiUN8AOfLGOIWXP/61vqFuN+eSm8lZFtgynbk+5WFppKt1Q==
X-Received: by 2002:a05:6102:549e:b0:744:cb59:d6e0 with SMTP id ada2fe7eead31-744dfbf6041mr6628192137.0.1783682495285;
        Fri, 10 Jul 2026 04:21:35 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-744d6e38d35sm5093153137.12.2026.07.10.04.21.34
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 04:21:35 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-9697a691b5fso223001241.3
        for <ksummit@lists.linux.dev>; Fri, 10 Jul 2026 04:21:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rp0XtVExIVQr13/CPlTiA+dEAfWYAidQ5FOChdzHTE8tV2XteCqD0JAJjsCv01p4w8Pi1Ug2dS7@lists.linux.dev
X-Received: by 2002:a05:6122:3108:b0:5a0:370:f12c with SMTP id
 71dfb90a1353d-5bf75e5f6c0mr6050853e0c.11.1783682494755; Fri, 10 Jul 2026
 04:21:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <akKBVsFBro_4QM74@casper.infradead.org> <202607090956.6381F35@keescook>
 <ak_WOfpcaZIuh99t@casper.infradead.org> <ak_rr7I4wVPieWYT@stanley.mountain>
In-Reply-To: <ak_rr7I4wVPieWYT@stanley.mountain>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 10 Jul 2026 13:21:23 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUBHvY30ZuV=mpnkQ0Fip4vk0iqb252H9YNiOJ=AtPpyg@mail.gmail.com>
X-Gm-Features: AUfX_mx9n3F-y4q-o5Orw2-kkWSsp8kuor_BGKQZolc6OzqwIhTcTfzHHAv_4Mo
Message-ID: <CAMuHMdUBHvY30ZuV=mpnkQ0Fip4vk0iqb252H9YNiOJ=AtPpyg@mail.gmail.com>
Subject: Re: [TECH TOPIC] Implementing malloc
To: Dan Carpenter <error27@gmail.com>
Cc: Matthew Wilcox <willy@infradead.org>, Kees Cook <kees@kernel.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Dan,

On Thu, 9 Jul 2026 at 20:52, Dan Carpenter <error27@gmail.com> wrote:
> On Thu, Jul 09, 2026 at 06:11:21PM +0100, Matthew Wilcox wrote:
> > I agree that many memory allocations benefit from providing more semantic
> > information to both the compiler and the runtime, as you suggest.
> > What I don't think we benefit from is "And you have to pass this magic
> > GFP_KERNEL argument too.  Unless it's GFP_ATOMIC or something".
>
> You know that most people are using kzmalloc_obj() these days and so
> they don't pass GFP_KERNEL...

You know that most people are using the devm_*() allocators  these
days and so they do pass GFP_KERNEL? ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
