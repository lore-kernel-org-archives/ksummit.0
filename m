Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 782A2A86
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 14:57:59 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 723331D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 14:57:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CF5A580C0F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 14:57:57 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <10144.1499863410@warthog.procyon.org.uk>
References: <10144.1499863410@warthog.procyon.org.uk>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <12462.1499871476.1@warthog.procyon.org.uk>
Date: Wed, 12 Jul 2017 15:57:56 +0100
Message-ID: <12463.1499871476@warthog.procyon.org.uk>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Getting better/supplementary
	error info back to userspace
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

David Howells <dhowells@redhat.com> wrote:

> In which case, would it make sense to attach such a facility to the
> task_struct instead?  I implemented a test of this using prctl, but a new
> syscall might be a better idea, at least for reading.
> 
>  (*) int old_setting = prctl(PR_ERRMSG_ENABLE, int setting);
> 
>      Enable (setting == 1) or disable (setting == 0) the facility.
>      Disabling the facility clears the error buffer.
> 
>  (*) int size = prctl(PR_ERRMSG_READ, char *buffer, int buf_size);
> 
>      Read back a message and discard it.  

I forgot to add that I've kept the in-kernel interface I have for this very
simple for the moment:

	void errorf(const char *fmt, ...);
	int invalf(const char *fmt, ...);

where these functions take printf-style arguments and where invalf() is the
same as errorf(), but returns -EINVAL for convenience.  To take an example
from NFS:

-	if (auth_info->flavor_len + 1 >= max_flavor_len) {
-		dfprintk(MOUNT, "NFS: too many sec= flavors\n");
-		return -EINVAL;
-	}
+	if (auth_info->flavor_len + 1 >= max_flavor_len)
+		return invalf("NFS: too many sec= flavors");

David
