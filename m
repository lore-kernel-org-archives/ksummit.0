Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8729A47F3C1
	for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 07:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792393359; cv=none; b=FRgEr1sNX15L17f8R7fWhd90lZaNzJ7BVYyjRT+G8KGwopKugmaEmWY6Zk9XBrclD8HHKB4yRrm7Nx8QbtRJU/esyuACsA0gNn5Xmoj12+4/rPwROMew9g9VdEDnJlnV2bV1DWN33lS+Eh2h1bIByYS2IoRC/L8BKBatbrqTGDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792393359; c=relaxed/simple;
	bh=caiOAC3ZMfnRb6Cow7Tm52Ond6WJxeDuC6N5cXWzJ0Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rnNGavVfRzEMxzWdpE4DTofn7G1r9dY2GgJ47zZhxVjlPPIXpr9bCbc/SOLYC5bTlBlQsCf0S80dqwKNKsTKTFSogDFtjFPc/fRv+LqmFUeEIgfSKwRkVfx1UiTqkmz8rbeeSI69EdFP9ltAtHfFy9t7NWfUAS0+QAYQSGdI0m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lzMx6Oy5; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lzMx6Oy5"
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-c3fd91337baso221794666b.3
        for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 00:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792393357; x=1792998157; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ss1sPKwGjZIHMoq6AIRLY4p1Jhwf9GL2A3EDWJrTFIM=;
        b=lzMx6Oy5vYpyFkG4QUfat7cUtL3mG12Ggohn5AbPeWa3lg2VqpDNHgaqYc4i9OsV2s
         hjcc9J3o+vFf0NwH/U7DSPIMJ/WhWs97TvfmuZI+uwkRdV0/OR+3rkSw0nUNB+wbsRsT
         NHkzRY4+EV2n9b+ItaOqp6jSLK3nWSSbx9F2DwcdDnQT11IUOJ3dYSH9dGJlLk3iFiAp
         gH+yAgpteQRuf07sp/eSsuGpApUr+HiBOBO/E62AzR4zEIm8S8bvisAOA1ho6xum0VWj
         9poZVlPe8+AOducSiHHe4VXY8UBaGh89SSrMQG+HNw/RlrjepMhBICVeLu4zOQYt8RXF
         J3vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792393357; x=1792998157;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ss1sPKwGjZIHMoq6AIRLY4p1Jhwf9GL2A3EDWJrTFIM=;
        b=f2yKCtJX1SiZ84skNewUF9RxGBpEluWrGcs41r/t/tDIPUkG2v3fKql+HWdFjWTgsQ
         28qJKhcxACtrWPvJ7jkC/U94eiJTqzXFMbvFy3jL9BldTYmoSdBfn/sTbxa9uyXeYdiN
         P4/PYz7d3FYWo0QyuYSbkCoYan6ej41ByVHyr/W/oQz75yW5CXV3hV9UnaeKySJ67Psj
         KQDQiP7tHwiGgYM1ozS7LPeTr9T24tCsqKPhtlSa//Bi0nVxshPFf8WR33YZ+jjnrv+K
         j9mU5WcInNt8NHABpfi44klira384Db2vfEFY8kLgFyziJGR10quUbgJyWrDYovN9s05
         h2nw==
X-Forwarded-Encrypted: i=1; AKwUvBwW+ZOe/4fYTgmjmDeLju267O4UysKt0zjzbmjKW1nj89RdFIxea4nR1pcvugvhXvoCJthuJgG/@lists.linux.dev
X-Gm-Message-State: AFq9FYKkQN1glp+vwrUkldeh0HyrYvblIg7dY5dZYif2rswYX4E+TDCI
	GI9d86Uz3No093FcSTskTcoa0N0m9V1rW2PqUTVxdbkiP7Se9IefpTrLbAGha/C3Y9SbICVx
