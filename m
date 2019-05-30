Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A73C031E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 05:59:51 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7EA3D880
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 05:59:50 +0000 (UTC)
Date: Thu, 30 May 2019 01:59:47 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190530055947.GA29812@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>

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

CIFSD is a new SMB server implementation for the Linux kernel
(out of tree, as of this moment), intended to be minimalistic,
yet providing better performance than user-space analogues.
This talk will briefly introduce CIFSD, its architecture (high
level) and its main design goals: outline components, their
responsibilities and communication protocols.

The work is still in progress, we are in pretty early stages,
so in the second part of the talk we will focus on current state
of affairs and our future development plans - we are looking at
possibility to merge CIFSD with the upstream Linux kernel,
sometime in the future.
