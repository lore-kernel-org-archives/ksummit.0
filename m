Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C1E85C96
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Jan 2017 01:10:42 +0000 (UTC)
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 093D4210
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Jan 2017 01:10:41 +0000 (UTC)
Received: by mail-vk0-f65.google.com with SMTP id 23so7289516vkc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Jan 2017 17:10:41 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
	<CALCETrVKDAzcS62wTjDOGuRUNec_a-=8iEa7QQ62V83Ce2nk=A@mail.gmail.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Fri, 20 Jan 2017 20:10:40 -0500
Message-ID: <CAFhKne_PFCKp_cAUfjYtaf=OG_Ya4RYY3Om_NWDHmcVZmqL47Q@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: multipart/alternative; boundary=001a114388cc5e17070546906ff1
Cc: Josh Armour <jarmour@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] security-related TODO items?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a114388cc5e17070546906ff1
Content-Type: text/plain; charset=UTF-8

[I swear Gmail used to have a "reply inline" option in the app]

Maybe we really want a "call this kernel function with user privilege"
ability? Such a function would be able to access only user space memory
(via get_user/...) and its own stack (all hail vmap).

All the compat code would benefit, and maybe some upper layers of ioctl
handling. Perhaps some of the filesystem parsing code would do well in this
kind of constrained environment, but it might need access to so much other
stuff we'd end up diluting the utility.

On Jan 20, 2017 19:23, "Andy Lutomirski" <luto@amacapital.net> wrote:

This is not easy at all, but: how about rewriting execve() so that the
actual binary format parsers run in user mode?

A minor one for x86: give binaries a way to opt out of the x86_64
vsyscall page.  I already did the hard part (in a branch), so all
that's really left is figuring out the ABI.

On Fri, Jan 20, 2017 at 2:38 PM, Kees Cook <keescook@chromium.org> wrote:
> Hi,
>
> I've already got various Kernel Self-Protection Project TODO items
> collected[1] (of varying size and complexity), but recently Google's
> Patch Reward Program[2] is trying to expand by helping create a bounty
> program for security-related TODOs. KSPP is just one corner of
> interest in the kernel, and I'd love to know if any other maintainers
> have TODO items that they'd like to see get done (and Google would
> potentially provide bounty money for).
>
> Let me know your security wish-lists, and I'll collect them all into a
> single place. And if there is a better place than ksummit-discuss to
> reach maintainers, I'm all ears. LKML tends to mostly just serve as a
> public archive. :)
>
> Thanks!
>
> -Kees
>
> [1] http://kernsec.org/wiki/index.php/Kernel_Self_Protection_
Project#Specific_TODO_Items
> [2] https://www.google.com/about/appsecurity/patch-rewards/
>
> --
> Kees Cook
> Nexus Security
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



--
Andy Lutomirski
AMA Capital Management, LLC
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--001a114388cc5e17070546906ff1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>[I swear Gmail used to have a &quot;reply inline&quo=
t; option in the app]</div><div dir=3D"auto"><br></div><div dir=3D"auto">Ma=
ybe we really want a &quot;call this kernel function with user privilege&qu=
ot; ability? Such a function would be able to access only user space memory=
 (via get_user/...) and its own stack (all hail vmap).</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">All the compat code would benefit, and maybe=
 some upper layers of ioctl handling. Perhaps some of the filesystem parsin=
g code would do well in this kind of constrained environment, but it might =
need access to so much other stuff we&#39;d end up diluting the utility.<br=
><div class=3D"gmail_extra" dir=3D"auto"><br><div class=3D"gmail_quote">On =
Jan 20, 2017 19:23, &quot;Andy Lutomirski&quot; &lt;<a href=3D"mailto:luto@=
amacapital.net">luto@amacapital.net</a>&gt; wrote:<br type=3D"attribution">=
<blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">This is not easy at all, but: how about rewriting =
execve() so that the<br>
actual binary format parsers run in user mode?<br><br>
A minor one for x86: give binaries a way to opt out of the x86_64<br>
vsyscall page.=C2=A0 I already did the hard part (in a branch), so all<br>
that&#39;s really left is figuring out the ABI.<br>
<div class=3D"elided-text"><br>
On Fri, Jan 20, 2017 at 2:38 PM, Kees Cook &lt;<a href=3D"mailto:keescook@c=
hromium.org">keescook@chromium.org</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;ve already got various Kernel Self-Protection Project TODO items=
<br>
&gt; collected[1] (of varying size and complexity), but recently Google&#39=
;s<br>
&gt; Patch Reward Program[2] is trying to expand by helping create a bounty=
<br>
&gt; program for security-related TODOs. KSPP is just one corner of<br>
&gt; interest in the kernel, and I&#39;d love to know if any other maintain=
ers<br>
&gt; have TODO items that they&#39;d like to see get done (and Google would=
<br>
&gt; potentially provide bounty money for).<br>
&gt;<br>
&gt; Let me know your security wish-lists, and I&#39;ll collect them all in=
to a<br>
&gt; single place. And if there is a better place than ksummit-discuss to<b=
r>
&gt; reach maintainers, I&#39;m all ears. LKML tends to mostly just serve a=
s a<br>
&gt; public archive. :)<br>
&gt;<br>
&gt; Thanks!<br>
&gt;<br>
&gt; -Kees<br>
&gt;<br>
&gt; [1] <a href=3D"http://kernsec.org/wiki/index.php/Kernel_Self_Protectio=
n_Project#Specific_TODO_Items" rel=3D"noreferrer" target=3D"_blank">http://=
kernsec.org/wiki/index.<wbr>php/Kernel_Self_Protection_<wbr>Project#Specifi=
c_TODO_Items</a><br>
&gt; [2] <a href=3D"https://www.google.com/about/appsecurity/patch-rewards/=
" rel=3D"noreferrer" target=3D"_blank">https://www.google.com/about/<wbr>ap=
psecurity/patch-rewards/</a><br>
&gt;<br>
&gt; --<br>
&gt; Kees Cook<br>
&gt; Nexus Security<br>
&gt; ______________________________<wbr>_________________<br>
&gt; Ksummit-discuss mailing list<br>
&gt; <a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org">Ksummit-d=
iscuss@lists.<wbr>linuxfoundation.org</a><br>
&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-=
discuss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation=
.<wbr>org/mailman/listinfo/ksummit-<wbr>discuss</a><br>
<br>
<br>
<br>
</div><font color=3D"#888888">--<br>
Andy Lutomirski<br>
AMA Capital Management, LLC<br>
</font><div class=3D"elided-text">______________________________<wbr>______=
___________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org">Ksummit-discus=
s@lists.<wbr>linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation.<wbr=
>org/mailman/listinfo/ksummit-<wbr>discuss</a><br>
</div></blockquote></div><br></div></div></div>

--001a114388cc5e17070546906ff1--
