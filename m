Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0447870A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 16:22:40 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2CFDA200D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 16:22:39 +0000 (UTC)
Date: Fri, 9 May 2014 09:22:29 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Dave Jones <davej@redhat.com>
Message-ID: <20140509162229.GB4152@thin>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
In-Reply-To: <20140502171103.GA725@redhat.com>
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
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


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 02, 2014 at 01:11:03PM -0400, Dave Jones wrote:
> On Fri, May 02, 2014 at 09:44:42AM -0700, Josh Triplett wrote:
>  
>  > Topics:
>  > - Kconfig, and avoiding excessive configurability in the pursuit of tiny
>  > - Optimizing a kernel for its exact target userspace.
>  > - Examples of shrinking the kernel
> 
> Something that's partially related here: Making stuff optional
> reduces attack surface the kernel presents. We're starting to grow
> more and more CONFIG options to disable syscalls. I'd like to hear
> peoples reactions on introducing even more optionality in this area.

I'd certainly like to see just about every syscall made optional, for
userspace that doesn't need it.  For specialized systems, that certainly
would decrease attack surface.  However, seccomp decreases attack
surface by the same amount, and for any except those specialized systems
that would make more sense, because the set of available syscalls can
then change with a simple policy change rather than a new kernel.

And this doesn't free us from the obligation to make all new APIs
secure against hostile userspace.

> I had a patch to make this particular syscall a cond_syscall, but then
> XFS ate my homework and I haven't had chance to revisit this.
> So, my questions are:
> - are there other obvious syscalls we could make optional without userspace
>   freaking out when they suddenly start getting ENOSYS ?

I've attached a complete list of the syscalls from
include/linux/syscalls.h that do not appear in kernel/sys_ni.c, and thus
always exist.  (syscalls.h notably does not include all the
arch-specific syscalls, some of which might make sense to leave out as
well.)

Of those, a few classes of syscalls that seem obvious, for various
classes of specialized or legacy-free systems:

- For any syscall updated to have a foo2, foo3, etc, a single config
  option to leave out all the older versions would make sense, to go
  with userspace that never calls the older versions.
- Likewise, the non-64 file calls.
- Likewise, sys_old*
- splice/vmsplice/tee.
- sys_*sync*
- sys_clock_* and any other time functions.
- sys_sched_*
- All signal-related syscalls
- rlimit syscalls
- sys_*xattr*
- sys_nice
- sys_cap{get,set}
- fadvise, fallocate, readahead, etc.
- uid/gid functions.
- ioperm/iopl
- ptrace
- sendfile
- times
- utimes and company

> - how much configurability here is too much ?
>   r_f_p was an obvious candidate because it's.. well, nasty.  Some of the
>   more straightforward syscalls may not be such a big deal, but then we
>   have CONFIG's for kcmp and other 'simple' syscalls already..

We need a more systematic mechanism, I think.  CONFIG_SYSCALL_FOO for
every possible FOO seems too much, even for classes of syscalls.
Ideally, we could feed in a table of syscalls collected by some
analysis of the target userspace, and the kernel will then have exactly
those syscalls.

- Josh Triplett

--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=syscalls-i