X-Gm-Gg: AYBFou11YxPZ/N/KaTL5+vP8tD5SPcmz2A5JfKEvYjBm2laddm+PxfTzr9+gOORRr+o
	s2dLqy1O54Zwk5WPPrctn4STgKACa4Ax0LHctlXR9RTberb2rWmTsSTlfYY4CplvF3jxjxDc5an
	HwlGkiUZa8runuHeK7eftt182zLKl/AmUXdPOISCD+G8DBYNHf6+p/jh47AogOu3syZqDPiz77s
	Wuqdd9B7Sz7/cMGyCTvnDbUc5VVMRJhm/Q2mcJa1nqG1+S4GXg0IdltGfC7na41C/VKDJBoJNZE
	mX8puCJb9C9yYZ/lwIx7/lXBngR4IGomyJZxscqp4B3LHLkIFQdq/s8ER1Ka/MUxDGfRgi9kyIs
	PHqaMCrJfoixFyYwpV1xK+N8BvEemn2iRkwPT4SHJEF2WPGLzdePwIh167+htufkXgK8+/YmzlU
	DNgi4wYC5IpSOX9rG7uj1kDESXpy/dVpdp54X7sxXIm2THPmo2qxPrzEvV0pcEt+Y8FFk=
X-Received: by 2002:a17:906:478c:b0:c31:7495:e5b with SMTP id a640c23a62f3a-c419d05ed13mr457742666b.10.1792393356319;
        Mon, 19 Oct 2026 00:02:36 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4ec8dfsm22184171f8f.26.2026.10.19.00.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 00:02:35 -0700 (PDT)
Date: Mon, 19 Oct 2026 10:02:32 +0300
From: Dan Carpenter <error27@gmail.com>
To: Arnaldo Melo <arnaldo.melo@gmail.com>
Cc: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
	Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev,
	sashiko@lists.linux.dev
Subject: Re: Patch pre-submission to Sashiko
Message-ID: <atXAiG_OL-TOKhJT@stanley.mountain>
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <DM7BL6J0WCXU.1I38BKL4RJLFI@gmail.com>
 <49D0633D-3576-4F42-9934-85663D11EC15@gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <49D0633D-3576-4F42-9934-85663D11EC15@gmail.com>

On Sat, Oct 17, 2026 at 03:38:36PM -0300, Arnaldo Melo wrote:
> 
> 
> On October 17, 2026 3:20:47 PM GMT-03:00, Alexei Starovoitov <alexei.starovoitov@gmail.com> wrote:
> >On Sat Oct 17, 2026 at 5:28 PM UTC, Jiri Kosina wrote:
> >>
> >> [ in the spirit of the concluding discussion at this year's maintainers 
> >>   summit,  I'm using this list outside of actual maintainer summit 
> >>   planning :) ]
> >>
> >> I have just received a v1 to v11 patchset submission within roughly one 
> >> day timeframe.
> >>
> >> Neither myself nor anyone else did comment with any review feedback, 
> >> except for Sashiko. Which I believe is what triggered all the immediate 
> >> resubmissions.
> >>
> >> I don't think this is sustanable.
> >
> >I think it's just fine. I encourage developers to keep the spam going.
> 
> Yay, agreed, it's not like before AI people were reading all of lkml

I read everything that's sent to drivers/staging.  I've read it in the
order that it arrives and I've done that since 2010...  But these days
people are treating the list like a pre-submit AI checker which sucks.
I feel like people are saying we should just accept that mailing lists
are just AI checker interfaces instead of being intended for humans...

I think adding a 24 hour delay to the AI review solves this.  It seems
to be working for networking.  It will likely push people to use AI
locally which is even better.

> (or other voluminous lists) traffic, just ignore what clearly is a
> conversation that now happens way faster than in the past until you
> see it calmed down 
> 
> The problem was not getting feedback at all, now people complain that
> feedback is being provided timely and then that people are responding
> to feedback in a timely fashion?

That has never been a problem on drivers/staging.  Greg responds
to every email and when he was on vacation then I responded to
every email.

regards,
dan carpenter

