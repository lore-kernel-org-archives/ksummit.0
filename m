Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 675DCA4E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 25 Jul 2014 12:39:46 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E3A81FD6E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 25 Jul 2014 12:39:45 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <22708.1406291979.1@warthog.procyon.org.uk>
Date: Fri, 25 Jul 2014 13:39:39 +0100
Message-ID: <22709.1406291979@warthog.procyon.org.uk>
Subject: [Ksummit-discuss] Should we force include <linux/err.h> when
	compiling all .c files?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Should we forcibly include <linux/err.h> from the gcc command line when
compiling all .c files?  Note:

	warthog>git grep -l '#.*include.*<linux/err[.]h>' -- \*.c | wc -l
	1797

vs:

	warthog>git grep -l 'IS_ERR\|ERR_PTR\|PTR_ERR\|ERR_CAST' -- \*.c | wc -l
	4472

So a lot fewer .c files include it than use it, but according to:

	1: If you use a facility then #include the file that defines/declares
	   that facility.  Don't depend on other header files pulling in ones
	   that you use.

as pointed out to me by Stephen, it shouldn't be assumed that it's available.


However, passing errors in pointers is so very common within the kernel, it
might worth be adding linux/err.h to the automatically included stuff.

David
