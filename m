Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 973EF890
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 10:15:50 +0000 (UTC)
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3FD9B1A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 10:15:49 +0000 (UTC)
Received: by mail-pg0-f66.google.com with SMTP id f127so26837449pgc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 03:15:49 -0700 (PDT)
Date: Wed, 21 Jun 2017 19:15:56 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20170621101418.GA455@jagdpanzerIV.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<CAKMK7uEnsezRz=0-A2oAtSOTxNDR9LOCd8XOaG=tkC8+Xf_puQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uEnsezRz=0-A2oAtSOTxNDR9LOCd8XOaG=tkC8+Xf_puQ@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On (06/20/17 20:45), Daniel Vetter wrote:
[..]
> My own pet peeve with printk from the drm side:
> 
> Untangling printk form the console_lock horror show, if at all
> possible. One problem is that heavy printk usage makes the
> console_lock massively contended (we delay restoring the the kernel
> console on resume in kms drivers to a worker because of that). The
> worse problem is that console_lock locking is horribly monolithic and
> defacto requires that large chunks of your gfx driver init code needs
> to run while holding it. Which means no printk output, neither for
> your gfx driver nor anything else while your cpu goes through
> something like a few 100k lines of code (for big drivers).

console_sem is definitely on my radar. I don't like it.

first, it does way too many things. it protects the console drivers
list (both for read and write accesses); it ensures that there is only
one CPU actually doing printing; it also serves as a 'general' lock in
some other parts of the kernel; its waiters must sleep in TASK_UNINTERRUPTIBLE
state; its owner upon unlocking must print all the pending logbuf messages
to the serial console; it even be acquired by user space processes (e.g.
tty_open or cat /proc/consoles, etc) so systemd can print kernel messages
and so on and on and on.

there are many things that are not good about console_sem.

besides, I'm really curious if there are any call sites (apart from
vprintk_emit() and console_flush_on_panic()) that actually want to print
all the pending kernel messages from console_unlock()? my expectation
would be that console_lock() callers mostly just want to protect the console
drivers list; and what console_unlock() does comes as a surprise.


> We have a few pages of kerneldoc explaining how to debug this and what
> happens, and gross debug hacks to just not take console_lock on driver
> (and pray it won't race), but it's a constant trap for new gfx
> hackers.
> 
> Fixing console_lock is much less likely to happen, I (and better
> hackers like Alan Cox) tried, and ran away in tears.

well, I don't even pretend to be a kernel hacker, but what were
the major obstacles?



the thing is,
I want to convert console_sem into RW lock. I briefly mentioned it last
year in Santa Fe, NM... and in fact I wrote *some sort* of a patch back
(well, mostly to see if it can fly at all). the patch has never been
finalized, polished, carefully written or properly tested (!).

it compiles and the system boots just fine. so it's definitely bug free (tm).


the patch (sorry for calling it a patch) does several things.


a) it turns console_unlock() into what it probably must be - just unlock
   console_sem. so now pending logbuf messages are printed by real printk()
   callers.


b) it converts console_sem semaphore to rwsem

hence a new locking API

	extern void console_read_lock(void);
	extern void console_write_lock(void);
	extern int console_read_trylock(void);
	extern int console_write_trylock(void);

	extern void console_read_unlock(void);
	extern void console_write_unlock(void);



so now we can convert things like

	console_lock();
	for_each_console(c) {
		if (!c->device)
			continue;
		driver = c->device(c, index);
		if (driver)
			break;
	}
	console_unlock();


which previously would
	1) sleep in console_lock()
	2) print all the pending messages from console_unlock()



to a more logical

	console_read_lock();
	for_each_console(c) {
		if (!c->device)
			continue;
		driver = c->device(c, index);
		if (driver)
			break;
	}
	console_read_unlock();



and at the same time, we still can have exclusive ownership of console
drivers list when it's needed. for example

	console_write_lock();
	....
		newcon->next = console_drivers->next;
		console_drivers->next = newcon;
	....
	console_write_unlock();
	console_tryflush();



c) a bunch of new functions to flush pending messages.

