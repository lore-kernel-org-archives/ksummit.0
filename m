Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 50C4E90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 02:55:52 +0000 (UTC)
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6E15E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 02:55:51 +0000 (UTC)
Received: by oiad129 with SMTP id d129so93144467oia.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Oct 2015 19:55:51 -0700 (PDT)
MIME-Version: 1.0
From: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 25 Oct 2015 19:55:31 -0700
Message-ID: <CALCETrWJveWdcHy7N0gE_KeZb3TUbSGSQUVy4YjKGpb5p94yXQ@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Paolo Bonzini <pbonzini@redhat.com>, m.smarduch@samsung.com
Subject: [Ksummit-discuss] Short topic: virtio vs IOMMU
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

It would be nice to nail down how virtio should interact with IOMMUs
on the emulated busses.  A bunch of the relevant maintainers are
around, and a short slot for this topic might make sense.

The goal would be to figure out how to accomplish something like this series:

https://git.kernel.org/cgit/linux/kernel/git/luto/linux.git/log/?h=virtio_ring_xen

but in a way that would actually work on all supported platforms
without breaking backward compatibility or killing performance.

--Andy

-- 
Andy Lutomirski
AMA Capital Management, LLC
