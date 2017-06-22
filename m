Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EC30F49F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 16:35:14 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DD631D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 16:35:14 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20170619052146.GA2889@jagdpanzerIV.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <17315.1498149311.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Jun 2017 17:35:11 +0100
Message-ID: <17316.1498149311@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:

> 	I, Petr Mladek and Steven Rostedt would like to propose a printk
> tech topic (as suggested by Steven). We are currently exploring the idea
> of complete redesign and rework of printk and it would be extremely help=
ful
> to hear from the community. printk serves different purposes, and some o=
f
> requirements of printk tend to contradict each other; printk is monolith=
ic
> and quite heavy, no wonder, it causes problems sometimes.

One thing I've been looking at is improving mount by creating a context in=
 the
kernel that can be used to allow better parameter passing to the kernel - =
and
*also* better passage of error information back to userspace rather than
dumping it in dmesg.

I originally put a supplementary error message buffer in the aforementione=
d
context, but then moved it to task_struct so that I could pass error messa=
ge
from nfs4 mount (which uses a pathwalk over submounts inside its mount) an=
d
automount.  However, putting it in the task_struct makes it more generally
available.

Attached is the supplementary error message patch that I've implemented.  =
It
only allows for one message at a time at the moment - and must be enabled =
by a
process to work for that process.

