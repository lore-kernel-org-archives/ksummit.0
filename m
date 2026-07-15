Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A04A2C21C4
	for <ksummit@lists.linux.dev>; Wed, 15 Jul 2026 19:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784144724; cv=none; b=h9siqN5irbSoLi9E6ONSqWXvzS0wmn4TRXT3xOb8UeYKNrVmqc+YQy9GWbs2shxEj/edS0XVc+ARo6isxz8gV0huzDpybTlot9yg39GHDoZX/vQyVhfk/rK8m3PQbnwoxQRYkd6fmjEfxIONqlHwNU/jZT4WzZS8dF4Um575Mmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784144724; c=relaxed/simple;
	bh=DFbs4d9TDlmlVjp6/LwdrLiUdfV3gRPK3gnhlKK+9sQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fwwswOnvDBhKfQAbXbS5I+z8E/uS7peY1gt09sr4yLGBU8UMBarJxIl0pXbLl7Xs27a3NkAPJ15IQbLYDeNfKoJ9shjX2ifzylYHZBshCHNVlEAkWJwU21VOfJLTG8fLsPNnb6J8nXZ6H9GPMOG3+oucNcl6934uywHzOPXebZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aDmwEekh; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aDmwEekh"
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2cace91f112so54919095ad.0
        for <ksummit@lists.linux.dev>; Wed, 15 Jul 2026 12:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784144723; x=1784749523; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=kxpOMyDIT92YlLZOO2iqMOfpwidzd2Q+C4IP/b2OFiM=;
        b=aDmwEekhVupt1RdHM5EEaS4vLD1DHSf4QVhd18J7QK+s8XUQTVqOp21JyVwDDhvYHR
         gnRi+UeF6wqsukm4T4oJuxG9edm69+rGvSXxIGv278hTCrprROk+MWPsyXKO/sg75OGz
         0h9rVmwEz2m3HlUwWBr37xEM2+DUpu2DpBy+5XRrqMl4Oak4qURtzkoMZxFrGHKhuaZX
         oHgTiMu1jhiE8RVhF3Ulw8qjZFsKr7sO6TkUVIvplPFPKdrBHK2jyBzGut9BNA31pG5y
         QoZjvKsIgDjH4SQ2QswBW4R5K8VQ0lgIlL+Ova28dkTHoSYMvQnnYu5eiWP5FmTZKmoD
         Y7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784144723; x=1784749523;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=kxpOMyDIT92YlLZOO2iqMOfpwidzd2Q+C4IP/b2OFiM=;
        b=pWyEDTYmjMNknNfKr8pJ9jg22G4nofDptFTNXr4wk/i4FjR6sN+xrZF569bmLEpchH
         CqSgmn0p7nerspI6ftLnaz6b3qN5aRB/VPlVmXfgwY5r/wPbL4k3ZCokKmUa8pF2/Zk9
         JcaejBiID/nDGdeX9S8tbAeRQRM/WMDhMAaaERhf7jjUvtg9P0WAJfdguQ3lrEZcq6T+
         WvvneiuQIl/4F8fg1zezhEKq9KxFgc46MEqYnrpNAzF0vSO85Fs9bkqbM7EoRPGQFFH6
         GGzWxPzzGebL5arUgX0uWAQ2rGt3h506BSi19147Df6WGmrufL5G8TxJeakaEEC0P7ng
         0yMg==
X-Gm-Message-State: AOJu0Yw5wigCkU9uHzcsXGce3Zd+4a8lDM+mSx1qgx7yljzF/9SfzZSE
	RRUAraapSK+3t4SZXWjvjwO8sPaOMwhCMIW62OCTsE56px2J/5H597+c1qOn/g==
X-Gm-Gg: AfdE7cmN7TEMw1z3t6mbzzCwpUoWs+tp2L9mu8tprjNwPPrid/MK/kBA0bM8q/q2mF1
	5oPZK+7PMD+YhoPO1XB5tScGHLpNhTiX7MMfW+CcPd3042HkvRxm6CB8+TBx8+fMs2rUpsR1+DH
	zfa9szelqTnhYeQKsxXYik2q7KJc2zfLC/dD0PjAlPF+L5qVFzu351a8bNM2NzzfZPo6OelaWTy
	S+uT7C2c4k10edVR9mXQ0A1C4y55m5NNa9pM2Z1fLk7Md4t6zhGkA/beiT19j6ZM9H1waL4qd9b
	J3mxYafYr8JEbV5zbIlCeEmdQfJw0iQWR4sZfsBZ10kp+i7hhiMVAXPKEOx8AAyk8y7fIBT5d+2
	8Yj6Mr77eQ3A63I+vl0Cne4PO3dLsSQu1awhStCOpes+ogGN77K/+sCL42OCsOkHeiUzQW4UAeT
	C9pLt4wXb/rhk/c64eiP5WDZ7IEJ0p/m/9eJ5gm2EPUSNI1xIeiuUY
X-Received: by 2002:a05:6a20:7344:b0:3c0:9c19:659f with SMTP id adf61e73a8af0-3c36c42ff73mr4442279637.71.1784144722762;
        Wed, 15 Jul 2026 12:45:22 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:575a:5ca:2b13:aa89])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13cd432f1cesm6143945c88.11.2026.07.15.12.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 12:45:21 -0700 (PDT)
Date: Wed, 15 Jul 2026 12:45:18 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <alfiJkwVbKmDksTJ@google.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7ia4qzl45h20.fsf@castle.c.googlers.com>

On Wed, Jul 15, 2026 at 04:55:03PM +0000, Roman Gushchin wrote:
> 
> * Handling of pre-existing bugs.
> Currently, Sashiko reports pre-existing bugs alongside new issues
> (while trying hard to highlight that these issues were not introduced by
> the proposed change). This approach comes with significant pros (a
> steady stream of bug fixes) and cons (additional noise and workload for
> maintainers). I am considering a database of pre-existing issues to
> ensure they are reported only once (or once per year), with an option
> for the respective maintainers to flag them as false positives. This
> will also provide maintainers an access to a deduplicated and ranked
> list of potential issues in their subsystem’s codebase.

Having database and either flagging issues or tweaking the prompts would
be nice.

Also I feel that if we simply had separate sections in the review, one
giving feedback (including "all clear") strictly on the patch itself,
and another one stating something like:

*** Pre-existng issues identified during patch analysis (address at will) ***

and then listing all other issues would help recipients (and maintainers
too).

Thanks.

-- 
Dmitry
