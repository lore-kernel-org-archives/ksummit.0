Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A192C8D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 11:20:28 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 55EEC8C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 11:20:28 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <31830.1485170425.1@warthog.procyon.org.uk>
Date: Mon, 23 Jan 2017 11:20:25 +0000
Message-ID: <31831.1485170425@warthog.procyon.org.uk>
Cc: mchehab@s-opensource.com, hans.verkuil@cisco.com, apw@canonical.com,
	joe@perches.com
Subject: [Ksummit-discuss] UAPI headers and inline function policy
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I noticed that include/uapi/linux/cec.h and cec-funcs.h export a bunch of
inline functions to userspace.  I think that the following should possibly be
prohibited in kernel UAPI headers:

 (1) Inline functions and function declarations.

 (2) Anonymous embedded structs and unions.

 (3) Conditionals, other than re-inclusion guards and C++ guards.  Definitely
     no dependencies on CONFIG_* or __ARCH_* or __KERNEL__.  Ideally, we
     should be able to copy the headers as-are to /usr/include/ without the
     need to run them through a filter.

 (4) The extern keyword - except when used in a C++ guard.

Now, we already have some violations of these that we probably can't get rid
of, but anything added in the last merge window we probably can deal with.

Thoughts?

David
