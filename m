Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B9A5A256
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:41:02 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 71313AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:41:02 +0000 (UTC)
Received: from int-mx09.intmail.prod.int.phx2.redhat.com
	(int-mx09.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E73FF7F40B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:41:01 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <15568.1469184060.1@warthog.procyon.org.uk>
Date: Fri, 22 Jul 2016 11:41:00 +0100
Message-ID: <15569.1469184060@warthog.procyon.org.uk>
Subject: [Ksummit-discuss] [TECH TOPIC] Compiler shopping list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Are there additional things we can get the compiler to do for us?  Some
things I've seen brought up:

 (1) Additional __atomic_*() ops could be useful.  Suggestions I've heard
     include direct LL/SC support - though the compiler people don't seem so
     keen on that.

 (2) -mmodel=kernel flag so that the compiler can optimise better for the
     kernel memory model.

David
