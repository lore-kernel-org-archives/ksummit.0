Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 10F4D31F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 06:04:04 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 914E4883
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 06:04:03 +0000 (UTC)
Date: Thu, 30 May 2019 02:04:01 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190530060401.GA30835@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: Vitaly Wool <vitalywool@gmail.com>
Subject: [Ksummit-discuss] [TECH TOPIC] Decoupling ZRAM from a specific
	backend
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Vitaly Wool <vitalywool@gmail.com>

[ Note: The following abstract was submitted via the Linsux Plumbers
  Conference website.  Per the instructions that were posted for the
  Maintainer's / Kernel Summit Call for Proposals[1], the proposal
  should also be posted on the ksummit-discuss list, so that people
  can comment on the proposal, and perhaps start a discussion before
  the summit.

  [1] https://lwn.net/Articles/788378/

  Please note that topic proposals for both the Kernel Summit and the
  Maintainer's Summit are still welcome, and the deadline has been
  extended to June 3rd. -- Ted ]

ZRAM is a compressed RAM based block device implementation which has
gotten a lot of use recently primarily in the Android world. ZRAM
consists of the block device front-end, compressor back-end and memory
allocator back-end. Compressor back-end is accessed via a common API,
and therefore it is easy with ZRAM to select the particular
compression algorithm that fits your special purpose. As opposed to
that, selecting a memory allocator back-end for ZRAM is still not
possible because ZRAM is using zsmalloc API directly.

With that said, zsmalloc is not the only kernel allocator for storing
compressed objects. There also are zbud (up to 2 objects per page) and
z3fold (up to 3 objects per page). Designed to store only integral
number of objects per page, these two have deterministic behavior with
low I/O latencies. Compression ratio suffers for these two of course
-- by much for zbud and not so much for z3fold.

Still z3fold might be a better choice as a backend for ZRAM when
compression ratio is not as important as keeping latencies low. As a
z3fold primary author I keep getting questions when it will be
available for use with ZRAM, and keep answering that it has to be a
result of a wider consensus. To get closer to this, apart from
zsmalloc / z3fold comparisons, this talk will describe in detail how
the existing zpool API should be extended to match ZRAM requirements
and whether there is a performance penalty here as this introduces a
level of indirection.
