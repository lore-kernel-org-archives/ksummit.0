Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F4042A14C
	for <ksummit@lists.linux.dev>; Thu,  6 Aug 2026 10:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786011043; cv=none; b=bEUnvFO5E0jnWPSNHJlVGVDIIC3mZMU55kNkBHOJG8yMREeurPkTn362pJrR2vT5T68cGy0znbJkiUA/M++qjgba0RlDjj3zpz0hAlSRbc0jQtNv9NmbTkrO/clCkb9iPJ2zeeXGf/9mbQcZUigCw6hX779YCf13Gzicibc9org=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786011043; c=relaxed/simple;
	bh=0QNLiOLwUGUekMD0SUSLN9sivqZszTqquIu4C7wqb4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xd7HSDy/+U3KG2Q1is6HWToyikHPIcMUzHAB+1BZOAgWbwBn4k4lI3nu0Kba4DSkJgGULr8JFSUEixUNRnAMCvqqhxw8TBtvT3/J4pRECOYWtUfUsUxWlvSUqVJpXTGm0/q/EUP793npLMRI+sB0J1pgDOskvzHZNjoscDql7EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rneNr1ua; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rneNr1ua"
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-47ddf7b09e5so1848081f8f.1
        for <ksummit@lists.linux.dev>; Thu, 06 Aug 2026 03:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786011039; x=1786615839; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ES1yK84skmjl8KJNtdJQx+xETtgAUXD9mz8zVSrfwaY=;
        b=rneNr1uakk8/ZGkDwB3espZV6G0lX2XufYPKmm44Q7522UB5x8XiLiG2pnYOeM/0zG
         xbeR6EYYErfyC0O0lwNfMobiKw2E4v52NDWQgDENO/eyRIY1LKgnSk40r1wjkmMcckiz
         2HFCLW8wI+tIJT1HwYNlYU/pgS2w0wO3XcbufQNOcbF4cbaXkq9ECVRETomK6zcIzHhr
         rI4VMwga4U+kcWR8kv8e8uKa0rnaYL9HMvCis11wYm0Mf9dZwPNbKjGAPFw2QBVlU2SO
         N1HWtOKcCKrHJEc5Pk5RdqxsegRIWJGX70+fMUZPzXhkkCKg+IKnFodqnq2mvKUO06Ef
         4TiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786011039; x=1786615839;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ES1yK84skmjl8KJNtdJQx+xETtgAUXD9mz8zVSrfwaY=;
        b=IL5zy/KUYMTxnYBa2toiEvEi2SUW2ehIb80Oz81bB2Szem/SmbZ6tuD6wthdE+a1nQ
         2JNeW32iyA7cinBieZdHImO9beVihpXAB59B0r+aX0CNQc3Lg98U6CjisdbWOSgpMRsl
         uE9d2v9JNTsQ8j3/eEmui7EDcJ1JobR77v3oMHeiy4yyHsPazl6kLC3BHmBA26D+2Ip1
         PQJQTy1jZa5daM5fY3In2ePrG7lJkYgXE9xXaKNi1kbYm++SN4sxmO3EbIVG/gZpz4lp
         WxTEBrpMIYbF5Gob+4I2E1Fbe8URh/tZTYTtOX7sj9SAD8hqv0/7wj2MftqlAK9TBltX
         xr3A==
X-Gm-Message-State: AOJu0YyTCFWHvgi8qCUSi9zFjL54sCYyO+rknxZhR+Ad8va+6jE3ctkY
	iFPSiXULrPlN26v8Bt53ej9qJcBwJjAtwYu2npTxQjOl+iz5yGqfoslv
X-Gm-Gg: AR+sD10CQYNOw1FKJaQSAJkArN1T5U/QqRNkY5r6z7Q7U504ki/EL2Sekyr3f/Z6ot5
	xF4h3xwJddmrjQkxW65GNtu21OwOewlkGzulmbWJQe94Ga5fgDVxDZsnDSzjtH9KeQUxkWzwD8Z
	mZ7qDi59zb0xKztrDE5WV+QkupFkdo8rZBeuR4x85Kn5Pp9ZYZEsUUUAzbi6X/0J/P+qivaQaGF
	8CKAY+udWpMgzDmNP6Hqex1BMPnoYAEAHF4yKsQT00+YaScX90DLMNvMlBZplSYZ5miiOjMRtJ5
	PJOPgqIWW7BLq3h+0euJX5l3PRBcVfXoFWLpc1TAmoiKuCYuo0wmSa2xPf76w2EkCBU4cGbz+9v
	H+iNnAYabgqOMYZY4u/Oq1sWCaJVNvJvpp9sdRAIKVrMFQ5o+LVT9bhx1Zm3WJkqvum2nNapAtZ
	zEV7K2/MDTxNhvkV4NWZa4Xdl+1Znucoswq7Vr2NsMoSPOhLK82rZn6Ft6SVtm/YuGlSk=
X-Received: by 2002:a05:6000:2994:10b0:473:6e8d:7f3 with SMTP id ffacd0b85a97d-47ffd204192mr216286f8f.1.1786011039488;
        Thu, 06 Aug 2026 03:10:39 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ff7b32487sm4761063f8f.34.2026.08.06.03.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 03:10:38 -0700 (PDT)
Date: Thu, 6 Aug 2026 13:10:34 +0300
From: Dan Carpenter <error27@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <anRdmjsn4_2aavcx@stanley.mountain>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y0ekm9nw.fsf@trenco.lwn.net>

A lot of first time developers start in driver/staging where I review
patches.  I had to re-edit my "How to Send a v2" instructions to
really emphasize not to resend a patch series that same day.  Otherwise
it feels like you are pair programming instead of a reviewer.

https://staticthinking.wordpress.com/2022/07/27/how-to-send-a-v2-patch/

regards,
dan carpenter