we used to have console_flush_on_panic() before, now we have two more
functions. this is for the case if console_unlock() caller actually
expected that if

	extern void console_tryflush(void);
	extern void console_flush(void);
	extern void console_flush_on_panic(void);

console_tryflush() does not sleep. console_flush() might sleep.

why do we need them? who knows, may be some of console_unlock()
callers actually want to flush logbuf, so they would need to
explicitly console_tryflush()/console_flush() now. yeah, I know.


d) it obsoletes 3 symbols that the rest of the system used to
   lock/unlock console subsystem:
		extern void console_lock(void);
		extern int console_trylock(void);
		extern void console_unlock(void);


the reason I kept those 3 is because converting all of the console_lock/unlock
callers is waaaaaay too much job for a PoC ;) so I just converted those 3
symbols instead. effectively they do down_write/up_write/etc at the moment;
but ideally we better switch to console_read_lock/console_write_lock and
friends. but I'll need a lot of help here because I have no idea whatsoever
what's going on in vt.c and some any other places.


so, JFYI, the patch is below. once again, it's not even in beta,
boot tested only (!).



Signed-off-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
---
 include/linux/console.h |  16 +++
 kernel/printk/printk.c  | 327 ++++++++++++++++++++++++++++++++++--------------
 2 files changed, 246 insertions(+), 97 deletions(-)

diff --git a/include/linux/console.h b/include/linux/console.h
index b8920a031a3e..e7050c43645f 100644
--- a/include/linux/console.h
+++ b/include/linux/console.h
@@ -162,12 +162,28 @@ extern int add_preferred_console(char *name, int idx, char *options);
 extern void register_console(struct console *);
 extern int unregister_console(struct console *);
 extern struct console *console_drivers;
+
+/* Obsolete, should be removed */
 extern void console_lock(void);
 extern int console_trylock(void);
 extern void console_unlock(void);
+
+/* Use these ones instead */
+extern void console_read_lock(void);
+extern void console_write_lock(void);
+extern int console_read_trylock(void);
+extern int console_write_trylock(void);
+
+extern void console_read_unlock(void);
+extern void console_write_unlock(void);
+
 extern void console_conditional_schedule(void);
 extern void console_unblank(void);
+
+extern void console_tryflush(void);
+extern void console_flush(void);
 extern void console_flush_on_panic(void);
+
 extern struct tty_driver *console_device(int *);
 extern void console_stop(struct console *);
 extern void console_start(struct console *);
diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index fc47863f629c..a73bafb0b9d1 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -78,16 +78,10 @@ EXPORT_SYMBOL(oops_in_progress);
  * provides serialisation for access to the entire console
  * driver system.
  */
-static DEFINE_SEMAPHORE(console_sem);
+static DECLARE_RWSEM(console_sem);
 struct console *console_drivers;
 EXPORT_SYMBOL_GPL(console_drivers);
 
-#ifdef CONFIG_LOCKDEP
-static struct lockdep_map console_lock_dep_map = {
-	.name = "console_lock"
-};
-#endif
-
 enum devkmsg_log_bits {
 	__DEVKMSG_LOG_BIT_ON = 0,
 	__DEVKMSG_LOG_BIT_OFF,
@@ -206,46 +200,67 @@ int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
 static int nr_ext_console_drivers;
 
 /*
- * Helper macros to handle lockdep when locking/unlocking console_sem. We use
- * macros instead of functions so that _RET_IP_ contains useful information.
+ * Helper macros to handle lockdep when locking/unlocking console_sem.
  */
-#define down_console_sem() do { \
-	down(&console_sem);\
-	mutex_acquire(&console_lock_dep_map, 0, 0, _RET_IP_);\
-} while (0)
+#define console_sem_down_write() do {					\
+		down_write(&console_sem);				\
+	} while (0)
+
+#define console_sem_down_read() do {					\
+		down_read(&console_sem);				\
+	} while (0)
+
+static void console_sem_up_write(void)
+{
+	unsigned long flags;
+
+	printk_safe_enter_irqsave(flags);
+	up_write(&console_sem);
+	printk_safe_exit_irqrestore(flags);
+}
 
