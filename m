Return-Path: <borntraeger@de.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8AA522C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 15:52:53 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 00E5E29D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 15:52:52 +0000 (UTC)
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6MFpSXr103202 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:52:52 -0400
Received: from e06smtp09.uk.ibm.com (e06smtp09.uk.ibm.com [195.75.94.105])
	by mx0b-001b2d01.pphosted.com with ESMTP id 24bhkrjyus-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:52:51 -0400
Received: from localhost
	by e06smtp09.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<borntraeger@de.ibm.com>; Fri, 22 Jul 2016 16:52:50 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com
	(d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by d06dlp01.portsmouth.uk.ibm.com (Postfix) with ESMTP id 474F017D8062
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 16:54:19 +0100 (BST)
Received: from d06av09.portsmouth.uk.ibm.com (d06av09.portsmouth.uk.ibm.com
	[9.149.37.250])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id u6MFqmVj22610394
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 15:52:48 GMT
Received: from d06av09.portsmouth.uk.ibm.com (localhost [127.0.0.1])
	by d06av09.portsmouth.uk.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with
	ESMTP id u6MFqmpd030222
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 09:52:48 -0600
To: David Howells <dhowells@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <15569.1469184060@warthog.procyon.org.uk>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Date: Fri, 22 Jul 2016 17:52:47 +0200
MIME-Version: 1.0
In-Reply-To: <15569.1469184060@warthog.procyon.org.uk>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Message-Id: <5792414F.5040902@de.ibm.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Compiler shopping list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/22/2016 12:41 PM, David Howells wrote:
> Are there additional things we can get the compiler to do for us?  Some
> things I've seen brought up:
> 
>  (1) Additional __atomic_*() ops could be useful.  Suggestions I've heard
>      include direct LL/SC support - though the compiler people don't seem so
>      keen on that.
> 
>  (2) -mmodel=kernel flag so that the compiler can optimise better for the
>      kernel memory model.

Some years ago (actually many) Linus proposed to have an endianess attribute to data
types, so that the compiler can do the bswap automatically. For some reason this
was never implemented, but this might be a good idea anyway.

e.g. 

unsigned long x[10] __attribute__(("bigendian"));
