Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A0C7B8D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 07:13:02 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2269A152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 07:13:01 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20160727234035.772a4333@grimm.local.home>
References: <20160727234035.772a4333@grimm.local.home>
	<87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
To: Steven Rostedt <rostedt@goodmis.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <25344.1469689978.1@warthog.procyon.org.uk>
Date: Thu, 28 Jul 2016 08:12:58 +0100
Message-ID: <25345.1469689978@warthog.procyon.org.uk>
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

Steven Rostedt <rostedt@goodmis.org> wrote:

> >  (2) Differentiate non-BH spinlocks and BH spinlocks by type.
> > 
> >      It seems like you can't mix BH and non-BH ops on a spinlock without
> >      lockdep barking.  If that's the case, let's make this a compile-time
> >      check.
> > 
> 
> Not sure what you mean here. You can use BH spinlocks as non BH
> spinlocks while in a BH, or if BH is already disabled, and lockdep will
> not complain.

Okay, fair enough.

David
