Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C173330328
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 16:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788883767; cv=pass; b=YbJYq6ZG0dgw8lrmeZrzYaJe5FojJaKwYLj+YwPYqhSO1MbwDpr8NGVmAyyiuh0g4w8AjSyCmOCCcvgVOkbnkeuo4o14qJ32Kc2HiyTLPhxyVam2PrdU83oPkkNYeSGltyHHm7J6wluWldjOMauDbqe8UDuHrYn0+RDDY8oyqPM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788883767; c=relaxed/simple;
	bh=wVUDrvSbPBk+HWFkInVbzLEnl9HFkofIN0IRuBMmxPg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y5/AChvhiYXRl4LjE4Q1cOvBPe2UclvKeyCIBbvM0shckssrqORIYre8zChzxziCnJVxNmn3zoBicDmHDkS37XFisNoTf2jg+fH8BYFG+gQejrIWpo0ZJWezXIZbstOsdOwQoElCPSG1ZlRL7KcqINoJqojYIsatO5zZy+fvBuY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KyfNicNQ; arc=pass smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KyfNicNQ"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-49b96837ca3so38531285e9.3
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 09:09:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788883763; cv=none;
        d=google.com; s=arc-20260327;
        b=sAkSAsUBjVl+Ie2sk2QR0OMgXIkDY7DK2eLrXG14lNmBKid/lLuaXr30YjImgtRldc
         JN5wHgVoQ+h0yRGGV1nS1so567Dvy1DH1dS0Nsw25n01FsCwgFltHwh1kuzFNi3P4qKb
         OadvX/rwftL9qYA6np87MbHyPNLl9OZamcTu0gHWRK8Q7D4g4fmYGvc8uPcGp/nkV/MA
         vJkjQWZ2AqlWdi8ZI88y5gro09Kw5fXyX4m6FL6v7UcXeV1YZ8KFYqWPGWM7lDd7gMl3
         tdGVwR72ELUSDoXJMR45tQf5WGmCuE1SJw0ZlyOMIh7pqkteVDmQcGln/9DpDnALbGWa
         rd/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TMlQeCwjr/zfT7WLy3CmXUPSxyQJbx9K64skS0wmz3I=;
        fh=37zWan4fmzs9TaoZl+AiI5m3wfFO6c+eMj0vwKgP4i4=;
        b=hSnZHUo8jDcg4YGZy+nRgwBA3HbQ+aiFhBQeqmPdaRB08sy6+sOy8qExkN3OhlGFNL
         EgLi6bd38qYzPeSA/xFNBSj0iNCompgzFTKalL8xjWGn11hqYQwrHKMsE0iK6SdeZzZd
         a1QK3FIu/+TehySyafSXUJ7uC7E5ADQg6I7rsJR6ZLPQy8+S/02OqO3Od05lghCvxs3a
         E4f0z2c4lnz5qjySkCe+Q2xlJriC4wBM7jtQejfNa0tUjl3NViDcc3Fl2A54THEDocpR
         W8zlvhuwJS/rmpbYlr/6UH7PzL6KI2KJ8qr2kg//I7AUl9OFw9VbirKlc2cvmU+L9Lrp
         z8jw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788883763; x=1789488563; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TMlQeCwjr/zfT7WLy3CmXUPSxyQJbx9K64skS0wmz3I=;
        b=KyfNicNQYKFhdpBtY0tIn+nXtkvYgEsu5VZdj/5JttBYCyZ8lu/B1qeYvrBZVUh8QP
         vh7G2jcQd3gkJL5+eiC6kANIxEYpWBzlOj0JmnH5Fq1L6N31Fw0+Mf7Ky8b0chXAGSlu
         xELbxF/qabbsIhiXxi0rIw+2XbF2V0JEjspklT5rWzm6yXIfwQCUVSJPqtsees2vHEvJ
         k6EikLBNXexkI6vAN4QoQVqU3TGYm3ThZlc5UoSOY/ZK/VSjIGqRxofz+QmaJrzsMImy
         vMJLwyKmKnXz00Rwtai6GxiSotLeDqxfilGMIXh0lNCuf8hIhJcuYX9s60maTkTwiIQk
         FBEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788883763; x=1789488563;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=TMlQeCwjr/zfT7WLy3CmXUPSxyQJbx9K64skS0wmz3I=;
        b=pz5dJ5PqT0Ky/NYoiBYFGV5OQ3tqWW8X6dpxJdPX4L5FHaH1lOS9TOejaT/7B8AKbL
         BqD1gb6h2kYPnSogp04xhY2ixmwo/+XEWsT4OdX7hR3WpfbK3yDfaQMqZgTBIlMvewQ+
         IwGqy0I4TS0KwoKh137DertRnfNhy0KGHH0lIWP3N2N29L0ZvTJfr6j3CjnoPEfTqc4M
         2MbCBz8sDr1EoEp5d9IypgRxIMulUkSiThwCKpxKAe8Tua8lTQlyHCk8cw5NDYqJsMIQ
         0q0Nf/6exK64Pg8SeMl0/DYUvlYsXItePU+quog4ib6tDpoqvBYEluI2hj+9DlkFasVf
         KmPA==
