Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 60B60902
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 15:05:28 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EC2DAA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 15:05:27 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <87inw1skws.fsf@x220.int.ebiederm.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
To: ebiederm@xmission.com (Eric W. Biederman)
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <25597.1469113525.1@warthog.procyon.org.uk>
Date: Thu, 21 Jul 2016 16:05:25 +0100
Message-ID: <25598.1469113525@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I know it's not precisely what you're asking about, but there are a number of
types I would like to see:

 (1) A 'bits' and maybe a 'bits64' type.  Currently you have to use unsigned
     long when you want to deploy a flags field with which you're going to use
     test_bit() and co. - but this typically wastes 32 bits on a 64-bit arch
     because you can't use bits 32-63 as they might not exist.

     Some arches, x86_64 and ppc64 for example, can do 32-bit atomic ops, so
     we could make the field smaller in some cases.

     We have a *lot* of flags fields in the kernel, so I wonder if we could
     actually save any space.

     I seem to remember that the argument is (or was) that the type must be
     the natural word size of the machine, but how true is that in actuality?

 (2) Differentiate non-BH spinlocks and BH spinlocks by type.

     It seems like you can't mix BH and non-BH ops on a spinlock without
     lockdep barking.  If that's the case, let's make this a compile-time
     check.

 (3) Let's use bool a lot more for boolean values as the compiler might be
     able to make better choices with it.


And whilst we're at it, a function that I'd like to see:

 (1) on_list() in addition to list_empty() (and similar for other list types).

     I know this would be kind of redundant as is would be implemented exactly
     the same as list_empty() - but semantically you're asking a different
     question.

David
