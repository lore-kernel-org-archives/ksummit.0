Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 703AABC0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 20:59:11 +0000 (UTC)
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B2A1F141
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 20:59:10 +0000 (UTC)
Received: by mail-vk0-f65.google.com with SMTP id t8so12153407vke.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 12:59:10 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <5024.1485203788@warthog.procyon.org.uk>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
	<31033.1485168526@warthog.procyon.org.uk>
	<CALCETrV5b4Z3MF51pQOPtp-BgMM4TYPLrXPHL+EfsWfm+CczkA@mail.gmail.com>
	<5024.1485203788@warthog.procyon.org.uk>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Mon, 23 Jan 2017 15:59:09 -0500
Message-ID: <CAFhKne8+cuH6vsu1JqRt5i=yMGH1Qv_RLJf07vQhkxUU-ajS1Q@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Content-Type: multipart/alternative; boundary=001a1143ff386163b90546c94530
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Josh Armour <jarmour@google.com>,
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

--001a1143ff386163b90546c94530
Content-Type: text/plain; charset=UTF-8

Why put it in the user address space? As I said earlier in this thread, we
want the facility to run code from kernel addresses in user mode, limited
to only being able to access its own stack and the user addresses. Of
course it should also be able to make syscalls, like mmap.

On Jan 23, 2017 3:36 PM, "David Howells" <dhowells@redhat.com> wrote:

> Andy Lutomirski <luto@amacapital.net> wrote:
>
> > >  (1) You'd need at least one pre-loader binary image built into the
> kernel
> > >      that you can map into userspace (you can't upcall to userspace to
> go get
> > >      it for your core binfmt).  This could appear as, say,
> /proc/preloader,
> > >      for the kernel to open and mmap.
> >
> > No need for it to be visible at all.  I'm imagining the kernel making
> > a fresh mm_struct, directly mapping some text, running that text, and
> > then using the result as the mm_struct after execve.
>
> What would you see in /proc/pid/maps?
>
> > >  (2) Where would the kernel put the executable image?  It would have to
> > >      parse the binary to find out where not to put it - otherwise the
> code
> > >      might have to relocate itself.
> >
> > In vmlinux.
>
> You misunderstood the question.  I meant at what address would you map it
> into
> userspace?  You would have to avoid anywhere the executable needs to place
> something - though as long as you can manage to start the loader, you can
> ditch the pre-loader, so that might not be a problem.
>
> > >  (6) NOMMU could be particularly tricky.  For ELF-FDPIC at least, the
> stack
> > >      size is set in the binary.  OTOH, you wouldn't have to relocate
> the
> > >      pre-loader - you'd just mmap it MAP_PRIVATE and execute in place.
> >
> > For nommu, forget about it.
>
> Why?  If you do that, you have to have bimodal binfmts.  Note that the
> ELF-FDPIC binfmt, at least, can be used for both MMU and NOMMU
> environments.
> This may also be true of FLAT.
>
> > >  (7) When the kernel finds it's dealing with a script, it goes back
> through
> > >      the security calculation procedure again to deal with the
> interpreter.
> >
> > The security calculation isn't what I'm worried about.  I'm worried
> > about the parser.
>
> But you may have to redo the security calculation *after* doing the
> parsing.
>
> > Anyway, I didn't say this would be easy :)
>
> True... :-)
>
> David
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--001a1143ff386163b90546c94530
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Why put it in the user address space? As I said earlier i=
n this thread, we want the facility to run code from kernel addresses in us=
er mode, limited to only being able to access its own stack and the user ad=
dresses. Of course it should also be able to make syscalls, like mmap.</div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Jan 23, 2017 =
3:36 PM, &quot;David Howells&quot; &lt;<a href=3D"mailto:dhowells@redhat.co=
m">dhowells@redhat.com</a>&gt; wrote:<br type=3D"attribution"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">Andy Lutomirski &lt;<a href=3D"mailto:luto@amacapital.net=
">luto@amacapital.net</a>&gt; wrote:<br>
<br>
&gt; &gt;=C2=A0 (1) You&#39;d need at least one pre-loader binary image bui=
lt into the kernel<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 that you can map into userspace (you can&#39;=
t upcall to userspace to go get<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 it for your core binfmt).=C2=A0 This could ap=
pear as, say, /proc/preloader,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 for the kernel to open and mmap.<br>
&gt;<br>
&gt; No need for it to be visible at all.=C2=A0 I&#39;m imagining the kerne=
l making<br>
&gt; a fresh mm_struct, directly mapping some text, running that text, and<=
br>
&gt; then using the result as the mm_struct after execve.<br>
<br>
What would you see in /proc/pid/maps?<br>
<br>
&gt; &gt;=C2=A0 (2) Where would the kernel put the executable image?=C2=A0 =
It would have to<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 parse the binary to find out where not to put=
 it - otherwise the code<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 might have to relocate itself.<br>
&gt;<br>
&gt; In vmlinux.<br>
<br>
You misunderstood the question.=C2=A0 I meant at what address would you map=
 it into<br>
userspace?=C2=A0 You would have to avoid anywhere the executable needs to p=
lace<br>
something - though as long as you can manage to start the loader, you can<b=
r>
ditch the pre-loader, so that might not be a problem.<br>
<br>
&gt; &gt;=C2=A0 (6) NOMMU could be particularly tricky.=C2=A0 For ELF-FDPIC=
 at least, the stack<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 size is set in the binary.=C2=A0 OTOH, you wo=
uldn&#39;t have to relocate the<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 pre-loader - you&#39;d just mmap it MAP_PRIVA=
TE and execute in place.<br>
&gt;<br>
&gt; For nommu, forget about it.<br>
<br>
Why?=C2=A0 If you do that, you have to have bimodal binfmts.=C2=A0 Note tha=
t the<br>
ELF-FDPIC binfmt, at least, can be used for both MMU and NOMMU environments=
.<br>
This may also be true of FLAT.<br>
<br>
&gt; &gt;=C2=A0 (7) When the kernel finds it&#39;s dealing with a script, i=
t goes back through<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 the security calculation procedure again to d=
eal with the interpreter.<br>
&gt;<br>
&gt; The security calculation isn&#39;t what I&#39;m worried about.=C2=A0 I=
&#39;m worried<br>
&gt; about the parser.<br>
<br>
But you may have to redo the security calculation *after* doing the parsing=
.<br>
<br>
&gt; Anyway, I didn&#39;t say this would be easy :)<br>
<br>
True... :-)<br>
<br>
David<br>
______________________________<wbr>_________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org">Ksummit-discus=
s@lists.<wbr>linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation.<wbr=
>org/mailman/listinfo/ksummit-<wbr>discuss</a><br>
</blockquote></div></div>

--001a1143ff386163b90546c94530--