sys_access
sys_adjtimex
sys_alarm
sys_brk
sys_capget
sys_capset
sys_chdir
sys_chmod
sys_chown
sys_chroot
sys_clock_adjtime
sys_clock_getres
sys_clock_gettime
sys_clock_nanosleep
sys_clock_settime
sys_clone
sys_close
sys_creat
sys_dup
sys_dup2
sys_dup3
sys_execve
sys_exit
sys_exit_group
sys_faccessat
sys_fadvise64
sys_fadvise64_64
sys_fallocate
sys_fchdir
sys_fchmod
sys_fchmodat
sys_fchown
sys_fchownat
sys_fcntl
sys_fcntl64
sys_fdatasync
sys_fgetxattr
sys_flistxattr
sys_fork
sys_fremovexattr
sys_fsetxattr
sys_fstat
sys_fstat64
sys_fstatat64
sys_fstatfs
sys_fstatfs64
sys_fsync
sys_ftruncate
sys_ftruncate64
sys_futimesat
sys_getcpu
sys_getcwd
sys_getdents
sys_getdents64
sys_getegid
sys_geteuid
sys_getgid
sys_getgroups
sys_gethostname
sys_getitimer
sys_getpgid
sys_getpgrp
sys_getpid
sys_getppid
sys_getpriority
sys_getresgid
sys_getresuid
sys_getrlimit
sys_getrusage
sys_getsid
sys_gettid
sys_gettimeofday
sys_getuid
sys_getxattr
sys_ioctl
sys_ioperm
sys_kill
sys_lchown
sys_lgetxattr
sys_link
sys_linkat
sys_listxattr
sys_llistxattr
sys_llseek
sys_lremovexattr
sys_lseek
sys_lsetxattr
sys_lstat
sys_lstat64
sys_mkdir
sys_mkdirat
sys_mknod
sys_mknodat
sys_mmap_pgoff
sys_mount
sys_munmap
sys_nanosleep
sys_newfstat
sys_newfstatat
sys_newlstat
sys_newstat
sys_newuname
sys_ni_syscall
sys_nice
sys_old_getrlimit
sys_old_mmap
sys_old_readdir
sys_old_select
sys_oldumount
sys_olduname
sys_open
sys_openat
sys_pause
sys_personality
sys_pipe
sys_pipe2
sys_pivot_root
sys_poll
sys_ppoll
sys_prctl
sys_pread64
sys_preadv
sys_prlimit64
sys_pselect6
sys_ptrace
sys_pwrite64
sys_pwritev
sys_read
sys_readahead
sys_readlink
sys_readlinkat
sys_readv
sys_reboot
sys_removexattr
sys_rename
sys_renameat
sys_renameat2
sys_restart_syscall
sys_rmdir
sys_rt_sigaction
sys_rt_sigpending
sys_rt_sigprocmask
sys_rt_sigqueueinfo
sys_rt_sigsuspend
sys_rt_sigtimedwait
sys_rt_tgsigqueueinfo
sys_sched_get_priority_max
sys_sched_get_priority_min
sys_sched_getaffinity
sys_sched_getattr
sys_sched_getparam
sys_sched_getscheduler
sys_sched_rr_get_interval
sys_sched_setaffinity
sys_sched_setattr
sys_sched_setparam
sys_sched_setscheduler
sys_sched_yield
sys_select
sys_sendfile
sys_sendfile64
sys_set_tid_address
sys_setdomainname
sys_setfsgid
sys_setfsuid
sys_setgid
sys_setgroups
sys_sethostname
sys_setitimer
sys_setns
sys_setpgid
sys_setpriority
sys_setregid
sys_setresgid
sys_setresuid
sys_setreuid
sys_setrlimit
sys_setsid
sys_settimeofday
sys_setuid
sys_setxattr
sys_sgetmask
sys_sigaction
sys_sigaltstack
sys_signal
sys_sigpending
sys_sigprocmask
sys_sigsuspend
sys_splice
sys_ssetmask
sys_stat
sys_stat64
sys_statfs
sys_statfs64
sys_stime
sys_symlink
sys_symlinkat
sys_sync
sys_sync_file_range
sys_sync_file_range2
sys_syncfs
sys_sysctl
sys_sysinfo
sys_tee
sys_tgkill
sys_time
sys_timer_create
sys_timer_delete
sys_timer_getoverrun
sys_timer_gettime
sys_timer_settime
sys_times
sys_tkill
sys_truncate
sys_truncate64
sys_umask
sys_umount
sys_uname
sys_unlink
sys_unlinkat
sys_unshare
sys_ustat
sys_utime
sys_utimensat
sys_utimes
sys_vfork
sys_vhangup
sys_vmsplice
sys_wait4
sys_waitid
sys_waitpid
sys_write
sys_writev

--3MwIy2ne0vdjdPXF--
