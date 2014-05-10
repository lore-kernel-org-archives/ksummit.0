Return-Path: <catalin.marinas@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 541B2947
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 10:04:30 +0000 (UTC)
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D7D01FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 10:04:29 +0000 (UTC)
Received: by mail-wg0-f41.google.com with SMTP id z12so4858286wgg.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 03:04:27 -0700 (PDT)
Received: from [192.168.1.102] (cpc15-cmbg15-2-0-cust133.5-4.cable.virginm.net.
	[82.26.12.134])
	by mx.google.com with ESMTPSA id u9sm3838867wib.21.2014.05.10.03.04.26
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 10 May 2014 03:04:26 -0700 (PDT)
Sender: Catalin Marinas <catalin.marinas@gmail.com>
From: Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Message-Id: <C03F79D0-8FF8-43B9-B77A-3648640380E2@arm.com>
Date: Sat, 10 May 2014 11:04:25 +0100
To: ksummit-discuss@lists.linuxfoundation.org
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
Subject: [Ksummit-discuss] [CORE TOPIC] Run-time kernel checking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

There is already a topic proposed on static checking (sparse, coverity)
but I would like to propose a complementary one: run-time checking.

Linux has several run-time checking tools to spot potential problems
before actually causing a kernel crash: lockdep, spinlock debugging, RCU
debugging, memory poisoning, kmemcheck, kmemleak etc. Some of these are
simpler (e.g. poisoning), others are more complex and have significant
run-time overhead.

What I would like to get out of such discussion:

1. Which tools do people use on a regular basis? How useful are they?
2. Use-cases and feedback on how they can be improved (e.g. better
   reporting, more information, lower overhead)
3. What else do we miss? Can we borrow ideas from other tools? How
   feasible would it be (e.g. helgrind-like tool in the kernel)?

People for this topic: at least the maintainers of the existing run-time
checkers (and I=92m sure I missed many others):

Peter Zijlstra (lockdep)
Ingo Molnar (lockdep)
Paul E. McKenney (RCU)
Dipankar Sarma (RCU)
Vegard Nossum (kmemcheck)
Pekka Enberg (kmemcheck)
Catalin Marinas (kmemleak)

However, rather than a discussion between the above maintainers, the aim
is to get feedback from users of these tools and ideas for new tools
(hence the core topic tag).

Thanks,

Catalin=
