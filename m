Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCFA409273
	for <ksummit@lists.linux.dev>; Mon,  7 Sep 2026 10:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788776755; cv=none; b=XbLooRg6N2dh62nAjdE4eHmriThwLz5I1IZCoX9YC3oGwtHjuKb6a9HPsedqQuWnE5c+qvdaHJezo/DQxb+7dQcy8r/DoQ+1ZELfBKWYo5CaU2fvT1tRjgHu9N6f5o5KwxAyplJ89xIZf/hU5qszhxenmXVJObkZj4UylBHv0wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788776755; c=relaxed/simple;
	bh=odSsB/u5yBK0p7NUXbxRT6g1aXnxRYVHZujTKirCCxo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 In-Reply-To:Content-Type:Content-Disposition; b=G7RyrUb4XbV3AoBZh4+vB0HIsTdnOtlIXrmXSKghjQgEGOSWB8gyVQ5L7HdV0XOETAYebj4g9S/7nyxR69Iz3L3fQmU1XSecHeYe8QXJJ1I8cxG3yVJXw/ykmDn9rzaKNH4OkyYDaRNRMzRhH3Vx8JFQuVhg49TlVVJC8GV7+y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=K7XKJepA; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="K7XKJepA"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1788776751;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RojMlcyBo8KXKoX/Gtly8ZtzkjtceoUdIGXGbeR2hGw=;
	b=K7XKJepACoVAIu1jiUMiWOd4cdtC1eGk1hcQnrLwiFU/ThC3sq5jGIhai1t61WjqdOYEm1
	13yCUtVD0Gs1676LeDJ3Vi04j/uzodt/cnlL4OaCTL7tOlSYcusvHGpJLP5Xr4VtA48/35
	3Tksllc/3uJxSeQ0d0cgFBGMRDccGFU=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-662-eIGe1DyIPpWMy4XJ5oL2Dg-1; Mon, 07 Sep 2026 06:25:50 -0400
X-MC-Unique: eIGe1DyIPpWMy4XJ5oL2Dg-1
X-Mimecast-MFC-AGG-ID: eIGe1DyIPpWMy4XJ5oL2Dg_1788776749
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-495529a93f9so33060845e9.3
        for <ksummit@lists.linux.dev>; Mon, 07 Sep 2026 03:25:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788776749; x=1789381549;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RojMlcyBo8KXKoX/Gtly8ZtzkjtceoUdIGXGbeR2hGw=;
        b=COOh+IOxk/65hJWj1umrUwTAnPqwNrbxMIzTakvaLyYUi/8sE+C1JMhy8wid8t9kdR
         E9MjLE+445PfeF/XblmLu/y79sCE0KiH/8R1w4ldUxB0NJaQ44PgLXbFKmGShXiF7THR
         ojeyNgAccn+UlojznVN1ouU/myS2qsX+6cfXjtyU6QH5D4iozba1um6idksEXeBrd+u2
         mJ71IP8TulWTWHazZly21tsxyctiCbqTr3SQIb/ks/5tsT+bM482wq9+k5qx8qkYZBKX
         kLkRpXnHZRpSR78rVK8LCXuhLS4Jr9yuXEcfepL3Wgo9XUOMuc6iovRFL22ez/GGlbwX
         jJdg==
X-Forwarded-Encrypted: i=1; AKwUvByRJrAgMxUxRNyNc1rZs38mTDinnZ7LlLrkk3kj1s/wy31gZQEAb2BsegQC2UstyLSOHViTt+Bm@lists.linux.dev
X-Gm-Message-State: AFuF++mLm/jry7OaDHXir6bWrv0ermjrERNfMsWOI6dQyECiShefePZc
	+pjUHnk6HLhNme5PqlJcroU1oOSzeLm6tBZO5vNBMBveBzZ6A39Ceg+KhCg5cc2lPSTm7relf3v
	VGf6LqVmXVJDuv/nisIKmT2eGtSlrQCsrkgqpy29wcY19kt2GAcy46Wh1t9I=
X-Gm-Gg: AYBFou1zpYyaDoBwZXnvAzkzlt82NFZhxe/Arp5xPrSS/RHNhySI7jFS4kDZKv4ONu3
	PaTrkV1OoCneUhrr/QbXfTGpGY3r+nLDY5DmIV4Y9ZckRLrQxmO/DGCXsz+XmAOBw2y2H1Vnt51
	vBd8a5iPPJRjuwwYB1fYaMZj9p7RO+mEq87QqlID6cdYPQ1m5eSoz84BYi3f5vN6DX3KQiKCarO
	0oy0Zre2egbJ28XLyupPHeqJAxpPGzpbV19kR+JmUONR1GhEpmfuzO5oljhaOexNUGmgq4USZgO
	TWYopRuz4EnyWtx3w+DTerGikT/+GWZSOmovI4XzTIYHbIo7BN6QS4rw56OrJ55LpZgrANNwZ3D
	VwnCQU1B6fZ2EQK4I6KWaWC0=
X-Received: by 2002:a05:600c:4e49:b0:49c:fa20:cc05 with SMTP id 5b1f17b1804b1-49cfa20ccd2mr198545415e9.28.1788776748834;
        Mon, 07 Sep 2026 03:25:48 -0700 (PDT)
X-Received: by 2002:a05:600c:4e49:b0:49c:fa20:cc05 with SMTP id 5b1f17b1804b1-49cfa20ccd2mr198544945e9.28.1788776748301;
        Mon, 07 Sep 2026 03:25:48 -0700 (PDT)
Received: from redhat.com (IGLD-80-230-79-236.inter.net.il. [80.230.79.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cf7703cefsm407611205e9.5.2026.09.07.03.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 03:25:47 -0700 (PDT)
Date: Mon, 7 Sep 2026 06:25:44 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: sashiko-reviews@lists.linux.dev, Chris Mason <clm@fb.com>,
	Roman Gushchin <roman.gushchin@linux.dev>,
	virtualization@lists.linux-foundation.org, ksummit@lists.linux.dev
Subject: Re: How is sashiko bot deciding whom to Cc?
Message-ID: <20260907062516-mutt-send-email-mst@kernel.org>
References: <20260907055646-mutt-send-email-mst@kernel.org>
 <ap6Nwf94aq2dk3WD@ninjato>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
In-Reply-To: <ap6Nwf94aq2dk3WD@ninjato>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: L2GxduleZC-oiBzR4uggXnGAFwv656A2_bA0APEUI3I_1788776749
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 07, 2026 at 12:11:17PM +0200, Wolfram Sang wrote:
> 
> > So it picked some mailing lists but not others, and some specific people.
> > 
> > Is that opt-in somehow? I'll be happy to get Cc'd on the auto-review email.
> 
> To get me CCed with Renesas specific topics I sent a PR to modify this
> file:
> 
> https://github.com/sashiko-dev/sashiko/blob/main/sashiko.dev/email_policy.toml
> 

Got it, thanks! Sent a PR.

-- 
MST

