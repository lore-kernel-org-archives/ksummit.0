Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB8C9711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  6 Aug 2014 16:24:28 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5722F201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  6 Aug 2014 16:24:28 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20140806144519.GB14247@kroah.com>
References: <20140806144519.GB14247@kroah.com>
	<18667.1407324523@warthog.procyon.org.uk>
To: Greg KH <greg@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <21296.1407342261.1@warthog.procyon.org.uk>
Date: Wed, 06 Aug 2014 17:24:21 +0100
Message-ID: <21297.1407342261@warthog.procyon.org.uk>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Should .c files be discouraged from
	#including UAPI headers directly?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Greg KH <greg@kroah.com> wrote:

> Why does it matter?  What works "better" if a .c file doesn't include
> the uapi.h file?

Some of the UAPI headers are 'fixed up' by the non-UAPI header.  In
linux/types.h, for example:

	#define __EXPORTED_HEADERS__
	#include <uapi/linux/types.h>

and linux/acct.h:

	#include <uapi/linux/acct.h>
	...
	#undef ACCT_VERSION
	#undef AHZ

and linux/quota.h:

	#include <uapi/linux/quota.h>
	...
	#undef USRQUOTA
	#undef GRPQUOTA

I don't now remember where they all are:-/

David
