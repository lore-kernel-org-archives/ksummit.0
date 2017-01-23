Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E8167B49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 17:27:35 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7885A23D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 17:27:35 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <521f636c-c768-2d01-18c6-e5b6b96b6d8f@cisco.com>
References: <521f636c-c768-2d01-18c6-e5b6b96b6d8f@cisco.com>
	<31831.1485170425@warthog.procyon.org.uk>
To: Hans Verkuil <hansverk@cisco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <3108.1485192452.1@warthog.procyon.org.uk>
Date: Mon, 23 Jan 2017 17:27:32 +0000
Message-ID: <3109.1485192452@warthog.procyon.org.uk>
Cc: mchehab@s-opensource.com, ksummit-discuss@lists.linuxfoundation.org,
	apw@canonical.com, hans.verkuil@cisco.com, joe@perches.com
Subject: Re: [Ksummit-discuss] UAPI headers and inline function policy
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hans Verkuil <hansverk@cisco.com> wrote:

> >  (1) Inline functions and function declarations.
> 
> The reason for putting them there is that these inline functions are used
> both in the kernel and in userspace. Having them in one place makes life
> much simpler.
> 
> What is the rationale for not allowing this?
> 
> >  (2) Anonymous embedded structs and unions.
> 
> Same question. Anonymous unions are used in many places and have been for
> many years. Certainly in the media subsystem they are used frequently.

Not all compilers support these features.  Also, we have to be very careful
about using reserved words like "new" in parameter and variable names.

David