See:

	Subject: [RFC][PATCH 00/27] VFS: Introduce filesystem context [ver #5]

posted to LKML, linux-nfs, linux-fsdevel and linux-security-module on Jun
14th to see it being used.

I should note that Al thinks that it's not a good idea because it's generi=
c.

David
---
commit 44e890888ad8fb6f605abc66bcc0948580834eba
Author: David Howells <dhowells@redhat.com>
Date:   Thu Jun 8 16:07:08 2017 +0100

    Provide supplementary error message facility
    =

    Provide a way for the kernel to pass supplementary error messages to
    userspace.  This will make it easier for userspace, particularly in
    containers to find out what went wrong during mounts and automounts, b=
ut is
    also made available to any other syscalls that want to use it.
    =

    Two prctl() functions are added for this:
    =

     (1) int old_setting =3D prctl(PR_ERRMSG_ENABLE, int setting);
    =

         Enable (setting =3D=3D 1) or disable (setting =3D=3D 0) the facil=
ity.
         Disabling the facility clears the error buffer.
    =

     (2) int size =3D prctl(PR_ERRMSG_READ, char *buffer, int buf_size);
    =

         Reads the next error string into the buffer.  The string is trunc=
ated
         if it won't fit.  Strings are discarded as they're read.
    =

         If there isn't a string, ENODATA is indicated.
    =

    I've done it this way rather than a proc file because procfs might not=
 be
    accessible.
    =

    The interface inside the kernel is a pair of macros:
    =

     (*) void errorf(const char *fmt, ...);
     (*) int invalf(const char *fmt, ...);
    =

    Both of them snprintf() the string into the current process's error me=
ssage
    buffer if the facility is enabled.  The string is truncated if it exce=
eds
    the limit.  invalf() returns -EINVAL whereas errof() has no return.
    =

    Note that this is very crude and could be made to store multiple strin=
gs,
    allocate storage as required and not duplicate unformatted strings tha=
t are
    stored in the rodata section (like kvasprintf_const).  Unfortunately,
    specially handling rodata strings wouldn't gain a lot as most strings =
are
    likely to be in modules, where the string's life can be terminated by
    rmmod.
    =

    Signed-off-by: David Howells <dhowells@redhat.com>

diff --git a/include/linux/sched.h b/include/linux/sched.h
index 2b69fc650201..a6002b60b0b9 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -1051,6 +1051,8 @@ struct task_struct {
 	/* Used by LSM modules for access restriction: */
 	void				*security;
 #endif
+#define ERROR_MSG_SIZE 256
+	char				*error_msg;
 	/* CPU-specific state of this task: */
 	struct thread_struct		thread;
 =

@@ -1573,4 +1575,31 @@ extern long sched_getaffinity(pid_t pid, struct cpu=
mask *mask);
 #define TASK_SIZE_OF(tsk)	TASK_SIZE
 #endif
 =

+/**
+ * errorf - Store supplementary error message
+ * @fmt: The format string
+ *
+ * Store the supplementary error message for the process if the process h=
as
+ * enabled the facility.
+ */
+#define errorf(fmt, ...)			\
+	do {					\
+		if (current->error_msg)					\
+			snprintf(current->error_msg, ERROR_MSG_SIZE, fmt, ## __VA_ARGS__); \
+	} while(0)
+
+/**
+ * invalf - Store supplementary invalid argument error message
+ * @fmt: The format string
+ *
+ * Store the supplementary error message for the process if the process h=
as
+ * enabled the facility and return -EINVAL.
+ */
+#define invalf(fmt, ...)			\
+	({					\
+		errorf(fmt, ## __VA_ARGS__);	\
+		-EINVAL;			\
+	})
+
+
 #endif
diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
index a8d0759a9e40..b1203850dac8 100644
--- a/include/uapi/linux/prctl.h
+++ b/include/uapi/linux/prctl.h
@@ -197,4 +197,10 @@ struct prctl_mm_map {
 # define PR_CAP_AMBIENT_LOWER		3
 # define PR_CAP_AMBIENT_CLEAR_ALL	4
 =

+/*
+ * Control the supplementary error message gathering facility.
+ */
+#define PR_ERRMSG_ENABLE		48
+#define PR_ERRMSG_READ			49
+
 #endif /* _LINUX_PRCTL_H */
diff --git a/kernel/exit.c b/kernel/exit.c
index 516acdb0e0ec..31b8617aee04 100644
--- a/kernel/exit.c
+++ b/kernel/exit.c
@@ -932,6 +932,7 @@ void __noreturn do_exit(long code)
 		__this_cpu_add(dirty_throttle_leaks, tsk->nr_dirtied);
 	exit_rcu();
 	TASKS_RCU(__srcu_read_unlock(&tasks_rcu_exit_srcu, tasks_rcu_i));
+	kfree(tsk->error_msg);
 =

 	do_task_dead();
 }
diff --git a/kernel/fork.c b/kernel/fork.c
index e53770d2bf95..177b4c82fcb9 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -1912,6 +1912,7 @@ static __latent_entropy struct task_struct *copy_pro=
cess(
 =

 	trace_task_newtask(p, clone_flags);
 	uprobe_copy_process(p, clone_flags);
+	p->error_msg =3D NULL;
 =

 	return p;
 =

diff --git a/kernel/sys.c b/kernel/sys.c
index 8a94b4eabcaa..b784905c4806 100644
--- a/kernel/sys.c
+++ b/kernel/sys.c
@@ -2295,6 +2295,44 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, =
arg2, unsigned long, arg3,
 	case PR_GET_FP_MODE:
 		error =3D GET_FP_MODE(me);
 		break;
+
+	case PR_ERRMSG_ENABLE:
+		switch (arg2) {
+		case 0:
+			if (!current->error_msg)
+				return 0;
+			kfree(current->error_msg);
+			current->error_msg =3D NULL;
+			return 1;
+		case 1:
+			if (current->error_msg)
+				return 1;
+			current->error_msg =3D kmalloc(ERROR_MSG_SIZE, GFP_KERNEL);
+			if (!current->error_msg)
+				return -ENOMEM;
+			current->error_msg[0] =3D 0;
+			return 0;
+		default:
+			error =3D -EINVAL;
+			break;
+		}
+		break;
+
+	case PR_ERRMSG_READ:
+		if (!arg2 || !arg3)
+			return -EINVAL;
+		if (!current->error_msg)
+			return -EINVAL;
+		if (!current->error_msg[0])
+			return -ENODATA;
+		error =3D strlen(current->error_msg);
+		if (arg3 < error)
+			error =3D arg3;
+		if (copy_to_user((char __user *)arg2, current->error_msg, error))
+			return -EFAULT;
+		current->error_msg[0] =3D 0;
+		return error;
+
 	default:
 		error =3D -EINVAL;
 		break;
