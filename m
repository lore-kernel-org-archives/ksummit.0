Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AC8999AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 04:00:25 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0140.hostedemail.com
	[216.40.44.140])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9AD9C1A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 04:00:24 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 4A64811A226
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:40:39 +0000 (UTC)
Date: Wed, 27 Jul 2016 23:40:35 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20160727234035.772a4333@grimm.local.home>
In-Reply-To: <25598.1469113525@warthog.procyon.org.uk>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Thu, 21 Jul 2016 16:05:25 +0100
David Howells <dhowells@redhat.com> wrote:


>  (2) Differentiate non-BH spinlocks and BH spinlocks by type.
> 
>      It seems like you can't mix BH and non-BH ops on a spinlock without
>      lockdep barking.  If that's the case, let's make this a compile-time
>      check.
> 

Not sure what you mean here. You can use BH spinlocks as non BH
spinlocks while in a BH, or if BH is already disabled, and lockdep will
not complain.

-- Steve