-static int __down_trylock_console_sem(unsigned long ip)
+static void console_sem_up_read(void)
 {
-	int lock_failed;
+	unsigned long flags;
+
+	printk_safe_enter_irqsave(flags);
+	up_read(&console_sem);
+	printk_safe_exit_irqrestore(flags);
+}
+
+static int console_sem_read_trylock(void)
+{
+	int locked;
 	unsigned long flags;
 
 	/*
-	 * Here and in __up_console_sem() we need to be in safe mode,
+	 * Here, in __console_sem_write_trylock() ,and in
+	 * __console_sem_up_{write, read}() we need to be in safe mode,
 	 * because spindump/WARN/etc from under console ->lock will
 	 * deadlock in printk()->down_trylock_console_sem() otherwise.
 	 */
 	printk_safe_enter_irqsave(flags);
-	lock_failed = down_trylock(&console_sem);
+	locked = down_read_trylock(&console_sem);
 	printk_safe_exit_irqrestore(flags);
 
-	if (lock_failed)
+	if (!locked)
 		return 1;
-	mutex_acquire(&console_lock_dep_map, 0, 1, ip);
 	return 0;
 }
-#define down_trylock_console_sem() __down_trylock_console_sem(_RET_IP_)
 
-static void __up_console_sem(unsigned long ip)
+static int console_sem_write_trylock(void)
 {
+	int locked;
 	unsigned long flags;
 
-	mutex_release(&console_lock_dep_map, 1, ip);
-
 	printk_safe_enter_irqsave(flags);
-	up(&console_sem);
+	locked = down_write_trylock(&console_sem);
 	printk_safe_exit_irqrestore(flags);
+
+	if (!locked)
+		return 1;
+	return 0;
 }
-#define up_console_sem() __up_console_sem(_RET_IP_)
 
 /*
  * This is used for debugging the mess that is the VT code by
@@ -436,6 +451,26 @@ static char __log_buf[__LOG_BUF_LEN] __aligned(LOG_ALIGN);
 static char *log_buf = __log_buf;
 static u32 log_buf_len = __LOG_BUF_LEN;
 
+#define CONSOLE_EMIT_UNLOCKED_VAL	-1
+#define CONSOLE_EMIT_LOCKED_VAL	1
+
+static int console_emit_lock = CONSOLE_EMIT_UNLOCKED_VAL;
+
+static int console_emit_trylock(void)
+{
+	if (cmpxchg(&console_emit_lock,
+			CONSOLE_EMIT_UNLOCKED_VAL,
+			CONSOLE_EMIT_LOCKED_VAL) == CONSOLE_EMIT_UNLOCKED_VAL)
+		return 1;
+
+	return 0;
+}
+
+static void console_emit_unlock(void)
+{
+	xchg(&console_emit_lock, CONSOLE_EMIT_UNLOCKED_VAL);
+}
+
 /* Return log buffer address */
 char *log_buf_addr_get(void)
 {
@@ -1692,6 +1727,40 @@ static size_t log_output(int facility, int level, enum log_flags lflags, const c
 	return log_store(facility, level, lflags, 0, dict, dictlen, text, text_len);
 }
 
+static void console_emit(bool may_schedule);
+
+/*
+ * Check if we can schedule in console_emit() from the current context.
+ */
+static int may_console_schedule(void)
+{
+	/*
+	 * When PREEMPT_COUNT disabled we can't reliably detect if it's
+	 * safe to schedule (e.g. calling printk while holding a spin_lock),
+	 * because preempt_disable()/preempt_enable() are just barriers there
+	 * and preempt_count() is always 0.
+	 *
+	 * RCU read sections have a separate preemption counter when
+	 * PREEMPT_RCU enabled thus we must take extra care and check
+	 * rcu_preempt_depth(), otherwise RCU read sections modify
+	 * preempt_count().
+	 */
+	return !oops_in_progress && preemptible() && !rcu_preempt_depth();
+}
+
+static int console_trylock_for_emit(void)
+{
+	/* If trylock fails, someone else is doing the printing */
+	if (!console_read_trylock())
+		return 0;
+
+	if (console_emit_trylock())
+		return 1;
+
+	console_read_unlock();
+	return 0;
+}
+
 asmlinkage int vprintk_emit(int facility, int level,
 			    const char *dict, size_t dictlen,
 			    const char *fmt, va_list args)
@@ -1765,8 +1834,9 @@ asmlinkage int vprintk_emit(int facility, int level,
 		 * semaphore.  The release will print out buffers and wake up
 		 * /dev/kmsg and syslog() users.
 		 */
-		if (console_trylock())
-			console_unlock();
+		if (console_trylock_for_emit()) {
+			console_emit(may_console_schedule());
+		}
 	}
 
 	return printed_len;
@@ -2011,18 +2081,18 @@ void suspend_console(void)
 	if (!console_suspend_enabled)
 		return;
 	printk("Suspending console(s) (use no_console_suspend to debug)\n");
-	console_lock();
+	console_write_lock();
 	console_suspended = 1;
-	up_console_sem();
+	console_sem_up_write();
 }
 
 void resume_console(void)
 {
 	if (!console_suspend_enabled)
 		return;
-	down_console_sem();
+	console_sem_down_write();
 	console_suspended = 0;
-	console_unlock();
+	console_write_unlock();
 }
 
 /**
@@ -2038,70 +2108,75 @@ static int console_cpu_notify(unsigned int cpu)
 {
 	if (!cpuhp_tasks_frozen) {
 		/* If trylock fails, someone else is doing the printing */