X-Forwarded-Encrypted: i=1; AKwUvBxZgbGvSXaSz9EopatZZ6iBiGdWB7sokMp+nEO5B6ZNeI6SNJk/zgnREZqGhezYmSrm40DKwSeu@lists.linux.dev
X-Gm-Message-State: AFuF++kEGVzV3kRb2ADDq7q0RbGf+ysnKIMsCiYEbkphz2eE3+l8US6H
	ZGg3X3djJXc5c8Z7Jm3CI37FczczINW8jxkgLOrI7mLtsRTfmx3YqXT0fNGcb1Vo5evDaA616ue
	n7MtUvtaQI58IoNfzO8OIcCT1Hfq+gCI=
X-Gm-Gg: AYBFou14yPuvqiU8M+7DEJ1+fWEyCY2dpDgY8QTCMsK5hpUabqL1B0PPfFuPG5/5Z4J
	jALwRyvs+gai531VPsnUx52BwXuWTbGIyQSTO1cYORPy3yAVFG29w7qI5etoQQIz3poBAcOhRA2
	USd3L3+ltNDcOZ/oxT34zae2Pmz8UecQwfNVeVREplq+9nOpVDTXG6PFYE0lsFVMdFDFytOcNKA
	1rO2LsHC8woZvibUewxZABdrmKLzSm7MOK1eG5MAU1hChYYHIVHi/DtTxSjxotPbEUnK3i0+oOV
	5yM8NRlJjkTynQhVRrHOg0DK/q68kRSrn6EFsfjZTWdG2w==
X-Received: by 2002:a05:600c:c494:b0:49d:286:83d5 with SMTP id
 5b1f17b1804b1-49d028683f3mr222572435e9.13.1788883762596; Tue, 08 Sep 2026
 09:09:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh> <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
 <132d2a682ce15be4d4f1d8586596dd874195c8c8.camel@HansenPartnership.com>
 <CAH2bzCT_iTLE59=QOcJXUG-mQ_ONDLc_iEbpnAL6-VY_MfTYKg@mail.gmail.com> <20260908114024.6165c1db@gandalf.local.home>
In-Reply-To: <20260908114024.6165c1db@gandalf.local.home>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Tue, 8 Sep 2026 19:09:09 +0300
X-Gm-Features: AcwNN1WjrFDT79QWQWdAkWziNkbsPHtZcBWj9BXu6J9Q4Y1lxcXW1-DEec3uXkg
Message-ID: <CAH2bzCRuoa9BPWr2wvHGe6XVU5gu_Z2kC8h4DZm4Ub+PiVfuNA@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Steven Rostedt <rostedt@goodmis.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Sept 2026 at 18:39, Steven Rostedt <rostedt@goodmis.org> wrote:

> Perhaps if you do your development on LKML with something in the subject
> showing that it is for your fork (like we used "[RT PATCH]" to
> differentiate our work from normal kernel), but it could elicit those that
> find your work interesting, and then you may get the discussion you are
> looking for.

That's very good advice, thanks.
It seemed a bit intrusive to spam everyone with it, but if that's how
this sort of thing
gets discussed, sure, why not.

-- 
thanks, igor
