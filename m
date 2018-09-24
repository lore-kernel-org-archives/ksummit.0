Return-Path: <Jason@zx2c4.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B7E75D74
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 01:57:48 +0000 (UTC)
Received: from frisell.zx2c4.com (frisell.zx2c4.com [192.95.5.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2E519A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 01:57:48 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 9242cc24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 01:39:32 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id af107617
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128:NO)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 01:39:31 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id i12-v6so18443401otl.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 23 Sep 2018 18:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9oVReKvhpm1CSnF3KLDYtt63SvauHXZ-m6mWR=zno2OJA@mail.gmail.com>
	<CAHmME9rRnPydFT0CVugiEkVhjHsGukruYqcfdiHu1sSU40A9bQ@mail.gmail.com>
In-Reply-To: <CAHmME9rRnPydFT0CVugiEkVhjHsGukruYqcfdiHu1sSU40A9bQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 24 Sep 2018 03:57:34 +0200
Message-ID: <CAHmME9ovay9H9PNoAEHpQRFYOOPcsZAHCYYEPL-11mVONBTK4g@mail.gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Subject: [Ksummit-discuss] Fwd: [TECH TALK] Zinc: Minimal Light-weight
	Kernel Cryptography API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Following up from the other thread, it appears that the below message
was rejected silently by linuxfoundation.org's mailing list server. It
should have been accepted as either:

- 250 2.0.0 Ok: queued as AC122174
- 250 2.0.0 Ok: queued as 8EF1AF8

Hopefully the below submission does make it this time.

(Thanks to James for pointing out that these never made it the first
time around.)



---------- Forwarded message ---------
From: Jason A. Donenfeld <Jason@zx2c4.com>
Date: Fri, Sep 21, 2018 at 6:43 AM
Subject: [TECH TALK] Zinc: Minimal Light-weight Kernel Cryptography API
To: <ksummit-discuss@lists.linuxfoundation.org>


Zinc is a new minimal cryptography API for the kernel that is in the
process of being upstreamed. Rather than providing an abstracted
framework, Zinc provides simple functions. This talk will address the
design considerations of the new API, its approach to implementation
choice and fuzzing, and touch on formally verified cryptography
implementations. We'll explore the difference between, on one hand,
reference code for a particular algorithm, and on the other hand, the
present crypto API with its large and complicated abstractions, and
how Zinc fits into the middle of these extremes. We'll also examine
issues relating to using SIMD from kernel space and the costs
associated with it, and what we can do about it.
