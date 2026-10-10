Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A082633ADB9
	for <ksummit@lists.linux.dev>; Sat, 10 Oct 2026 10:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791628395; cv=none; b=GmMBp7wa1NLpHfxkfXUngC25yry1HRZe1dm97GI8tmzqJieDP7PfZj6RksU6DXWvzg6fN9S4Hzxbe3+s/ksTFRyo3vlnMQ6FtdobbngIiYsQ8fm+f26SBSDaXjGK5kcNtVZEPYLbm76gzS8YqiKwIWTBIgC6q6gomCzeiDjB/xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791628395; c=relaxed/simple;
	bh=cXpXyyAxJEQk85gzl9TTiU5pF79hr7iF/5HP6KNcpRw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 In-Reply-To:Content-Type:Content-Disposition; b=fSibOyGcf2jAWhg3lp0Bbv4akIcI8Rf86AkxhUkIQpKUmFnKmWQlriKoKFkHjKmKKFLtOt/W7Yo5XFuWHgiO+B5NH2sYpSr0o/M5WhDMo24XM9EPUGFs0NKStt19wrQK/An+oL15B2Ps42VdgiIffPAPRL6E35OAU5o+P7tKlpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HgnV/I92; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HgnV/I92"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1791628393;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uW5cF2qGp1fynNQG0JX/YHgwzhjHkih1Eex3WwO1Nwo=;
	b=HgnV/I92kXG01DTKMkUrP2dX39BoAXibQbyQoob/tNrAJcuHgbkLCmfYQS9k8Ywes+MwZq
	RisB6mUykI8mh7V1hiKDPeBQRILWpR5F74PFyG1HFTe+BEkFlkN9roAEef4i1Kn40TxQt8
	AHjuOhXsDHZqjbcpN7vDEVuZQmWiySU=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-115-H2Shf64yNP6JqxZk3A15bw-1; Sat, 10 Oct 2026 10:33:12 +0000
X-MC-Unique: H2Shf64yNP6JqxZk3A15bw-1
X-Mimecast-MFC-AGG-ID: H2Shf64yNP6JqxZk3A15bw_1791628391
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4a1612c4b80so5715045e9.0
        for <ksummit@lists.linux.dev>; Sat, 10 Oct 2026 03:33:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791628391; x=1792233191;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=uW5cF2qGp1fynNQG0JX/YHgwzhjHkih1Eex3WwO1Nwo=;
        b=LLnTS9wa6vWTwshUNwUEc843GwV+q28UWs748swB13fmJY1ae7eJxunXNTL51wuiCF
         ZXQ7pO5/sWWuSYS+uJ9gxANZU9iXpYM3onpckGpNcdxoG+OGO5HDYQIq+g9AUuuzNazE
         5bOmOH4cFkR6UdKozf/saNjZmokXS7tyxwR7DNRjK/kdgs8QTc+uObht4a8/fOrjHFCm
         IYiNQxPtRBPvh40yET4eGamDGyqLLAruSVfCLiSod16FbLPWsWZmVxEcH3Q7aHoulcVI
         FMW3G2BenOY8XlXdbF5mTc7rXzEpfIcEknhAgKVOCvXTGQQxyB7D9ISCjxY1g90aGSDt
         C5NA==
X-Forwarded-Encrypted: i=1; AKwUvBydOoGWwxJhuzFbDaXv27fSmfXDnWcH6/wO+TPOgqfAG5jlloMK+aY7X+C/DOeA8a8qQwrTorFS@lists.linux.dev
X-Gm-Message-State: AFq9FYKPdVKBElgBgx/ef8CurjOXzgtTkoAmXwFeYkh30/tqEKFuHLHd
	lYlc93a8M22Z0siGvtuNPR1euOx3vBCUcv3H70U91YuSSpgfXs6ln/dmbGZ2QpegJBLWwWthZqd
	I553u8i+f8CScDNecrX3yCVD/9s9ZXCEMlOyogq5o3Ssot4FBfBdTvY8W5uA=
