Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A4B5956
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 00:12:05 +0000 (UTC)
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DF229183
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 00:12:03 +0000 (UTC)
Received: by mail-ua0-f173.google.com with SMTP id 35so186419052uap.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 04 Aug 2016 17:12:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGXu5j+v7W+kySsmbpkn4NJL=oxvoa6ZFQEg0Txvz5EYOP8cUQ@mail.gmail.com>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
	<3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
	<CAGXu5jKZb60=3H8faOG53Aq7H3MeST7_syionmFCE2HQFOG8SA@mail.gmail.com>
	<0E98DCC5-01EE-4FA7-B6D4-72772279BDFF@arm.com>
	<CAGXu5jL085S-feY_uy68tCMZwOHcg5QPzyE0eXiJviqCwau90g@mail.gmail.com>
	<CALCETrVvXWN3q41RvR1-AN86HrNGXk3xv2uneXBO98TrB3JdaA@mail.gmail.com>
	<CAGXu5j+v7W+kySsmbpkn4NJL=oxvoa6ZFQEg0Txvz5EYOP8cUQ@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Thu, 4 Aug 2016 17:12:01 -0700
Message-ID: <CALCETrU0sFW7Zy3UVBXU9REvecYKuPTVR8-XTFfjUwETUKeNxA@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Content-Type: multipart/alternative; boundary=94eb2c1252907c8dec053947ea88
Cc: Jann Horn <jann@thejh.net>, Dave Hansen <dave.hansen@linux.intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
	whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--94eb2c1252907c8dec053947ea88
Content-Type: text/plain; charset=UTF-8

On Aug 3, 2016 10:54 PM, "Kees Cook" <keescook@chromium.org> wrote:
>
> On Wed, Aug 3, 2016 at 10:45 PM, Andy Lutomirski <luto@amacapital.net>
wrote:
> > On Wed, Aug 3, 2016 at 10:32 PM, Kees Cook <keescook@chromium.org>
wrote:
> >> On Wed, Aug 3, 2016 at 3:53 PM, Catalin Marinas <
catalin.marinas@arm.com> wrote:
> >>> On 1 Aug 2016, at 00:05, Kees Cook <keescook@chromium.org> wrote:
> >>>> On Sun, Jul 31, 2016 at 2:55 AM, Paul Burton <paul.burton@imgtec.com>
wrote:
> >>>>> It would be very interesting to discuss what's needed from arch
code for
> >>>>> various hardening features, both those currently in mainline &
those in
> >>>>> development.
> >>>
> >>> I'm interested in such topic as well, primarily from an arm/arm64
perspective.
> >>>
> >>>> - Handling userspace/kernelspace memory segregation. (This is the
SMAP
> >>>> of x86, PAN of ARM, and just native on s390.) For architectures (or
> >>>> chipsets within an architecture) that don't support unprivileged
> >>>> memory access restrictions in hardware, we must find a way to emulate
> >>>> it. (e.g. 32-bit ARM uses Domains, and 64-bit x86 could use PCIDs,
> >>>> etc.) Keeping these regions separate is extremely important in
> >>>> stopping exploitation.
> >>>
> >>> For arm64 ARMv8.0 (without hardware PAN), I'm going to post a patch
> >>> in a week or so which emulates PAN by switching the user page table
(TTBR0)
> >>> to the zero page. I guess a similar approach could work for other
architectures,
> >>> maybe using swapper_pg_dir as the PAN page table.
> >>
> >> At least on x86 I've heard grumblings that it can be prohibitively
> >> expensive due to TLB-flushing, but I'd still like to see an
> >> implementation doing it first. :)
> >
> > No TLB flush needed if we use PCID.  Linus will attack you with a
> > pitchfork either way, though :)
>
> Hmm, my asbestos suit won't help me there. I will need to invest in
titanium. :)
>
> The TLB flushing way I can understand being pitchfork-worthy, though
> I'm curious why a PCID implementation would be upsetting?

I think the problem is the page table switch, not the PCID.

>
> > It shouldn't be *that* hard to build this thing on top of my PCID
> > patchset.  I need to dust that off, which I'll do right after vmap
> > stacks land and I finish fsgsbase.  Sigh, so many things.
>
> What does your PCID series do?

It uses PCID for what it looks like it was designed for: faster context
switches.

AFAICT it was actually designed for user/kernel switching on Mac OS X,
which, if true, would explain some design oddities.

