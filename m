Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21EB59C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:34:38 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CBA3A16B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:34:37 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <15499.1469183675.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Jul 2016 11:34:35 +0100
Message-ID: <15500.1469183675@warthog.procyon.org.uk>
Cc: jakub@redhat.com, peterz@infradead.org, ramana.radhakrishnan@arm.com
Subject: [Ksummit-discuss] [TECH TOPIC] Memory model,
	using ISO C++11 atomic ops
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Earlier this year we had a discussion of the possibilities of using ISO C+=
+11
atomic operations inside the kernel to implement kernel atomic ops of sort=
s
various, posted here:

	Subject: [RFC PATCH 00/15] Provide atomics and bitops implemented with IS=
O C++11 atomics
	Date: Wed, 18 May 2016 16:10:37 +0100

Is it worth getting together to discuss these in person in one of the tech
slots - especially if there are some gcc or llvm people available at plumb=
ers
who could join in?


Further, Paul McKenney and others are assembling a memory model descriptio=
n.
Do we want to consider loosening up the kernel memory model?

Currently, for example, locks imply semi-permeable barriers that are not t=
ied
to the lock variable - but, as I understand it, this may not hold true on =
all
arches, and on those arches an extra memory barrier would be required.  Fo=
r
example, { LOCK(A), UNLOCK(A), LOCK(B), UNLOCK(B) } would not imply a full
memory barrier in the middle.

Also, we have read and write memory barrier constructs - but not all CPUs =
have
such things, some instead have acquire and release.  Would it be worth hav=
ing
higher level constructs that encapsulate what you're trying to do and sele=
ct
the most appropriate barrier from the available choices?  For instance, we
have a fair few circular buffers, with linux/circ_buf.h providing some use=
ful
bits.  Should we provide circular buffering barrier constructs?


If we do this, Will Deacon, Peter Zijlstra and Paul McKenney should defini=
tely
be there.  I would suggest Jakub Jelinek and Ramana Radhakrishnan as gcc
representatives.  I don't know anyone from LLVM.

David
