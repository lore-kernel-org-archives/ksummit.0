Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5FCD0256
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:01:45 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0290710A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:01:44 +0000 (UTC)
Received: from int-mx13.intmail.prod.int.phx2.redhat.com
	(int-mx13.intmail.prod.int.phx2.redhat.com [10.5.11.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7BA527F415
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:01:44 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <15841.1469185302.1@warthog.procyon.org.uk>
Date: Fri, 22 Jul 2016 12:01:42 +0100
Message-ID: <15842.1469185302@warthog.procyon.org.uk>
Cc: ikent@redhat.com, oleg@redhat.com
Subject: [Ksummit-discuss] [TECH TOPIC] Containerisation,
	namespaces and keyrings
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I'm not sure this is the right venue for this, but keyrings will need to be
namespaced/containerised at some point.

The problem is that it's an icky problem given that different key types really
want to live in different namespaces, and upcalls may want to done in
different containers, depending on the key type.

For example, DNS resolver keys - should they be in the network, the filesystem
namespace or neither?  Should the upcall be in the current container or the
root container?

Authentication keys, such as used by kafs and AF_RXRPC - should they be in the
filesystem namespace (kafs is an fs), the network namespace (AF_RXRPC is a net
protocol) or the user namespace?

Should crypto keys, such as the asymmetric key type, be in the user namespace?
What about use by module signing?  Should key operations in the current
container have access to a blacklist in the root container?  Should key
verification in the current container have access to system keyrings?  The
TPM?

This might actually be right for a hallway track.

David