--94eb2c1252907c8dec053947ea88
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">On Aug 3, 2016 10:54 PM, &quot;Kees Cook&quot; &lt;<a href=
=3D"mailto:keescook@chromium.org">keescook@chromium.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, Aug 3, 2016 at 10:45 PM, Andy Lutomirski &lt;<a href=3D"mailto=
:luto@amacapital.net">luto@amacapital.net</a>&gt; wrote:<br>
&gt; &gt; On Wed, Aug 3, 2016 at 10:32 PM, Kees Cook &lt;<a href=3D"mailto:=
keescook@chromium.org">keescook@chromium.org</a>&gt; wrote:<br>
&gt; &gt;&gt; On Wed, Aug 3, 2016 at 3:53 PM, Catalin Marinas &lt;<a href=
=3D"mailto:catalin.marinas@arm.com">catalin.marinas@arm.com</a>&gt; wrote:<=
br>
&gt; &gt;&gt;&gt; On 1 Aug 2016, at 00:05, Kees Cook &lt;<a href=3D"mailto:=
keescook@chromium.org">keescook@chromium.org</a>&gt; wrote:<br>
&gt; &gt;&gt;&gt;&gt; On Sun, Jul 31, 2016 at 2:55 AM, Paul Burton &lt;<a h=
ref=3D"mailto:paul.burton@imgtec.com">paul.burton@imgtec.com</a>&gt; wrote:=
<br>
&gt; &gt;&gt;&gt;&gt;&gt; It would be very interesting to discuss what&#39;=
s needed from arch code for<br>
&gt; &gt;&gt;&gt;&gt;&gt; various hardening features, both those currently =
in mainline &amp; those in<br>
&gt; &gt;&gt;&gt;&gt;&gt; development.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; I&#39;m interested in such topic as well, primarily from =
an arm/arm64 perspective.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; - Handling userspace/kernelspace memory segregation. =
(This is the SMAP<br>
&gt; &gt;&gt;&gt;&gt; of x86, PAN of ARM, and just native on s390.) For arc=
hitectures (or<br>
&gt; &gt;&gt;&gt;&gt; chipsets within an architecture) that don&#39;t suppo=
rt unprivileged<br>
&gt; &gt;&gt;&gt;&gt; memory access restrictions in hardware, we must find =
a way to emulate<br>
&gt; &gt;&gt;&gt;&gt; it. (e.g. 32-bit ARM uses Domains, and 64-bit x86 cou=
ld use PCIDs,<br>
&gt; &gt;&gt;&gt;&gt; etc.) Keeping these regions separate is extremely imp=
ortant in<br>
&gt; &gt;&gt;&gt;&gt; stopping exploitation.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; For arm64 ARMv8.0 (without hardware PAN), I&#39;m going t=
o post a patch<br>
&gt; &gt;&gt;&gt; in a week or so which emulates PAN by switching the user =
page table (TTBR0)<br>
&gt; &gt;&gt;&gt; to the zero page. I guess a similar approach could work f=
or other architectures,<br>
&gt; &gt;&gt;&gt; maybe using swapper_pg_dir as the PAN page table.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; At least on x86 I&#39;ve heard grumblings that it can be proh=
ibitively<br>
&gt; &gt;&gt; expensive due to TLB-flushing, but I&#39;d still like to see =
an<br>
&gt; &gt;&gt; implementation doing it first. :)<br>
&gt; &gt;<br>
&gt; &gt; No TLB flush needed if we use PCID.=C2=A0 Linus will attack you w=
ith a<br>
&gt; &gt; pitchfork either way, though :)<br>
&gt;<br>
&gt; Hmm, my asbestos suit won&#39;t help me there. I will need to invest i=
n titanium. :)<br>
&gt;<br>
&gt; The TLB flushing way I can understand being pitchfork-worthy, though<b=
r>
&gt; I&#39;m curious why a PCID implementation would be upsetting?</p>
<p dir=3D"ltr">I think the problem is the page table switch, not the PCID.<=
/p>
<p dir=3D"ltr">&gt;<br>
&gt; &gt; It shouldn&#39;t be *that* hard to build this thing on top of my =
PCID<br>
&gt; &gt; patchset.=C2=A0 I need to dust that off, which I&#39;ll do right =
after vmap<br>
&gt; &gt; stacks land and I finish fsgsbase.=C2=A0 Sigh, so many things.<br=
>
&gt;<br>
&gt; What does your PCID series do?</p>
<p dir=3D"ltr">It uses PCID for what it looks like it was designed for: fas=
ter context switches.</p>
<p dir=3D"ltr">AFAICT it was actually designed for user/kernel switching on=
 Mac OS X, which, if true, would explain some design oddities.</p>

--94eb2c1252907c8dec053947ea88--
