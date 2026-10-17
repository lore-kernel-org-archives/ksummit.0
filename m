Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B237A3BB9F1
	for <ksummit@lists.linux.dev>; Sat, 17 Oct 2026 18:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792261250; cv=none; b=ov57C2HyFr4CzpkKCqPni3aZuTlbuE3yqILgzRV57znekgPMuT8EXiy2PK4k+n4RCAzyrb090J7HyPnBCT5omCFntFBMi6spIwW1n98Rt4ckiKsVnuxhxFK/8yMRCuLTN3sehl+Wxl6sr6wpr/YGniRNCiT4ED0LRf4yI1blS5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792261250; c=relaxed/simple;
	bh=Vx0sLcKxI+wdL/8+ejLdglSxEP7File0MPygogAR3FI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=HD3PmVZoqBiul1mtoE2a8a73U4yhGY9K+trdXr84QEMUmCmNSB/lDyS+cBRwjSYniDMqySVT88XV3GNLBcaBbJobZP4/Ohz4h5dRvObRHcYT4hOvoBVhLzTXKyAoBB47FaOkGvwkJzKCTfuX3JbivAeYxeQ0L+saTTYejoZoVeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EEswQQlo; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EEswQQlo"
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3acb512a7a0so479906a91.1
        for <ksummit@lists.linux.dev>; Sat, 17 Oct 2026 11:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792261249; x=1792866049; darn=lists.linux.dev;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-type:content-transfer-encoding:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=kv/Rond6Hfrg9YdL871/kyjngk238SfhghDSvEBnF0g=;
        b=EEswQQlojIBux3bgXLZPiSAzSZeel2i822MRIWrLUFApwUxxe73rMXwv9PpHFL6Lv0
         ZSxrX4tedKQBBRN7RHsO6HHGfZPjC+vavpB0wNx71jLtKPTPxnKz31dUxvnsJYa7vLBv
         Pm54wOilMK9C/sToARToeKHGqvHlx3zAzrm6JcVfPcTSHyIzCVO4bLpJd/YgkvWueCOw
         lXFaPfmup4OCpdMk8ysT/QWW7OJeEcO+6GhaNk5+i0Fk6ZwXGNJpRMiA2EbA4rdKXQ7g
         5cb+BPG7izMxPaeoQnFfPDvvBopkV3KNmMoZHNdY9aY70w0EQM0M13JSHE7Rc5wCA0pc
         AomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792261249; x=1792866049;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-type:content-transfer-encoding:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kv/Rond6Hfrg9YdL871/kyjngk238SfhghDSvEBnF0g=;
        b=cMQkzXsOxn2w8kjqlJbNH0P/PcFv00ERLo1zcutdf3VvBrmCN0gFjc6W6/wetF3U+Z
         wxC2Ngx1HkXGYnRBPXKAUzySPSN4zLD5pIdOHWiUZ3lo7ixcobAA1Cf4ThuFzxEYa8BD
         dZ7wm0Vt6Mk1ngRbOPbmiKgPSJHFr9P11dTcRTg/mVewBwgZFlNhpzRQpHct/1Ogv7d+
         eiEfLaZYEvOVJAEWJEXYkJzoAvlB1AGfnTf0TmvPxwkKEN5wGe9ox33AXx03R5FFPsbF
         S43NHqbMzTD2cAbd4sl0jetP+EkhNXhmuCibY/mn/ZJ7Cppm4DlOW5wp9fJFgp7HBKhS
         sTag==
X-Forwarded-Encrypted: i=1; AKwUvBx32x04kgFEYGlwvpDN11N4vonugVNMWNerp74dlvDIs0PRDshsuO278rudtphmfoXoYtqe6rVV@lists.linux.dev
X-Gm-Message-State: AFq9FYK7xI4g0bxvB7Lrkk8Q5L9S4O2A1VdEQdofZVytM+aWgPIhH4Yg
	SiqD3mVBz9feRA1PLvbe4c1GIULPvjarc6gW9YAcrpbthVnt+vkAmeML
X-Gm-Gg: AYBFou1OBs7Hxn4ZxEc57v7CeCbPin4LMMWo/CsHv0oavSLn51c/FZ7x2MDyZ7FHfBb
	E1cnvTxHyGfv9n9qlmCMugM2SauqTjmI91uY0JiigPYm1jjJjbhqYJ47Xul+CFvzlwmIoZtqI/n
	CWUZuM4z39Gf+CS1SGCUlUJ8XQKLuClVOz2S4I0nuMgNTvo3+uykvt/Ly/N2KzF+aZS5UdjrEY5
	o94Fo51I6bd7ToEEoQYs8hlDyvRIxUGRzpR+hRG6sJ3VKSQgoHZ8/XCurJpx1gtHZn+tr8Fxcnw
	+kB9qyLky6zIEiKBecXK4fVIW4p8jFgm0hKBo1n7Ut95aVxYNKrZs4N8Pl2r/JiKtdZwMUFzkyT
	ODu/+2qQIn0c85M81wW3HawvVU5BgMIPSWQzj9vTo4NCXrZqkzAe+27ar9DmqQgBBX814v8ZcMq
	fPkdmY7FGE9g6zk+XM3oWJJxJpzWBopdAVeu+LdyRUoddsN3CkB9qCuyGoIJnw3K/mrAF2CKCnM
	hTZcpvmmvgSWPz6kwGOK0Nas2du7oXNIW808QcBEEIDJIvLjmVxRQja7EOIJPu/Y5skD7g6OKPM
	HTAP
X-Received: by 2002:a17:90b:3b91:b0:3ac:bfa7:b079 with SMTP id 98e67ed59e1d1-3acee97ab0amr2903428a91.7.1792261248855;
        Sat, 17 Oct 2026 11:20:48 -0700 (PDT)
Received: from localhost ([153.61.198.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ac947d2706sm14054526a91.16.2026.10.17.11.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2026 11:20:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 17 Oct 2026 18:20:47 +0000
Message-Id: <DM7BL6J0WCXU.1I38BKL4RJLFI@gmail.com>
Subject: Re: Patch pre-submission to Sashiko
From: "Alexei Starovoitov" <alexei.starovoitov@gmail.com>
To: "Jiri Kosina" <jikos@kernel.org>, <ksummit@lists.linux.dev>
Cc: <sashiko@lists.linux.dev>
X-Mailer: aerc 0.20.1-349-gb940a4174a3e-dirty
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
In-Reply-To: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>

On Sat Oct 17, 2026 at 5:28 PM UTC, Jiri Kosina wrote:
>
> [ in the spirit of the concluding discussion at this year's maintainers=
=20
>   summit,  I'm using this list outside of actual maintainer summit=20
>   planning :) ]
>
> I have just received a v1 to v11 patchset submission within roughly one=
=20
> day timeframe.
>
> Neither myself nor anyone else did comment with any review feedback,=20
> except for Sashiko. Which I believe is what triggered all the immediate=
=20
> resubmissions.
>
> I don't think this is sustanable.

I think it's just fine. I encourage developers to keep the spam going.

You can simulate github style squah of v1->v2->v3 in your inbox.
Ask your agent to monitor inbox, archive vN when vN+1 arrives
and summarize v1->vN discussion. Then you'll always have the latest
patch set to look at and a summary of what happened when you were away.
Then sit on it for a day or a week to see whether respin
cycle has ended (and bots stopped talking to each other) and then
do a human part of maintainership.

