Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71E66BD8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 20:11:06 +0000 (UTC)
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0C6AE135
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 20:11:02 +0000 (UTC)
Received: by mail-ua0-f180.google.com with SMTP id i68so118448244uad.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 12:11:02 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <31033.1485168526@warthog.procyon.org.uk>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
	<31033.1485168526@warthog.procyon.org.uk>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 23 Jan 2017 12:10:41 -0800
Message-ID: <CALCETrV5b4Z3MF51pQOPtp-BgMM4TYPLrXPHL+EfsWfm+CczkA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>,
	"linux-mm@kvack.org" <linux-mm@kvack.org>
Content-Type: text/plain; charset=UTF-8
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

On Mon, Jan 23, 2017 at 2:48 AM, David Howells <dhowells@redhat.com> wrote:
> Andy Lutomirski <luto@amacapital.net> wrote:
>
>> This is not easy at all, but: how about rewriting execve() so that the
>> actual binary format parsers run in user mode?
>
> Sounds very chicken-and-egg-ish.  Issues you'd have:
>
>  (1) You'd need at least one pre-loader binary image built into the kernel
>      that you can map into userspace (you can't upcall to userspace to go get
>      it for your core binfmt).  This could appear as, say, /proc/preloader,
>      for the kernel to open and mmap.

No need for it to be visible at all.  I'm imagining the kernel making
a fresh mm_struct, directly mapping some text, running that text, and
then using the result as the mm_struct after execve.

>
>  (2) Where would the kernel put the executable image?  It would have to parse
>      the binary to find out where not to put it - otherwise the code might
>      have to relocate itself.

In vmlinux.

>
>  (3) How do you deal with address randomisation?

Non-issue, I think.

>
>  (4) You may have to start without a stack as the kernel wouldn't necessarily
>      know where to put it or how big it should be (see 6).  Or you might have
>      to relocate it, including all the pointers it contains.

The relocation part is indeed a bit nasty.

>
>  (5) Where should the kernel put arguments, environment and other parameters?
>      Currently, this presumes a stack, but see (4).

Hmm.

>
>  (6) NOMMU could be particularly tricky.  For ELF-FDPIC at least, the stack
>      size is set in the binary.  OTOH, you wouldn't have to relocate the
>      pre-loader - you'd just mmap it MAP_PRIVATE and execute in place.

For nommu, forget about it.

>
>  (7) When the kernel finds it's dealing with a script, it goes back through
>      the security calculation procedure again to deal with the interpreter.

The security calculation isn't what I'm worried about.  I'm worried
about the parser.

Anyway, I didn't say this would be easy :)

>
>> A minor one for x86: give binaries a way to opt out of the x86_64
>> vsyscall page.  I already did the hard part (in a branch), so all
>> that's really left is figuring out the ABI.
>
> munmap() it in the loader?

Hmm, *that's* an interesting thought.  You can't remove the VMA (it's
not a VMA) but maybe munmap() could be made to work anyway.  Hey mm
folks, just how weird would it be to let arch code special-case
unmapping of the gate pseudo-vma?

--Andy
