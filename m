Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7EFACA8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:22:36 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3A4C20308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:22:35 +0000 (UTC)
Date: Mon, 12 May 2014 12:22:29 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20140512162229.GY12708@titan.lakedaemon.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<53703416.5070400@zytor.com> <20140512061332.GA10134@thin>
	<1399886585.879.108.camel@i7.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1399886585.879.108.camel@i7.infradead.org>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Sarah A Sharp <sarah@minilop.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 10:23:05AM +0100, David Woodhouse wrote:
> On Sun, 2014-05-11 at 23:13 -0700, Josh Triplett wrote:
> > On Sun, May 11, 2014 at 07:38:14PM -0700, H. Peter Anvin wrote:
> > > As valuable as I obviously believe this project is, is there actually
> > > anything that warrants discussion at the Kernel Summit?  It seems like
> > > something to Just Do[TM].
> > 
> > I believe there is actually a key part of this discussion to have at
> > Kernel Summit.  We don't need to discuss the technical details of the
> > implementation; we do need to discuss the implications of enabling mass
> > oops-reporting, the infrastructure and information we want to include in
> > codes valid for the next decade or so, the tradeoffs between ease of
> > reporting and value of the reports, some potential approaches to
> > aggregate the date, and similar.
> 
> In particular, can we avoid the silly trap of the ---[cut here]--- which
> comes between a kernel oops, and the potentially useful messages that
> were printed right before it.

Something like this?

thx,

Jason.

------------>8-----------------
diff --git a/kernel/panic.c b/kernel/panic.c
index d02fa9fef46a..797251d87c60 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -407,7 +407,7 @@ static void warn_slowpath_common(const char *file, int line, void *caller,
 {
 	disable_trace_on_warning();
 
-	pr_warn("------------[ cut here ]------------\n");
+	pr_warn("------------[ cut 10 lines above here ]------------\n");
 	pr_warn("WARNING: CPU: %d PID: %d at %s:%d %pS()\n",
 		raw_smp_processor_id(), current->pid, file, line, caller);
 
diff --git a/lib/bug.c b/lib/bug.c
index 168603477f02..ece8c759d454 100644
--- a/lib/bug.c
+++ b/lib/bug.c
@@ -153,7 +153,7 @@ enum bug_trap_type report_bug(unsigned long bugaddr, struct pt_regs *regs)
 
 	if (warning) {
 		/* this is a WARN_ON rather than BUG/BUG_ON */
-		printk(KERN_WARNING "------------[ cut here ]------------\n");
+		printk(KERN_WARNING "------------[ cut 10 lines above here ]------------\n");
 
 		if (file)
 			printk(KERN_WARNING "WARNING: at %s:%u\n",
@@ -171,7 +171,7 @@ enum bug_trap_type report_bug(unsigned long bugaddr, struct pt_regs *regs)
 		return BUG_TRAP_TYPE_WARN;
 	}
 
-	printk(KERN_DEFAULT "------------[ cut here ]------------\n");
+	printk(KERN_DEFAULT "------------[ cut 10 lines above here ]------------\n");
 
 	if (file)
 		printk(KERN_CRIT "kernel BUG at %s:%u!\n",
