Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 70321B01
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 01:17:06 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 213B71A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 01:17:06 +0000 (UTC)
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BB63A22CB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 01:17:05 +0000 (UTC)
Received: by mail-vk0-f51.google.com with SMTP id g189so1024490vke.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 03 Aug 2017 18:17:05 -0700 (PDT)
MIME-Version: 1.0
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 3 Aug 2017 18:16:44 -0700
Message-ID: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

[Note: I'm not entirely sure I can make it to the kernel summit this
year, due to having a tiny person and tons of travel]

This may be highly controversial, but: there seems to be a weakness in
the kernel development model in the way that new ABI features become
stable.  The current model is, roughly:

1. Someone writes the code.  Maybe they cc linux-abi, maybe they don't.
2. People hopefully review the code.
3. A subsystem maintainer merges the code.  They hope the ABI is right.
4. Linus gets a pull request.  Linus probably doesn't review the ABI
for sanity, style, blatant bugs, etc.  If Linus did, then he'd never
get anything else done.
5. The new ABI lands in -rc1.
6. If someone finds a problem or objects, it had better get fixed
before the next real release.

There's a few problems here.  One is that the people who would really
review the ABI might not even notice until step 5 or 6 or so.  Another
is that it takes some time for userspace to get experience with a new
ABI.

I'm wondering if there are other models that could work.  I think it
would be nice for us to be able to land a kernel in Linus tree and
still wait a while before stabilizing it.  Rust, for example, has a
strict policy for this that seems to work quite well.

Maybe we could pull something off where big new features hide behind a
named feature gate for a while.  That feature gate can only be enabled
under some circumstances that make it very hard to mistake it for true
stability.  (For example, maybe you *can't* enable feature gates on a
final kernel unless you manually patch something.)

Here are a few examples that come to mind for where this would have helped:

 - Whatever that new RDMA socket type was that was deemed totally
broken but only just after it hit a real release.
 - O_TMPFILE.  I discovered that it corrupted filesystems in -rc6 or
-rc7.  That got fixed, the the API is still a steaming pile of crap.
 - Some cgroup+bpf stuff that got cleaned up in a -rc7 or so a few releases ago.

I'm sure there are tons more.

Is this too crazy, or is it worth discussing?
