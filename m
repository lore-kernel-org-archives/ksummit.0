Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A95F3BBFCC
	for <ksummit@lists.linux.dev>; Mon, 29 Jun 2026 16:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782751504; cv=none; b=b4IZ3+RuCOQ/qKr87tl2hv6uJeWUvP/6xTvXk5pFJZ9JTi82/UxPOybAdMBo0mEPdGho67VCRPOh5rEbcAgjTkwvQv9swtlgk6e6qvTOI360ZB3JiCarVujXZTM6Fb8YjlkEDay4ll9tgKH6LC7pTm46tKQGXZoeMNz5frzDA/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782751504; c=relaxed/simple;
	bh=/6+ifZtDHprQU+FN5r9GAztnJ2O8TUcMnfW6h8fBET8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KIv833jl2E87oUZ5GVw4sQkEdpGhCJNUXzv5CegjI5AkgvkQHVq/6JyBIwJxXh7Lmcio6XxsnpQx6PbtnoTgLl+u6c9eBUb53iow04EglFsalbVgAe6GIwum764zOIt63hX2DwRqT8q8lEcGY7+BSiiEVZfp7K9YWLB+ymsBkFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pXuLHmMY; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="pXuLHmMY"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-493b0fe95feso7299525e9.3
        for <ksummit@lists.linux.dev>; Mon, 29 Jun 2026 09:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782751502; x=1783356302; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y8YC4i0TJNYj4I3vuqg4MX62HSz69vAn6pP0YmQIjPs=;
        b=pXuLHmMYBktjUD8JUmLSfPO6rsRm7uvlU6cz+qnIsHN8zZZLL/bUhaM5LYoEtWXz34
         DUY32S296C8H3CWMlV1KSzjathr4MRbRgZ1lZuHn0DOK4ACULB9WTkcyqGaLTsiHV7L5
         NZB1v2+9dx+SuehBUwftXywEK28ah6d8cA1ta9qMVeZZokGZTwZOEuVG+oOHQBUDUIOz
         a+LGJa0ih4r3Xp+1E6IFIV1Q2iyE7bf2tCJsMDj9bMA2iafNPsVvqDJNqLScbOVWNyg/
         +V1sW/+ZIVQaSC9M95tEWFgw3JWv2UIdYv1cRfu9LfTpkOMuCZYTSaJQ5FhFJ+CXbqRE
         GuGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782751502; x=1783356302;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y8YC4i0TJNYj4I3vuqg4MX62HSz69vAn6pP0YmQIjPs=;
        b=e7KhTvVwG//lj6YNgNiHFB1YD18QehVihhiKG5oPqUjof57HnKzoz5kwg5OzI0ZQ/e
         YzMs17q8BhJdiTdh7SOEJrVIgUkeYBDkC3FYRN9fjdesFXoyIFZUjq6alN35y3tF1Nsv
         zGMMb91kYusInMyRYvYFJt1JhbsqMNh++gXfDc8+TSyg3yOKca040AYC3DF8jBwW4kZI
         DN0xkgTpExDLOfvsm99MUiEUWXOZAAu8LOlp2Q+u16QlN5hMffndEQB+sCmkmQ1ITZ8L
         06OpGwKhVdiMVQfV6tBut9HfvqqlCZOdPtdFwTqqqhi1kPG222RDSVy0VL1mIxQuox4y
         P6dA==
X-Gm-Message-State: AOJu0YwtRdiDwnvqExbgzingpvPzoJ4gmH2dzlpMZtxtDRKWxiB5nxqA
	vaR7nHlz1ry86XqGu4/30g+NTlaXjkmdFggAE119xTkkKVF38X+PuhE=
X-Gm-Gg: AfdE7clO2m7joVob9kGiIYFCtoGYxl7Q1xGYNcHWN6ZvQAwbdnCyVAdn1aRtWpSCPyF
	nbzczSBpsAiGBFzHZ/KhlaLBEzmteX8FD9ptFdh1CYbtawZyQAWaiygAdXNKyI2eMJ3euK3fY9Q
	xav3Aiqtt1m81tz6H4J7sGeIssbk3w57RgEsWpmahX8qDlZVcVyta0MhKtKind+4vHI6l9H190L
	cZF+M24f6lGM9tyFsIudMLBL5HEUnpZBWnjkNafErNJMFVAyYQcxOI4II0VnV+LKLR6TLve+hhC
	ZtxFqGN4eWWYgmPlC09fFfLjXYd876CVLLG9JAObxLqSv+9zRAMJQ7sGMjkv2ACXIvuo3B4KjMI
	azbGLqUhyAPzInDAOyxXca/09U9firrlo0gJXVQPULNXhvrcba+cRUHdqpVtjFQqqi4VVIv8yqN
	wNFcjnfqIlFNuLnoBfiaIev0e/obznzXtOmSUv6tUDOY4wugqW4wXlHykwa9kKftZ3
X-Received: by 2002:a7b:cb8a:0:b0:492:43d2:9e6e with SMTP id 5b1f17b1804b1-493b828c82dmr5364955e9.9.1782751501538;
        Mon, 29 Jun 2026 09:45:01 -0700 (PDT)
Received: from p183 (dynamic-vpdn-brest-46-53-134-59.brest.telecom.by. [46.53.134.59])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493b8d0462asm295645e9.11.2026.06.29.09.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 09:45:01 -0700 (PDT)
Date: Mon, 29 Jun 2026 19:48:08 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: ksummit@lists.linux.dev
Subject: Re: [TECH TOPIC] Implementing malloc
Message-ID: <1853b736-b043-4ce6-9fbb-98e482311682@p183>
References: <akKBVsFBro_4QM74@casper.infradead.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <akKBVsFBro_4QM74@casper.infradead.org>

On Mon, Jun 29, 2026 at 03:29:42PM +0100, Matthew Wilcox wrote:
> malloc() is a standard part of the C library.  Yet we force new Linux
> programmers to learn the difference between vmalloc(), kmalloc() and
> kvmalloc().  They even have to acquire an understanding of the difference
> between GFP_KERNEL and GFP_ATOMIC.  If they are particularly unlucky,
> they may have to understand other combinations of GFP flags.
> 
> This topic proposes that we should implement malloc() and calloc().

I'd say no.

* they return void*, not T*,

* individual kmemcaches should be used more for better debugging
  experience

	malexey()
