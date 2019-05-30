Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B4A7631FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 06:07:30 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33A9887D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 06:07:30 +0000 (UTC)
Date: Thu, 30 May 2019 02:07:27 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190530060727.GA31283@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: Satya Tangirala <satyat@google.com>
Subject: [Ksummit-discuss] [TECH TOPIC] Inline Encryption Support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Satya Tangirala <satyat@google.com>

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

Storage hardware with built-in “inline” encryption support is becoming
increasingly common, especially on mobile SoCs running Android; it's
also now part of the UFS and eMMC standards. These devices en/decrypt
data between the application processor and disk without generating
disk latency or cpu overhead. Inline encryption hardware can be
programmed to hold multiple encryption keys simultaneously and can be
dynamically reprogrammed to use any of these programmed encryption
keys to en/decrypt a particular request. This makes this new class of
storage ideal for supporting fscrypt (file-based
encryption). Unfortunately, there isn’t currently a unified approach
for supporting inline encryption hardware in the Linux kernel.

We’ve sent out an RFC patchset to add support for inline encryption to
the block subsystem, UFS driver, f2fs, and fscrypt
(https://www.spinics.net/lists/linux-block/msg40330.html).  We’ll
discuss our approach including:

How the filesystem communicates an encryption key to inline encryption
hardware for each struct bio it submits.  How to add support for
inline encryption to storage drivers.  Support for layered devices
like device mapper.  A software crypto fallback.  How this work can
make future encryption tasks cleaner - like metadata encryption,
file-based encryption on removable storage and the possibility of
unifying how fscrypt, dm-crypt, and eCryptfs implement encryption.
