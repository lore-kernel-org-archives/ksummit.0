Return-Path: <andrea.parri@amarulasolutions.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 56A8CFE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 22 Sep 2018 13:34:38 +0000 (UTC)
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 82E59A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 22 Sep 2018 13:34:37 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id a20-v6so12850100edd.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 22 Sep 2018 06:34:37 -0700 (PDT)
Date: Sat, 22 Sep 2018 15:34:27 +0200
From: Andrea Parri <andrea.parri@amarulasolutions.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20180922133427.GA3998@andrea>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: [Ksummit-discuss] [TECH TOPIC] Concurrency with tools/memory-model/
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi all,

Paul E. McKenney and myself would like to propose the following topic
for the technical track.

---

Concurrency is "tricky", it has been said, due to numerous optimizations
implemented in today's multiprocessors and by the compiler.

Traditionally, developers have relied on informal documentation such as
memory-barriers.txt to avoid the "pitfalls of concurrency".

However, this doesn't always happen right: this documentation is subject
of misinterpretations, incomplete, and yet all but concise!

This talk will go over a new approach to study concurrency issues in the
kernel using the Linux-kernel memory consistency model [1].

What can this model do? and, most importantly, how can it be used?  This
hands-on talk aims at addressing these questions.

[1] 1c27b644c0fdbc ("Automate memory-barriers.txt; provide Linux-kernel memory model")

---

Thanks,
  Andrea
