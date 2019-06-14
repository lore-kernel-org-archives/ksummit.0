Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A4BBFEFF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 14:21:36 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 68ABFE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 14:21:36 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <20200.1560522033.1@warthog.procyon.org.uk>
From: David Howells <dhowells@redhat.com>
Date: Fri, 14 Jun 2019 15:21:19 +0100
Message-ID: <20265.1560522079@warthog.procyon.org.uk>
Cc: peterz@infradead.org, paulmck@linux.ibm.com, linux@armlinux.org.uk
Subject: [Ksummit-discuss] [TECH TOPIC] Consistent terminology for ring
	buffers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

Can we settle on consistent terminology for ring buffers with regard to what
we call the producer index and the consumer index?

In linux/circ_buf.h and Documentation/core-api/circular-buffers.rst and
various other places "head" is the index at which insertion occurs and "tail"
is the index of the next object to be consumed.

However, we have other places, notably the new io_uring stuff, in which this
is reversed...

Looking online, I think head-as-insertion is more common, but I can find
references to head-as-consumption.

Should we settle on one of the following for internal kernel use, at least
inside the core documentation (not much we can do about UAPI necessarily):

	PRODUCER	CONSUMER
	===============	===============
	head		tail
	tail		head
	in		out
	insert		remove
	produce		consume

To quote Russell: "head is where the food goes in, the tail is where the ..."

David
