Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.41
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792649722;
	b=ppbKxUTh+b7LHAtU627HFGJ+wxKzyE3xvUYtOOQ0VQO/Gy3ixDGQcjGcFewB173bVgO3
	 envpcEHhJFowQ6rlUiLmSkPThQLrRnqRWitMOX/gQnrTSDMopf1puD5Q6+2ACkBKr9nCY
	 icOHzd4g+e7YTUKxzh8XgbYWZuDN0pdbks0eQsr49TSujR/HDmLF/ceVZ0DNAX9rEJWfK
	 k69MkoySEL/4CmVMI2HNRScZU67XR0ObOw56s5xP4ndGz0jVuINw2ZTji0AfYTaaetIUg
	 K1KNmKXsbXBNpyaEM5rkucmh8al8tgISehz2gtuY6PmqPsTt0H0dx7IBffCxaP4gyrw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792649722;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=GMsqs+V5sy6eusb8/1fMPt8auTZbZLdQVauX29CTHxQ=;
	b=pzpqowhS35Z+/3u8lfiUmsbW0onx1fK+FVXcMjPQiKkjArCLprOkYUwVcO6wYG51AfZv
	 vXOLMRbDU5SW5ynJmLMA8wrfblila9r6+5AYuPFPqwvdIssFWVwBwobZht19ClP+QOLym
	 UYmTIO7qyOej+FHy07xYVeLL3U36Kz7LHRK/J0ceSgXVtl78UNV0e6i+gOXmTcf3CR/8G
	 i+5Exqs73Fgct3EoSbxJvX+/yifeg0g9jMbAIImrmWPdI44saj0I1ej1vwnBllRfawomM
	 p9rtVcwjGk5AT7ZxvdXTjXYoxR/I+Nz6BGF+ch5zHvYFPOt6ELVIsyw+EoauN4s5N4Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=CYI2Y3a7;
	arc=none smtp.remote-ip=209.85.128.41
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E8F606A31B
	for <ksummit@lists.linux.dev>; Thu, 22 Oct 2026 06:15:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 93E8F606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=CYI2Y3a7
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4a1df4c0966so2907535e9.1
        for <ksummit@lists.linux.dev>; Wed, 21 Oct 2026 23:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792649721; x=1793254521; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=GMsqs+V5sy6eusb8/1fMPt8auTZbZLdQVauX29CTHxQ=;
        b=CYI2Y3a7+lccza/x6nkg7ty6kj73bw0eJ0HlxpKHW12IEWKclg5TWIQomMqIT7Cte3
         D+Vx4WH0b2i+gkgFdQkk2q5gvxxpKH9wvOeC8v5oO+Td8/vT4kmMs0HwI0jmBGP6dJl6
         a6PQUsGjFmQZ3A9YeD7ILgwE5WiwfBiOcLlucLOCanJBI0HW7dqCE3U/8gbXIR2eSQc9
         AsIaE41qr4gIW9xV9qq95P7C12VA3FvWukLQUE3QeCyXLA8JOcvPz/lteLIBz1deZsZW
         yiaQxuss6GNoxpMWeUeQnWEYr+RfJfQVYTrkR7/WrcDcWVYt14Q3m3az0C5Uz6KhhE6Q
         0gCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792649721; x=1793254521;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GMsqs+V5sy6eusb8/1fMPt8auTZbZLdQVauX29CTHxQ=;
        b=nLMWEWm0ioQvkztzKbEHjE3fPcqXRQseYCp0Bu7fiNvvirQf9YbWEtXYjKrAK8m17C
         wJZwgZWx+KiaM6V3dCZ0F3bV+xVrwEzHzyPa2/esdGWR8V8856inPQiR/A6eI0AieubA
         rh+ncbTlWHbXI0uhbD3YMfOeIEfnz+gax80I6lYF+WxY7eihnyGPP/v6InsoY7dqQWRT
         Qh9GZT241tdRi4JFNnrZdbpryzuIMSfJvoQmETj3rIIseWS8+k8hRASlSYfJBKNLQFkM
         PJCOk70TD9U5HRZSfWl6he0DhAeYodOTEXPiX1XzdAJyDc8+0bXPpC3C6e9ymyo66Zd6
         tDcw==
