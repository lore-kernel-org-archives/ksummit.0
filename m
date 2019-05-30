Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3616431E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 06:01:14 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5DAD875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 06:01:13 +0000 (UTC)
Date: Thu, 30 May 2019 02:01:11 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190530060111.GA30403@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] UniLinux -- Unikernelized Linux
	Exploration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Tiejun Chen <tiejunc@vmware.com>

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

Unikernel is relatively a novel software technology that links an
application with OS in the form of a library and packages them into a
specialized image that facilitates direct deployment on a
hypervisor. And the reality is that no matter what we are talking the
cloud infrastructure, or IoT edge systems, etc, we really need this
across a variety of areas, buy those existing unikernels have yet to
gain large popularity. So what if we can convert Linux to Unikernel or
Unikernel-like? Here I'll talk what challenges Unikernels are facing,
and discuss my proposal of if-how we could convert Linux as Unikernel
like to make all kernel and user stuff working only kernel mode, how
to manage interrupt, how to further reduce memory size and footprint,
how to improve IO performance with light weight network stack, should
we support multiple processes in some light weight ways, etc. These
problem could be addressed but also need to further discuss during
LPC.

In terms of UniLinux, IoT and Serverless could be a valuable candidate
to make Unikernel succeed. Meantime, it should be a potential vessel
by replacing container, because compared to traditional container,
Unikernel is small, fast and more secure as a lightweight VM. So it is
really worthy fitting Unilinux into a variety of areas like IoT,
Serverless and so on.
