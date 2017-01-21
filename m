Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9F44AC4F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Jan 2017 02:10:46 +0000 (UTC)
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BB641133
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Jan 2017 02:10:45 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 8152D47A320
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Jan 2017 02:47:14 +0100 (CET)
Date: Fri, 20 Jan 2017 17:47:02 -0800
From: Josh Triplett <josh@joshtriplett.org>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20170121014702.nqpbthe63emb7jxv@jtriplet-mobl2.jf.intel.com>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
Cc: Josh Armour <jarmour@google.com>, Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] security-related TODO items?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jan 20, 2017 at 04:14:25PM -0800, Andy Lutomirski wrote:
> This is not easy at all, but: how about rewriting execve() so that the
> actual binary format parsers run in user mode?

I really like that idea.  And not just the binary format parsers;
everything except the "do what would happen on exec" transition within
the kernel (the bits documented in execve(2) as changing/resetting on
execve, other than those bits trivially doable in userspace).

(One potential challenge: this still has to handle setuid binaries
safely.)

I can think of other syscalls where a userspace implementation would
make sense, as well, if it can run with reasonable performance.  For
instance, imagine moving compatibility syscalls, x32 syscalls, or
deprecated syscalls into userspace, such that if a process found a way
to compromise that layer, it couldn't compromise any other process.

- Josh Triplett