X-Forwarded-Encrypted: i=1; AKwUvBz3yLWatLbNOEL3Qi3fTE1usCFVsV5K8N+mUWaNkUJxgH01pDrA5eoSz22MQixMfRiOHZ/vKxx6@lists.linux.dev
X-Gm-Message-State: AFq9FYJ7LUTSR+aV1tBoBlt9As0bAMhBHHW3Ifx9QDWVT3sIiKDE3hlx
	HvyTL9T8q8I0sdYpvDCCfMCzxUcG4p6ITjd1rhK/r8sn4AHwkW6hQnqm
X-Gm-Gg: AYBFou1jEmJrkCBlJaBoCWm7DKurVHQdW5rq4k25X4CQCRrJIbQ9wIM6RnLrMG+N+d8
	OJjvIksb3tvsZszTs38Am6Z9tyyOmneTbh9YXQrqwop/m/7NL1QAzwfslmcF8aomAmvonsp5+1h
	5vQccItICvaiOOT+9lOL7Wqyh2fwrbXZb3pmNEx92AksrCzsqkdF6Pzr+r28cmz2wQxJwjjJFso
	I1Cf7bp0wqgTpvOECIlBu/m3auo8OVgKchX+jbtUw+otBwq8OlTrcRcPRkSVMOzyrIlWRkCu0OZ
	8TPjitrKkSg1GLFm3hPli0BHbujnJy1WrZRbxRnvrvMranYpbUrSzFDFHIx6rqqKwBGiBUp1ytv
	UOJHQmZESNEB3PPremaF/syxDah17IfitjrHSiGnxf31f0M2idfeo5CVKj1y3n0bn0gKQWRHwdX
	QuwIZZ2Q9j+0fcULdkK7u+L7Qsgcy6+JAZc55yjhxAH14rizpuhIXW3O9sluCtY+CuZpCSKo6Sf
	6MnV8ZWM6LkBkb8XS+KPvdP4iHEpLKsCYHoLJtkBsvgL3Ta4jva
X-Received: by 2002:a05:600c:c093:b0:4a2:317:d0ed with SMTP id 5b1f17b1804b1-4a204a8f5b1mr19867815e9.1.1792649720655;
        Wed, 21 Oct 2026 23:15:20 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1fd56732fsm19856945e9.3.2026.10.21.23.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2026 23:15:19 -0700 (PDT)
Date: Thu, 22 Oct 2026 09:15:11 +0300
From: Dan Carpenter <error27@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Mark Brown <broonie@kernel.org>, Theodore Tso <tytso@mit.edu>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Bart Van Assche <bvanassche@acm.org>,
	johannes.goede@oss.qualcomm.com, Jiri Kosina <jikos@kernel.org>,
	ksummit@lists.linux.dev, sashiko@lists.linux.dev
Subject: Re: Patch pre-submission to Sashiko
Message-ID: <atmp71xbWnADcbS3@stanley.mountain>
References: <atO3pCuUxI950ftN@mit.edu>
 <3354ebda-5158-489b-a577-5cb10e5d5fb0@oss.qualcomm.com>
 <atZ4J86j7CXF82HX@mit.edu>
 <2fef166e-088d-4ffe-8d0a-0143aebc1b26@acm.org>
 <ate8oESqneK-3sQJ@mit.edu>
 <7e473af8-2f7a-4a36-a926-e756873c9c52@linuxfoundation.org>
 <atic3bbDeyJI6MJs@sirena.co.uk>
 <atjlUoEmTagZjrYI@mit.edu>
 <atjpS__OwjZ-Q_Fh@sirena.org.uk>
 <20261021114524.4c2ea2a31a9d527b78e78768@linux-foundation.org>
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261021114524.4c2ea2a31a9d527b78e78768@linux-foundation.org>

It would be good if there was an automated way to collect these throw
away tests.  Something like `cat email.txt | extract_tests.pl`.  QC
systems could run the tests against different arches or configs.  And
we'd just keep on running them until the test breaks at which point we
either notify people or delete the test if it was a bug in the test.
We wouldn't spend time trying to fix the tests themselves.

That sort of thing might useful for training AI and code coverage as
well.

regards,
dan carpenter

