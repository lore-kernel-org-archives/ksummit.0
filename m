Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 97089AEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 23:45:57 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[212.209.106.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9D0361FB51
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 23:45:56 +0000 (UTC)
From: "Bird, Tim" <Tim.Bird@sonymobile.com>
To: Dave Jones <davej@redhat.com>, Josh Triplett <josh@joshtriplett.org>
Date: Tue, 6 May 2014 01:45:52 +0200
Message-ID: <F5184659D418E34EA12B1903EE5EF5FDEE1B9D0108@seldmbx02.corpusers.net>
References: <20140502164438.GA1423@jtriplet-mobl1>,
	<20140502171103.GA725@redhat.com>
In-Reply-To: <20140502171103.GA725@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"al.stone@linaro.org" <al.stone@linaro.org>,
	Julia Lawall <julia.lawall@lip6.fr>, Darren Hart <darren@dvhart.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, May 02, 2014 10:11 AM, Dave Jones wrote:
>=20
> On Fri, May 02, 2014 at 09:44:42AM -0700, Josh Triplett wrote:
>=20
>  > Topics:
>  > - Kconfig, and avoiding excessive configurability in the pursuit of ti=
ny
>  > - Optimizing a kernel for its exact target userspace.
>  > - Examples of shrinking the kernel
>=20
> Something that's partially related here: Making stuff optional
> reduces attack surface the kernel presents. We're starting to grow
> more and more CONFIG options to disable syscalls. I'd like to hear
> peoples reactions on introducing even more optionality in this area.
>=20
> I first started thinking about this at LSF/MM where the subject of
> sys_remap_file_pages came up. "What even uses this?" "hardly anything".
> But for all the users that don't need it, there's this syscall always
> built in that does horrible things with VM internals.  It's fortunate
> that there hasn't been anything particularly awful beyond simple DoS
> bugs in r_f_p.
>=20
> Distribution kernels are in the sad position of having to always enable
> this stuff, but at least for people building their own kernels, or
> kernels for appliances, we could make their lives a little better by
> not even building this stuff in.
>=20
> I had a patch to make this particular syscall a cond_syscall, but then
> XFS ate my homework and I haven't had chance to revisit this.
> So, my questions are:
> - are there other obvious syscalls we could make optional without userspa=
ce
>   freaking out when they suddenly start getting ENOSYS ?
> - how much configurability here is too much ?
>   r_f_p was an obvious candidate because it's.. well, nasty.  Some of the
>   more straightforward syscalls may not be such a big deal, but then we
>   have CONFIG's for kcmp and other 'simple' syscalls already..
>=20
> thoughts?

For deeply embedded, I think a good technique is to fine-tune the syscalls =
to the exact set of programs
that will be run.  For my size research last year (See http://elinux.org/Sy=
stem_Size_Auto-Reduction
and http://elinux.org/images/9/9e/Bird-Kernel-Size-Optimization-LCJ-2013.pd=
f), I discussed
some results from doing the following:
 - scanning the all the binaries in the file system
 - generating a list of used and unused system calls
 - adding a kernel mechanism to eliminate any unused syscalls, at compile t=
ime
   (using LTO, all I had to do was make the syscall unreachable, and the co=
mpiler
   eliminated the calls automatically.  Some of the work was removing parts=
 of Andy Kleen's LTO
   patches which prevented unreferenced code from being optimized out.)

The syscalls were detected with a tool that scanned the program's assembly =
code on ARM,
and found all syscall sequences.  Binaries were statically linked for analy=
sis.

On a default-configured kernel, the system eliminated 161 syscalls, and sav=
ed about 95k.
On a minimally configured kernel, the system eliminated 120 syscalls, and s=
aved 48K.

The remaining syscalls for my minimal system consisting of busybox and a we=
b server
was 184 syscalls.  with additional coding and refactoring of the app and bu=
sybox, additional
syscalls could have been eliminated.

Some syscalls that were unused, still ended up hanging around due to a few =
funny references.
With some code refactoring, some additional savings might be possible.

Note that this system required no new kernel CONFIGs, and used macros to hi=
de most of the
complexity from the rest of the kernel source.

I did some other automatic code elimination techniques, with varying result=
s.  These can be seen
in the presentation.
 -- Tim

P.S. I realize this technique is not suitable for general-purpose distribut=
ions of Linux.
