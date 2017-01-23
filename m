Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3AE5FBD3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 20:36:33 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3668F133
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 20:36:32 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CALCETrV5b4Z3MF51pQOPtp-BgMM4TYPLrXPHL+EfsWfm+CczkA@mail.gmail.com>
References: <CALCETrV5b4Z3MF51pQOPtp-BgMM4TYPLrXPHL+EfsWfm+CczkA@mail.gmail.com>
	<CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
	<31033.1485168526@warthog.procyon.org.uk>
To: Andy Lutomirski <luto@amacapital.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5023.1485203788.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 23 Jan 2017 20:36:28 +0000
Message-ID: <5024.1485203788@warthog.procyon.org.uk>
Cc: Josh Armour <jarmour@google.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-mm@kvack.org" <linux-mm@kvack.org>
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

> >  (1) You'd need at least one pre-loader binary image built into the ke=
rnel
> >      that you can map into userspace (you can't upcall to userspace to=
 go get
> >      it for your core binfmt).  This could appear as, say, /proc/prelo=
ader,
> >      for the kernel to open and mmap.
> =

> No need for it to be visible at all.  I'm imagining the kernel making
> a fresh mm_struct, directly mapping some text, running that text, and
> then using the result as the mm_struct after execve.

What would you see in /proc/pid/maps?

> >  (2) Where would the kernel put the executable image?  It would have t=
o
> >      parse the binary to find out where not to put it - otherwise the =
code
> >      might have to relocate itself.
> =

> In vmlinux.

You misunderstood the question.  I meant at what address would you map it =
into
userspace?  You would have to avoid anywhere the executable needs to place
something - though as long as you can manage to start the loader, you can
ditch the pre-loader, so that might not be a problem.

> >  (6) NOMMU could be particularly tricky.  For ELF-FDPIC at least, the =
stack
> >      size is set in the binary.  OTOH, you wouldn't have to relocate t=
he
> >      pre-loader - you'd just mmap it MAP_PRIVATE and execute in place.
> =

> For nommu, forget about it.

Why?  If you do that, you have to have bimodal binfmts.  Note that the
ELF-FDPIC binfmt, at least, can be used for both MMU and NOMMU environment=
s.
This may also be true of FLAT.

> >  (7) When the kernel finds it's dealing with a script, it goes back th=
rough
> >      the security calculation procedure again to deal with the interpr=
eter.
> =

> The security calculation isn't what I'm worried about.  I'm worried
> about the parser.

But you may have to redo the security calculation *after* doing the parsin=
g.

> Anyway, I didn't say this would be easy :)

True... :-)

David