-		if (console_trylock())
-			console_unlock();
+		if (console_trylock_for_emit())
+			console_emit(true);
 	}
 	return 0;
 }
 
 /**
- * console_lock - lock the console system for exclusive use.
- *
- * Acquires a lock which guarantees that the caller has
- * exclusive access to the console system and the console_drivers list.
+ * console_write_lock/console_read_lock - lock the console system
+ * in exclusive or shared more correspondingly.
  *
  * Can sleep, returns nothing.
  */
-void console_lock(void)
+void console_write_lock(void)
 {
 	might_sleep();
 
-	down_console_sem();
+	console_sem_down_write();
 	if (console_suspended)
 		return;
-	console_locked = 1;
-	console_may_schedule = 1;
+	console_locked++;
 }
-EXPORT_SYMBOL(console_lock);
+EXPORT_SYMBOL(console_write_lock);
+
+void console_read_lock(void)
+{
+	might_sleep();
+
+	console_sem_down_read();
+	if (console_suspended)
+		return;
+	console_locked++;
+}
+EXPORT_SYMBOL(console_read_lock);
 
 /**
- * console_trylock - try to lock the console system for exclusive use.
- *
- * Try to acquire a lock which guarantees that the caller has exclusive
- * access to the console system and the console_drivers list.
+ * console_read_trylock/console_write_trylock - try to lock the console system
+ * for shared or exclusive use correspondingly.
  *
  * returns 1 on success, and 0 on failure to acquire the lock.
  */
-int console_trylock(void)
+int console_read_trylock(void)
 {
-	if (down_trylock_console_sem())
+	if (console_sem_read_trylock())
 		return 0;
 	if (console_suspended) {
-		up_console_sem();
+		console_sem_up_read();
 		return 0;
 	}
-	console_locked = 1;
-	/*
-	 * When PREEMPT_COUNT disabled we can't reliably detect if it's
-	 * safe to schedule (e.g. calling printk while holding a spin_lock),
-	 * because preempt_disable()/preempt_enable() are just barriers there
-	 * and preempt_count() is always 0.
-	 *
-	 * RCU read sections have a separate preemption counter when
-	 * PREEMPT_RCU enabled thus we must take extra care and check
-	 * rcu_preempt_depth(), otherwise RCU read sections modify
-	 * preempt_count().
-	 */
-	console_may_schedule = !oops_in_progress &&
-			preemptible() &&
-			!rcu_preempt_depth();
+	console_locked++;
 	return 1;
 }
