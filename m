Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9F3F98B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 16:45:16 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B6DB1FD44
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 16:45:16 +0000 (UTC)
Date: Fri, 2 May 2014 09:44:42 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20140502164438.GA1423@jtriplet-mobl1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: Sarah Sharp <sarah@minilop.net>, Greg KH <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>, Darren Hart <darren@dvhart.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking the
 kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Over time, the Linux kernel has grown far more featureful, but it has
also grown significantly larger, even with all the optional features
turned off.  For the last several years, I've been working to make the
kernel smaller, and mentoring/coordinating projects to do the same, to
enable ridiculously small embedded applications and other fun uses.  I'd
like to discuss that work at Kernel Summit, get size regressions on the
radar of kernel developers and subsystem maintainers, and solicit
discussion on future possibilities to shrink the kernel further.

Topics:
- An overview of why the kernel's size still matters today ("but don't
  we all have tons of memory and storage?")
- Tiny in RAM versus tiny on storage.
- How much the kernel has grown over time.
- How size regressions happen and how to avoid them
- Size measurement, bloat-o-meter, allnoconfig, and other tools
- Compression and the decompression stub
- Kconfig, and avoiding excessive configurability in the pursuit of tiny
- Optimizing a kernel for its exact target userspace.
- Examples of shrinking the kernel
- Discussion on proposed ways to make the kernel tiny, how much they
  might save, how much work they'd require, and how to implement them
  with minimal impact to the un-shrunken common case.

After the session, I'll prepare and maintain a detailed summary of the
proposed ideas, ordered by how much space they'd save versus how much
work they'd be.  I plan to maintain that list on an ongoing basis, to
coordinate tinification projects for ongoing work by people working on
embedded applications, and for the benefit of mentorship projects such
as OPW and SoC.

The set of people on the CC list would be good to have at the
discussion.  I marked this as "CORE TOPIC", but I'd also be happy to
discuss it on the dual-track day if that's preferable.

(I'm currenly on the auto-generated nomination list.)

- Josh Triplett
