Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1EDBA9C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 16:59:21 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[212.209.106.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5CBA720331
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 16:59:20 +0000 (UTC)
From: "Bird, Tim" <Tim.Bird@sonymobile.com>
To: Josh Triplett <josh@joshtriplett.org>, Dave Jones <davej@redhat.com>
Date: Fri, 9 May 2014 18:59:16 +0200
Message-ID: <F5184659D418E34EA12B1903EE5EF5FDEE1B9D0114@seldmbx02.corpusers.net>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>,<20140509162229.GB4152@thin>
In-Reply-To: <20140509162229.GB4152@thin>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
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

On Friday, May 09, 2014 9:22 AM Josh Triplett wrote:
>=20
> On Fri, May 02, 2014 at 01:11:03PM -0400, Dave Jones wrote:
> > On Fri, May 02, 2014 at 09:44:42AM -0700, Josh Triplett wrote:
> >
> >  > Topics:
> >  > - Kconfig, and avoiding excessive configurability in the pursuit of =
tiny
> >  > - Optimizing a kernel for its exact target userspace.
> >  > - Examples of shrinking the kernel
> >
> > Something that's partially related here: Making stuff optional
> > reduces attack surface the kernel presents. We're starting to grow
> > more and more CONFIG options to disable syscalls. I'd like to hear
> > peoples reactions on introducing even more optionality in this area.
>=20
> I'd certainly like to see just about every syscall made optional, for
> userspace that doesn't need it.  For specialized systems, that certainly
> would decrease attack surface.  However, seccomp decreases attack
> surface by the same amount, and for any except those specialized systems
> that would make more sense, because the set of available syscalls can
> then change with a simple policy change rather than a new kernel.
>=20
> And this doesn't free us from the obligation to make all new APIs
> secure against hostile userspace.
>=20
> > I had a patch to make this particular syscall a cond_syscall, but then
> > XFS ate my homework and I haven't had chance to revisit this.
> > So, my questions are:
> > - are there other obvious syscalls we could make optional without users=
pace
> >   freaking out when they suddenly start getting ENOSYS ?
>=20
> I've attached a complete list of the syscalls from
> include/linux/syscalls.h that do not appear in kernel/sys_ni.c, and thus
> always exist.  (syscalls.h notably does not include all the
> arch-specific syscalls, some of which might make sense to leave out as
> well.)
>=20
> Of those, a few classes of syscalls that seem obvious, for various
> classes of specialized or legacy-free systems:
>=20
> - For any syscall updated to have a foo2, foo3, etc, a single config
>   option to leave out all the older versions would make sense, to go
>   with userspace that never calls the older versions.
> - Likewise, the non-64 file calls.
> - Likewise, sys_old*
> - splice/vmsplice/tee.
> - sys_*sync*
> - sys_clock_* and any other time functions.
> - sys_sched_*
> - All signal-related syscalls
> - rlimit syscalls
> - sys_*xattr*
> - sys_nice
> - sys_cap{get,set}
> - fadvise, fallocate, readahead, etc.
> - uid/gid functions.
> - ioperm/iopl
> - ptrace
> - sendfile
> - times
> - utimes and company
>=20
> > - how much configurability here is too much ?
> >   r_f_p was an obvious candidate because it's.. well, nasty.  Some of t=
he
> >   more straightforward syscalls may not be such a big deal, but then we
> >   have CONFIG's for kcmp and other 'simple' syscalls already..
>=20
> We need a more systematic mechanism, I think.  CONFIG_SYSCALL_FOO for
> every possible FOO seems too much, even for classes of syscalls.
> Ideally, we could feed in a table of syscalls collected by some
> analysis of the target userspace, and the kernel will then have exactly
> those syscalls.

In my system, I set it up so that every syscall had it's own
SYSCALL_DEFINE macro. and then used a single header file
consisting of lines like:
#define syscall_setreuid16_unused 1

The SYSCALL_DEFINE macros would then control whether the
syscall was extern'ed or not.  A separate mechanism converted
the CALL macro in calls.S (on ARM) to use sys_ni_syscall, and
LTO made the (now unreferenced) function evaporate.

Overall, this allowed control of every syscall with a single easily
generated (or easily hand-edited) header file.  And, with a stub
header file, everything worked as without the changes.

The header file was auto-generated by tools that scanned the
user-space programs for all possible syscall sequences.

In hindsight this system could probably be improved with some
extra tweaking to the base SYSCALL_DEFINE macros, to make
it so no source changes were required at the function definition sites.

In any event, it's possible to get per-syscall granularity without
having to add new CONFIGS (but at the expense of adding a generated
header file).
 -- Tim
