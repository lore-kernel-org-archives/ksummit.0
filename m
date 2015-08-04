Return-Path: <linux+ksummit-discuss=lists.linuxfoundation.org@arm.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E4FF88B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 11:18:28 +0000 (UTC)
Received: from pandora.arm.linux.org.uk (pandora.arm.linux.org.uk
	[78.32.30.218])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 893A2136
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 11:18:26 +0000 (UTC)
Date: Tue, 4 Aug 2015 12:18:05 +0100
From: Russell King - ARM Linux <linux@arm.linux.org.uk>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20150804111804.GO7557@n2100.arm.linux.org.uk>
References: <2111196.TG1k3f53YQ@avalon> <1832413.9MBGoll9RW@avalon>
	<alpine.DEB.2.02.1508011255010.2071@localhost6.localdomain6>
	<8475257.M7ZLAf3KQe@avalon> <20150801151839.GA9480@mtj.duckdns.org>
	<55BD68DE.5060903@roeck-us.net>
	<20150802143025.GF7557@n2100.arm.linux.org.uk>
	<CAKMK7uHHV5Kze1OMt2HL6rbKV0LVpva+h_CEGcSbC9znbJhWWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uHHV5Kze1OMt2HL6rbKV0LVpva+h_CEGcSbC9znbJhWWQ@mail.gmail.com>
Sender: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 04, 2015 at 12:40:00PM +0200, Daniel Vetter wrote:
> I'd love to see generic support to revoke/block anything coming in
> through a file_ops.

Yes, I've been looking at one of my drivers which is definitely broken
in this regard, and that's the conclusion I'm coming to - it's not a
problem of lifetime control of the private driver data structures, but
it's a much bigger issue than that.

If a driver's file_operations methods touch hardware, then we need a
way to prevent those file_operations methods from touching the hardware
once the device driver's ->remove callback has been called.

Yes, we can stick a flag in the driver private data structure to
indicate that it's gone, but do we want to keep on reviewing this in
driver code, or should we make it easier for driver authors, subsystem
authors and core reviewers to get this right by providing a "revoke"
which can be called in the ->remove callback?

However, providing a revoke is not easy: if we look at the tty code,
which has to deal with tty hangups, then we find that it does this:

        spin_lock(&tty_files_lock);
        /* This breaks for file handles being sent over AF_UNIX sockets ? */
        list_for_each_entry(priv, &tty->tty_files, list) {
                filp = priv->file;
                if (filp->f_op->write == redirected_tty_write)
                        cons_filp = filp;
                if (filp->f_op->write != tty_write)
                        continue;
                closecount++;
                __tty_fasync(-1, filp, 0);      /* can't block */
                filp->f_op = &hung_up_tty_fops;
        }
        spin_unlock(&tty_files_lock);

IOW, it replaces the f_op on all files with hung_up_tty_fops.

Now, the filp is protected from going away by being on the list: a
f_op->release will block in tty_del_file() for the above lock to be
released.  That much is safe.

However, what if another thread/cpu is in one of the f_op methods when
filp->f_op is replaced with the "revoked" operations?  What I'm saying
is that there's no guarantee that one of the file's operations won't
be executing on another CPU at the point that we're trying to revoke it,
and we don't want any threads to be there, because they could access
data we're about to free.

That's the difficult part of the problem, and it's one which things like
stop_machine() doesn't solve (since we may have scheduled away from
a method to run the stop_machine() thread.)  We can't wait for the file
to close, because that introduces soft-deadlocks - consider a thread
which holds a reference on the filp, but is trying to unbind the driver
via sysfs... just like the sysfs issues we've had in the past.

Unfortunately, this is where things are much more complex than the module
case - the module has has the advantage that:

rmmod chardev-driver < /dev/that-chardev-driver-node

can return saying "module busy".  We don't have that luxury when it comes
to removing 'struct device' - the driver ->remove callback has no way to
fail (it's return code is always ignored.)

A solution to that would be to drop something like a read-write lock into
almost all f_op methods, which sounds expensive to me in the general case.

-- 
FTTC broadband for 0.8mile line: currently at 10.5Mbps down 400kbps up
according to speedtest.net.
