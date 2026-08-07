Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D403A1A56
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786108355; cv=none; b=s4Tq8ICdFrDORvoRzkPpug7f8Xml/YoXDxe8QWxtsrFJ0wYIbmomzwcjYcoN0FOGbp3rlAMFDMV24+EVPeu//DCEtUIWLWV14u7Tl4YJPjGyBNl2KfznOKn5oHU6aTtidoiyNKfs/lUPRVJKDUFZBvSe6JsWvJVSbVciKkgHZQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786108355; c=relaxed/simple;
	bh=s4Vu2ZxNQf2fHbjDSySN6isCfzSTLfMbQOL7W6BWcYM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m4OfMoncuLGjzRxQtIAz1LKoXVQea/XK0ZlfMgjrbS/0oAJ4u+K62N67VWojfYIvZd2VoyOGhkvv7+Ecx5QBoFISH5DMrGxBAlCexmBM7EcVCnmGO2yhbsgamqg6+BdHSkjoxCVKske7tkEAGIap6unNNeeG4oUZ/511Hb4+OLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pD2QLAuL; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="pD2QLAuL"
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-496b7622a83so28408865e9.2
        for <ksummit@lists.linux.dev>; Fri, 07 Aug 2026 06:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786108349; x=1786713149; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SBEaMGBg+ElOOm4N8AfOWHzoi/loaZESd85WQicC9K0=;
        b=pD2QLAuL3fNDgCeVv/S55d3fwF/FExSsVUuLnFXstqmEgS+rrElFL/gCfAKlQUVO4y
         KSSOpD7SKfK0xN0VPe4WsNDkO9hQM+I9QfXR3SWwB6a+GAarfyA3yxaCg4uK2nggvDcm
         0cDjHWmmpI0pyWR2q9ya3bI8oelVAaHKDaJCmNNaYByPjL7b1pVphqv7iAnglugZFbZM
         Rw3VCzFJ8+K9fmuQsuKSoGN6SSs387L3shhOsajkEK8Rm17xzKeDSEJL4NqMwr0ptlMe
         5BYJ5iAkQy+8NjBTKld9JpNYOB2IMEeyBiMFCwIwm8WIOoIKokOGUXPa7nVSwuxY7Pfx
         8c1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786108349; x=1786713149;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SBEaMGBg+ElOOm4N8AfOWHzoi/loaZESd85WQicC9K0=;
        b=it6THJcTtjm3559jUGyUioTcqycfsaFUmh1Fq17x7jgA6NZV1aApPf7uE7Tu0Tn1Sl
         kiSdbr4DJ9u4Lqo0vrakx8Pc7VRpdxADN4LRTGdqAY/0zJ9ClY9GrWeB9EBz58QuSRpB
         e8whIul5BqOP/EFgKQzIki+X/RAZHup/KeCYWJojPQXsiIb2K7HYl1PzX7QHYZNBXXrW
         Eom8Y4E5lsr9/Y0LMTRRzmhCImVcM/iK23kH/uCqBEEiH9WT/ndhsK/H5Ch2fpGdP+JR
         0eUhxX119MulsMCnGxe1oH+2haWg2E0UBfn9hkumCShsbLeYj2zUfsa/52jG3uiBcqk7
         ynJA==
X-Forwarded-Encrypted: i=1; AHgh+Rqy2B+d7hbGrr52nonxgNpzvHFqvu/0I0g/WmNkcns1dJoysi8FN3HiSq/rmeVzTujOX4bNTkP7@lists.linux.dev
X-Gm-Message-State: AOJu0YwRN5kyCGi0msVAOjGstcnHiFNGV8oHgsUYZfWPMJxgwNzaFiVP
	zylMg6dfQWB+OBvYvQaQmt2+w1ZWeMXaUJFSdfWMSmMGq7eDMBc8h1oM
