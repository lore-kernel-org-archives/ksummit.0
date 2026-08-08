Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3D8375F83
	for <ksummit@lists.linux.dev>; Sat,  8 Aug 2026 08:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786178762; cv=none; b=ccOC+xPa5UEpy85VePmDTtZ8vETW8l9R0A8Td5EI//lehdjQ9Wn+KDEhx0JJ4C3MLw4/sr/nurrwyLpZHT1AippjFX8RHy2/oWYJI5pzMDmoiVK4F6xAVZGBMar0yaUVNymi0zPUusobG1/CxYd84myHMICi38RlPcYA47fHIfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786178762; c=relaxed/simple;
	bh=G4MB8ll5KVtEuoFvBo8IyYPKIZSwhpNw0QfKou5GsdE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iIlCaU5UDclIhtn6jMYlWZBdPf/KMH5RulSQjHAjXyARK0QdRnG8fVGKC7E/BFOz51Gb9+7hQX7IXPnuEeBS2FBtjOTqabBpbr1FUjtWruHddxFTUbstTaDvU+mhCPhOvbTnfmGrBN7RIo20f47NCaDGN7sCf5ENtuBZl+Sl6wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mwJlhic0; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mwJlhic0"
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8efcfdb2b43so1803256d6.3
        for <ksummit@lists.linux.dev>; Sat, 08 Aug 2026 01:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786178759; x=1786783559; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jVm/sTIO4tgRVYPW4M9ej7eAcrR0SHHeFL/mJZzoPYk=;
        b=mwJlhic0jRHQ4w7uISdexPRxMf6fcxWQawA5w9u0sF/JXFCvQDf0X/c3HcWROGN2un
         XutoPf+K/DHjcH/cB823/N/Zk0jdL4/LNPewG/7/MnNmCfkAayzqoR0PK7Xl+Uqx/fYB
         F02ei1u0UGoBZkYvad2soxQaM1UTQc8wnlgbDkCG6eyDChOo6xJTiwTTINgNyo1Y4XLk
         GyUEcSZORS5WosZxv1uwksE6Hx8Gkzv60qzY188XM7s8baAQykLQpyJobp6YpuScuY4I
         edmJ2VyX9N8jJ9MWwu6DNanu2kqy5qJRzaUVhEFF20O45PNztoukxLXYtjfqEdDOMHFB
         VquA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786178759; x=1786783559;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jVm/sTIO4tgRVYPW4M9ej7eAcrR0SHHeFL/mJZzoPYk=;
        b=d5TZ9+I/0hr5Q1J/nPL1qpAidzDJzRwYi0EX2Q1vQDIzVw0VfihyPph/WOB5L3WJDS
         Er3Ij+rR/AYug5+GcBP4ZG8USjGgXFtJ8P2XL6Ntn98VMT572iHJanvsGtQksoe8LiKM
         evt0MiEoUywDy4PMEor0+SVecIgC6kg2V2c7570qErP4DGFd6OqZ9vj3LlaalBKV7tOB
         wrDDPvWtj3KRASR+f9HF5gCsc0qD9IRMzVv4GOik0JPIS6BarvP+9MJhZXiXIjVHgxHH
         W6EF8HEk0lJOhWvWw1KJMYsEKtuwLLCMT5JUJeEzZBQjIqdGRhaNONsTSM0Y7Rv/BOT2
         Nc1g==
X-Gm-Message-State: AOJu0YzhKaslDxM/n3WatnSzV7APt+pvuSSzF6mvW1okno6qR2E75Eay
	RJkn1nYAcx4xyCttHEXvwO7/wjpDCPP2qQEkDBZCzXrCLHkEIzBM24yT
X-Gm-Gg: AR+sD12grP74rBPTUky4aKcTkvsmTJgU0LGcRPuzruorPWQMCJtMu8RJT5m0kwy+2CS
	NCY6a9K0ftpS3uNwifxaWPBDTnWSZHNoytWx7pmntBpol2M1HgLd9sLDqXfjn7T4Knw4827JPXR
	6lDN6nmIT74B2otk5EQw/rzrqPDQ6V6Tf23b9uC4sSRobSefkaKAyIy457frOv97vOZpQ8ZYqyB
	9Le/XL4YHfmUkvghMkpZ8Xhm77dw0rwEFbK1rKJelMTfl8fXqjci727luRRn65vdWAjibdGVPIC
	xsd5rqEE3+xkbEcZ4n0r9KrMW1wqeoDIRum8hvJ5aZQMRRWjlNg3kSWkWIA82OVnfRQRr7WaNMc
	n5ngYjpIxHctzHu1tkzTZ9WozOyVS2aUk4JQLZZqPkxS/BAazw4U51TDblAEUr4Te5ku/p2BKKV
	Wagg/TtSCtJMoMG6G7nAT6+v2AATlqQCRMTlKQBQmCkWvbdcPfWYK8+w==
X-Received: by 2002:a05:6214:501d:b0:8f3:9d85:405b with SMTP id 6a1803df08f44-908812539afmr295114256d6.16.1786178758597;
        Sat, 08 Aug 2026 01:45:58 -0700 (PDT)
Received: from localhost ([172.216.11.43])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-908a9331213sm26562066d6.41.2026.08.08.01.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 01:45:57 -0700 (PDT)
Date: Sat, 8 Aug 2026 11:45:51 +0300
From: Dan Carpenter <error27@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>
Cc: ksummit@lists.linux.dev,
	Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <anbsv_EUkXZD4dtx@stanley.mountain>
References: <87wluv7yzc.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wluv7yzc.fsf@trenco.lwn.net>

I wish people would say describe their process more in commit messages.
Harshit Mogalapalli and I regularly review CVEs to figure out how the
bugs are detected and most of the time it isn't stated in the commit
message.  These examples are all based on guessing and not from anything
which was said in the commit message.

I reviewed a patch and it was sold as a buffer overflow fix but their
actual process was 1) grep for FIXME.  2) Ask AI to implement the FIXME.

Another time, someone sent a security fix and a security company prompted
their AI to fuzz test the heck out of it and discovered that the patch
was incomplete.

Or someone set up a test system to just connect and disconnect the
ethernet in a loop until something broke.  That's a real bug, but there
is no way they hit it except in a test environment.  That sort of
information is useful because we could all add that to our test process.

Or another person set up a virtual test environment and they were able
to produce real stack traces.  These are bugs which can only be triggered
using malicious firmware.  They explained this when pressed but it wasn't
in the original commit message.

What I want in the commit message is more of a description of which
AI prompts were used and the process so I can copy that and discover
other future bugs.

regards,
dan carpenter
