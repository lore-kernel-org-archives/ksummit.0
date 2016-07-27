Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 096F194B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 19:48:04 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D94EC1B2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 19:48:02 +0000 (UTC)
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6RJdiWO067972 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 15:48:02 -0400
Received: from e23smtp07.au.ibm.com (e23smtp07.au.ibm.com [202.81.31.140])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24dsrr154q-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 15:48:02 -0400
Received: from localhost
	by e23smtp07.au.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Thu, 28 Jul 2016 05:48:00 +1000
Received: from d23relay06.au.ibm.com (d23relay06.au.ibm.com [9.185.63.219])
	by d23dlp01.au.ibm.com (Postfix) with ESMTP id 799A42CE8046
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 05:47:58 +1000 (EST)
Received: from d23av03.au.ibm.com (d23av03.au.ibm.com [9.190.234.97])
	by d23relay06.au.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6RJlwtd30867668 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 05:47:58 +1000
Received: from d23av03.au.ibm.com (localhost [127.0.0.1])
	by d23av03.au.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6RJlwd3018726 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 05:47:58 +1000
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: David Howells <dhowells@redhat.com>
Date: Wed, 27 Jul 2016 15:47:55 -0400
In-Reply-To: <15842.1469185302@warthog.procyon.org.uk>
References: <15842.1469185302@warthog.procyon.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1469648875.23563.22.camel@linux.vnet.ibm.com>
Cc: ikent@redhat.com, oleg@redhat.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Containerisation,
 namespaces and keyrings
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fr, 2016-07-22 at 12:01 +0100, David Howells wrote:
> I'm not sure this is the right venue for this, but keyrings will need to be
> namespaced/containerised at some point.
> 
> The problem is that it's an icky problem given that different key types really
> want to live in different namespaces, and upcalls may want to done in
> different containers, depending on the key type.
> 
> For example, DNS resolver keys - should they be in the network, the filesystem
> namespace or neither?  Should the upcall be in the current container or the
> root container?
> 
> Authentication keys, such as used by kafs and AF_RXRPC - should they be in the
> filesystem namespace (kafs is an fs), the network namespace (AF_RXRPC is a net
> protocol) or the user namespace?
> 
> Should crypto keys, such as the asymmetric key type, be in the user namespace?
> What about use by module signing?  Should key operations in the current
> container have access to a blacklist in the root container?  Should key
> verification in the current container have access to system keyrings?  The
> TPM?
> 
> This might actually be right for a hallway track.

Mat Martineau' patch set might address some of these issues for the
asymmetric key type.  As part of the container/namespace initialization,
these self trusted keyrings could be created.

Mimi
