Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C9FD22C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:13:42 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7CA22160
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:13:42 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CACVxJT-CB2V1dDdnJdbjewmXR04RpqB51c1jnh29Go_ceu6AWw@mail.gmail.com>
References: <CACVxJT-CB2V1dDdnJdbjewmXR04RpqB51c1jnh29Go_ceu6AWw@mail.gmail.com>
	<87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<20160721233333.GD9841@dtor-ws>
	<11488.1469170986@warthog.procyon.org.uk>
To: Alexey Dobriyan <adobriyan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <15316.1469182420.1@warthog.procyon.org.uk>
Date: Fri, 22 Jul 2016 11:13:40 +0100
Message-ID: <15317.1469182420@warthog.procyon.org.uk>
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

Alexey Dobriyan <adobriyan@gmail.com> wrote:

> Indeed, but please call them flags_t and flags64_t.

Fine by me, though I was trying to avoid confusion with the argument to IRQ
munging functions.

> test_bit et all can dispatch with  __builtin_choose_expr or even _Generic.

Or by __atomic_fetch_{and,or,xor}().

David