-EXPORT_SYMBOL(console_trylock);
+EXPORT_SYMBOL(console_read_trylock);
+
+int console_write_trylock(void)
+{
+	if (console_sem_write_trylock())
+		return 0;
+	if (console_suspended) {
+		console_sem_up_write();
+		return 0;
+	}
+	console_locked++;
+	return 1;
+}
+EXPORT_SYMBOL(console_write_trylock);
 
 int is_console_locked(void)
 {
-	return console_locked;
+	return console_locked != 0;
 }
 
 /*
@@ -2133,7 +2208,7 @@ static inline int can_use_console(void)
 }
 
 /**
- * console_unlock - unlock the console system
+ * console_emit - print all pending messages and unlock the console system
  *
  * Releases the console_lock which the caller holds on the console system
  * and the console driver list.
@@ -2144,9 +2219,9 @@ static inline int can_use_console(void)
  *
  * If there is output waiting, we wake /dev/kmsg and syslog() users.
  *
- * console_unlock(); may be called from any context.
+ * console_emit(); may be called from any context.
  */
-void console_unlock(void)
+static void console_emit(bool may_schedule)
 {
 	static char ext_text[CONSOLE_EXT_LOG_MAX];
 	static char text[LOG_LINE_MAX + PREFIX_MAX];
@@ -2156,7 +2231,8 @@ void console_unlock(void)
 	bool do_cond_resched, retry;
 
 	if (console_suspended) {
-		up_console_sem();
+		console_emit_unlock();
+		console_sem_up_read();
 		return;
 	}
 
@@ -2174,7 +2250,7 @@ void console_unlock(void)
 	 * context reliably. Therefore the value must be stored before
 	 * and cleared after the the "again" goto label.
 	 */
-	do_cond_resched = console_may_schedule;
+	do_cond_resched = may_schedule;
 again:
 	console_may_schedule = 0;
 
@@ -2184,8 +2260,9 @@ void console_unlock(void)
 	 * console.
 	 */
 	if (!can_use_console()) {
-		console_locked = 0;
-		up_console_sem();
+		console_locked--;
+		console_emit_unlock();
+		console_sem_up_read();
 		return;
 	}
 
@@ -2249,7 +2326,7 @@ void console_unlock(void)
 		if (do_cond_resched)
 			cond_resched();
 	}
-	console_locked = 0;
+	console_locked--;
 
 	/* Release the exclusive_console once it is used */
 	if (unlikely(exclusive_console))
@@ -2257,7 +2334,8 @@ void console_unlock(void)
 
 	raw_spin_unlock(&logbuf_lock);
 
-	up_console_sem();
+	console_emit_unlock();
+	console_sem_up_read();
 
 	/*
 	 * Someone could have filled up the buffer again, so re-check if there's
@@ -2270,12 +2348,66 @@ void console_unlock(void)
 	raw_spin_unlock(&logbuf_lock);
 	printk_safe_exit_irqrestore(flags);
 
-	if (retry && console_trylock())
+	if (retry && console_trylock_for_emit())
 		goto again;
 
 	if (wake_klogd)
 		wake_up_klogd();
 }
+
+void console_tryflush(void)
+{
+	if (console_trylock_for_emit())
+		console_emit(may_console_schedule());
+}
+EXPORT_SYMBOL(console_tryflush);
+
+void console_flush(void)
+{
+	might_sleep();
+
+	console_read_lock();
+
+	if (console_emit_trylock())
+		console_emit(true);
+	else
+		console_read_unlock();
+}
+EXPORT_SYMBOL(console_flush);
+
+void console_write_unlock(void)
+{
+	console_locked--;
+	console_sem_up_write();
+}
+EXPORT_SYMBOL(console_write_unlock);
+
+void console_read_unlock(void)
+{
+	console_locked--;
+	console_sem_up_read();
+}
+EXPORT_SYMBOL(console_read_unlock);
+
+/*
+ * For compatibility only!
+ */
+extern void console_lock(void)
+{
+	console_write_lock();
+}
+EXPORT_SYMBOL(console_lock);
+
+extern int console_trylock(void)
+{
+	return console_write_trylock();
+}
+EXPORT_SYMBOL(console_trylock);
+
+extern void console_unlock(void)
+{
+	console_write_unlock();
+}
 EXPORT_SYMBOL(console_unlock);
 
 /**
@@ -2285,7 +2417,7 @@ EXPORT_SYMBOL(console_unlock);
  * if this CPU should yield the CPU to another task, do
  * so here.
  *
- * Must be called within console_lock();.
+ * Must be called under console_sem
  */
 void __sched console_conditional_schedule(void)
 {
@@ -2303,17 +2435,16 @@ void console_unblank(void)
 	 * oops_in_progress is set to 1..
 	 */
 	if (oops_in_progress) {
-		if (down_trylock_console_sem() != 0)
+		if (console_write_trylock() != 0)
 			return;
 	} else
-		console_lock();
+		console_write_lock();
 
-	console_locked = 1;
-	console_may_schedule = 0;
+	console_locked++;
 	for_each_console(c)
 		if ((c->flags & CON_ENABLED) && c->unblank)
 			c->unblank();
-	console_unlock();
+	console_write_unlock();
 }
 
 /**
@@ -2330,9 +2461,10 @@ void console_flush_on_panic(void)
 	 * context and we don't want to get preempted while flushing,
 	 * ensure may_schedule is cleared.
 	 */
