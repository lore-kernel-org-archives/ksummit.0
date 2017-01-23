Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3ED77A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 10:48:49 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31D7E135
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 10:48:49 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
References: <CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
	<CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <31032.1485168526.1@warthog.procyon.org.uk>
Date: Mon, 23 Jan 2017 10:48:46 +0000
Message-ID: <31033.1485168526@warthog.procyon.org.uk>
Cc: Josh Armour <jarmour@google.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] security-related TODO items?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Andy Lutomirski <luto@amacapital.net> wrote:

> This is not easy at all, but: how about rewriting execve() so that the
> actual binary format parsers run in user mode?

Sounds very chicken-and-egg-ish.  Issues you'd have:

 (1) You'd need at least one pre-loader binary image built into the kernel
     that you can map into userspace (you can't upcall to userspace to go get
     it for your core binfmt).  This could appear as, say, /proc/preloader,
     for the kernel to open and mmap.

 (2) Where would the kernel put the executable image?  It would have to parse
     the binary to find out where not to put it - otherwise the code might
     have to relocate itself.

 (3) How do you deal with address randomisation?

 (4) You may have to start without a stack as the kernel wouldn't necessarily
     know where to put it or how big it should be (see 6).  Or you might have
     to relocate it, including all the pointers it contains.

 (5) Where should the kernel put arguments, environment and other parameters?
     Currently, this presumes a stack, but see (4).

 (6) NOMMU could be particularly tricky.  For ELF-FDPIC at least, the stack
     size is set in the binary.  OTOH, you wouldn't have to relocate the
     pre-loader - you'd just mmap it MAP_PRIVATE and execute in place.

 (7) When the kernel finds it's dealing with a script, it goes back through
     the security calculation procedure again to deal with the interpreter.

> A minor one for x86: give binaries a way to opt out of the x86_64
> vsyscall page.  I already did the hard part (in a branch), so all
> that's really left is figuring out the ABI.

munmap() it in the loader?

David