X-Gm-Gg: AR+sD12JtEBQBcVQdljAasfMtBOSuAo/pA6Cqp1x4taSH4ud/ZOPBtr61Ei3WBJ+jCK
	1IgQioPIzOEuGcjc5bSQfufzbZCSAtaAigiqYljTJLh9rAcBwHzvD6WJ1jVauCuv26GBPSAQ5Sx
	TT+7D7xUbW+O8iCOh1BpjqNYRobSMEvSocd2oyr2dNSrCBV0NkKfWzsXNxnXv6CuaNM7S9Izqyx
	wOUg1SO61IyhQ1BSZFqRgVxc6bK0VkFNxKF7/QMBqCODMLmeketWS1ADRVZhoo3RgRS1b405nio
	orAu5qOStwDS6nOmC0jh91c9Gtx0JM8YvdzQDWQfwzzFfOMjkqxeMzWMp9oW2mulOegScBzD8JR
	N/4Go89XhkDQtuRpLd4NYie2jY6cpezbqZSeOY6c7VJiDfDagKiit6yDUbHS6CWuZfXJ9ua4fAW
	/1hxT9CJCLEHx/LuBEYSex52fTyGxgOEgRKvjZVqWjBHeaBt7C/T7gpxE1
X-Received: by 2002:a05:600c:8b4c:b0:493:bb6b:5bb5 with SMTP id 5b1f17b1804b1-4994e7c4de5mr281295685e9.13.1786108348853;
        Fri, 07 Aug 2026 06:12:28 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4995dee21dcsm45519125e9.0.2026.08.07.06.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 06:12:28 -0700 (PDT)
Date: Fri, 7 Aug 2026 16:12:24 +0300
From: Dan Carpenter <error27@gmail.com>
To: Mimi Zohar <zohar@linux.ibm.com>
Cc: Theodore Tso <tytso@mit.edu>, Konstantin Ryabitsev <mricon@kernel.org>,
	Greg KH <greg@kroah.com>, Jonathan Corbet <corbet@lwn.net>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <anXZuBSeZddyT_xm@stanley.mountain>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
 <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
 <anThWLhqipEM34kg@stanley.mountain>
 <anVK-qkUOaIJkt9M@mit.edu>
 <b0dfeb4bc8ca60768fdd6853e7fed7fdd22aa26f.camel@linux.ibm.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b0dfeb4bc8ca60768fdd6853e7fed7fdd22aa26f.camel@linux.ibm.com>

On Fri, Aug 07, 2026 at 09:02:14AM -0400, Mimi Zohar wrote:
> On Thu, 2026-08-06 at 23:23 -0400, Theodore Tso wrote:
> > On Thu, Aug 06, 2026 at 10:32:40PM -0500, Dan Carpenter wrote:
> > > On Thu, Aug 06, 2026 at 01:28:25PM -0400, Konstantin Ryabitsev wrote:
> > > > - actually applies
> > > > - isn't against a known LTS branch
> > > 
> > > No one wants patches against an LTS branch.  That would violate the
> > > stable rules since everything should be upstream first.
> > 
> > Right, we should issue a warning if it's not a backport from upstream
> > (e.g., if it's against an LTS branch, it should have an
> > Upstream-commit: tag).
> > 
> > There are some few exceptions, where a fix can't be easily backported
> > to the LTS branch, and so a different way of fixing a particular
> > serious patch needs to be applied to the LTS branch.  But normally
> > this will be explicitly stated in the commit description, but we don't
> > do that in a structured way, so it might be hard for a non-LLM bot to
> > figure this out.  On the other hand, this is a pretty advanced
> > technique, and it's unlikely that a new kernel developer would be
> > doing something like this.  So we probably just ignore this case for a
> > newcomers-focused bot.
> 
> Hi Ted,
> 
> I have a patch that doesn't need to be upstreamed, as per Eric Bigger's
> comment[1], but needs to be in stable kernels.  What is the process for doing
> that.
> 
> [1]https://lore.kernel.org/linux-integrity/0c590f6c-8ab0-f0ed-25a8-fa8a2ec6008e@huawei.com/
> 

Send a patch to stable@vger.kernel.org with an commit message that
explains why it isn't needed upstream.

regards,
dan carpenter