X-Gm-Gg: AYBFou1zWiSmBA6MlIoy8zgmL+nLzWQYIB3qRAjOA7SPov+higXmYZy7liIJivMVGT1
	E32JC+L49eIZdjIGe2caYtoNI7nsMosEV1kEXadrpHY2UuOG6Te4VrjZ5a03W3X3/Z9OIVxKlUC
	JqPDLrwtSZa6+SdgZG7jF/dGOP9YNlokXLGy3wuU5oF/za2O0KIAnvAeCTq2zRXIx45qazl0t9b
	mofiZI1NzKjU8XpuIXGKgyK3JhU+iOheSIyMVCcCmhB5iNxFP1Z1x64fvnaQCHNGfPsbgikCmZm
	GO8fw/KU/cvSP26l+17HyGtdZHcGhYXy/o+Ct9+kBtUmZBjDv10zKegdYewJoDKTi9ljXHA=
X-Received: by 2002:a05:600c:3510:b0:4a1:7033:5b55 with SMTP id 5b1f17b1804b1-4a18e4cc437mr94488375e9.21.1791628390733;
        Sat, 10 Oct 2026 03:33:10 -0700 (PDT)
X-Received: by 2002:a05:600c:3510:b0:4a1:7033:5b55 with SMTP id 5b1f17b1804b1-4a18e4cc437mr94487985e9.21.1791628390226;
        Sat, 10 Oct 2026 03:33:10 -0700 (PDT)
Received: from redhat.com ([2a06:c701:73fb:d100:601d:d7d4:d03f:527b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48db98c3a13sm8328544f8f.25.2026.10.10.03.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 03:33:08 -0700 (PDT)
Date: Sat, 10 Oct 2026 06:33:05 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Thorsten Leemhuis <linux@leemhuis.info>
Cc: Sasha Levin <sashal@kernel.org>, workflows@vger.kernel.org,
	ksummit@lists.linux.dev, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, corbet@lwn.net,
	skhan@linuxfoundation.org, rdunlap@infradead.org,
	broonie@kernel.org, tytso@mit.edu,
	Linux kernel regressions list <regressions@lists.linux.dev>
Subject: Re: [PATCH 2/2] agents: add a skill to determine Fixes tags
Message-ID: <20261010063228-mutt-send-email-mst@kernel.org>
References: <cover.1791499378.git.sashal@kernel.org>
 <7fa126fd22b4449cf63a7045f7cd959e106fac87.1791499378.git.sashal@kernel.org>
 <c3ce794d-1ac2-4ef3-9e5c-1e171bd77a89@leemhuis.info>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
In-Reply-To: <c3ce794d-1ac2-4ef3-9e5c-1e171bd77a89@leemhuis.info>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jA1Wz9taaqTV-2ilJTo3OYW6IvXrQiIyXsBdYXWj3Wg_1791628391
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sat, Oct 10, 2026 at 11:40:56AM +0200, Thorsten Leemhuis wrote:
> On 10/9/26 00:54, Sasha Levin wrote:
> >
> > +A ``Fixes:`` tag identifies the commit that introduced the bug being fixed. [...]
> 
> Sorry for partly hijacking this, but it seems appropriate while we are
> at it:
> 
> What exactly is the right commit to specify when it comes to a
> regression caused by a change that exposed a way older bug? The change
> that exposed it? The change that introduced it in the first place? Both?
> I'd tend to "both", but I guess some people might consider this as too
> noisy.
> 
> I've seen occasional discussions about this and our docs for humans are
> a bit vague here:
> 
> Documentation/process/submitting-patches.rst says:
> ""If your patch fixes a bug in a specific commit, e.g. you found an
> issue using git bisect, please use the ‘Fixes:’ tag with at least the
> first 12 characters of the SHA-1 ID, and the one line summary.
> [...]
> A Fixes: tag indicates that the patch fixes a bug in a previous commit.
> It is used to make it easy to determine where an issue originated""
> 
> And Documentation/process/5.Posting.rst says:
> ""One tag is used to refer to earlier commits which introduced problems
> fixed by the patch:""
> 
> Ciao, Thorsten

I'd say the one exposed it. this way it is useful to answer
the question "do i need this fix".

