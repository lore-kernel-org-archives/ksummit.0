Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E3B4B324A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 06:12:22 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 72349821
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 06:12:22 +0000 (UTC)
Date: Thu, 30 May 2019 02:12:11 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190530061211.GA31667@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: Matthew Wilcox <willy@infradead.org>
Subject: [Ksummit-discuss] [TECH TOPIC] Maple Tree
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Liam Howlett <Liam.Howlett@Oracle.com>,
      Matthew Wilcox <willy@infradead.org>

[ Note: The following abstract was submitted via the Linux Plumbers
  Conference website.  Per the instructions that were posted for the
  Maintainer's / Kernel Summit Call for Proposals[1], the proposal
  should also be posted on the ksummit-discuss list, so that people
  can comment on the proposal, and perhaps start a discussion before
  the summit.

  [1] https://lwn.net/Articles/788378/

  Please note that topic proposals for both the Kernel Summit and the
  Maintainer's Summit are still welcome, and the deadline has been
  extended to June 3rd. -- Ted ]

The Red-Black tree and Radix tree are used in many places in the
kernel to store ranges. Both of these trees have drawbacks when used
for ranges. The Red-Black tree requires writing your own insertion &
search code. It is also designed with the assumption that memory
accesses are cheap, which is no longer true. The Radix tree performs
acceptably well when ranges are aligned to a power of 2, but has awful
worst-case performance.

The Maple tree is a fast, cache efficient tree with a simple API. It
supports contiguous ranges efficiently, while suffering only minor
penalties for discontiguous ranges. Single entries are also supported
as a range of length one.

The Maple tree can optionally track free ranges to allow for more
efficient allocation. In order to allow it to be used as the basis for
the page cache, it will need support for search marks as well as
handling reclamation of shadow entries. Other potential users of the
Maple tree want more than the three search marks currently supported
by the Radix tree.

We want to discuss requirements with potential users of the Maple
tree, and to present development since the last Plumbers conference
where the broad outlines of the tree were first presented.