-	console_trylock();
-	console_may_schedule = 0;
-	console_unlock();
+	console_read_trylock();
+	xchg(&console_emit_lock, CONSOLE_EMIT_LOCKED_VAL);
+	/* Forbid resheduling */
+	console_emit(0);
 }
 
 /*
@@ -2343,7 +2475,7 @@ struct tty_driver *console_device(int *index)
 	struct console *c;
 	struct tty_driver *driver = NULL;
 
-	console_lock();
+	console_read_lock();
 	for_each_console(c) {
 		if (!c->device)
 			continue;
@@ -2351,7 +2483,7 @@ struct tty_driver *console_device(int *index)
 		if (driver)
 			break;
 	}
-	console_unlock();
+	console_read_unlock();
 	return driver;
 }
 
@@ -2362,17 +2494,17 @@ struct tty_driver *console_device(int *index)
  */
 void console_stop(struct console *console)
 {
-	console_lock();
+	console_write_lock();
 	console->flags &= ~CON_ENABLED;
-	console_unlock();
+	console_write_unlock();
 }
 EXPORT_SYMBOL(console_stop);
 
 void console_start(struct console *console)
 {
-	console_lock();
+	console_write_lock();
 	console->flags |= CON_ENABLED;
-	console_unlock();
+	console_write_unlock();
 }
 EXPORT_SYMBOL(console_start);
 
@@ -2512,7 +2644,7 @@ void register_console(struct console *newcon)
 	 *	Put this console in the list - keep the
 	 *	preferred driver at the head of the list.
 	 */
-	console_lock();
+	console_write_lock();
 	if ((newcon->flags & CON_CONSDEV) || console_drivers == NULL) {
 		newcon->next = console_drivers;
 		console_drivers = newcon;
@@ -2543,7 +2675,8 @@ void register_console(struct console *newcon)
 		 */
 		exclusive_console = newcon;
 	}
-	console_unlock();
+	console_write_unlock();
+	console_tryflush();
 	console_sysfs_notify();
 
 	/*
@@ -2583,7 +2716,7 @@ int unregister_console(struct console *console)
 		return res;
 
 	res = 1;
-	console_lock();
+	console_write_lock();
 	if (console_drivers == console) {
 		console_drivers=console->next;
 		res = 0;
@@ -2609,7 +2742,7 @@ int unregister_console(struct console *console)
 		console_drivers->flags |= CON_CONSDEV;
 
 	console->flags &= ~CON_ENABLED;
-	console_unlock();
+	console_write_unlock();
 	console_sysfs_notify();
 	return res;
 }
@@ -2697,8 +2830,8 @@ static void wake_up_klogd_work_func(struct irq_work *irq_work)
 
 	if (pending & PRINTK_PENDING_OUTPUT) {
 		/* If trylock fails, someone else is doing the printing */
-		if (console_trylock())
-			console_unlock();
+		if (console_trylock_for_emit())
+			console_emit(false);
 	}
 
 	if (pending & PRINTK_PENDING_WAKEUP)
-- 
2.13.1
