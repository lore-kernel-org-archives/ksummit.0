Return-Path: <linux+ksummit-discuss=lists.linuxfoundation.org@arm.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5027740A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:27:44 +0000 (UTC)
Received: from pandora.arm.linux.org.uk (pandora.arm.linux.org.uk
	[78.32.30.218])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E671C1E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:27:42 +0000 (UTC)
Date: Fri, 31 Jul 2015 18:27:32 +0100
From: Russell King - ARM Linux <linux@arm.linux.org.uk>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150731172732.GB7557@n2100.arm.linux.org.uk>
References: <2111196.TG1k3f53YQ@avalon> <20150731170416.GI20873@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150731170416.GI20873@sirena.org.uk>
Sender: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Fri, Jul 31, 2015 at 06:04:16PM +0100, Mark Brown wrote:
> On Fri, Jul 31, 2015 at 06:14:14PM +0300, Laurent Pinchart wrote:
> 
> > It recently came to my attention that the way devm_kzalloc() is used by most
> > drivers is broken. I've raised the topic on LKML (see
> > http://lkml.org/lkml/2015/7/14/741) in the hope that my findings were simply
> 
> lkml.org is down (again) - can you please provide a subject line?

I wish people would stop using lkml.org

> > The issue occurs when drivers use devm_kzalloc() to allocate data structures 
> > that can be accessed through file operations on a device node. The following 
> > sequence of events will then lead to a crash.
> 
> Like Julia says I'm not sure this is really related to devm_ - I would
> really expect that the majority of users were already broken prior to
> the conversion to devm_ since the natural thing is to free things in the
> remove() function which has exactly the same issues, the main problem
> here is that the file open after device is removed case is rare for most
> devices and requires somewhat obscure handling.

I completely agree - this has *nothing* to do with devm_ at all.  Any
bugs that are there as a result of converting to devm_kzalloc() where
there before.  99.9% of the devm_kzalloc() conversions are merely
replacing the kmalloc()/kzalloc() in the probe function with devm_kzalloc()
and removing the free() in the remove function.

If _anything_, converting to devm_kzalloc() means that the lifetime of
the data structure is _slightly_ longer - because rather than the data
structure being freed in the remove() callback, it's freed after the
remove() callback has returned.

However, both are just as buggy.

The devm_* aspect of this thread is just an anti-devm_* smoke-screen.
It's completely irrelevant.

> Tejun's suggestion seems like the most robust thing here - allocation
> issues are only going to be one of the problems with userspace accessing
> devices that are going away and there's a complexity cost from having
> the partially destroyed cases around.  Off the top of my head there's
> anything that attempts to access the hardware if it's genuinely gone
> away rather than just been soft unbound for example.  If the device can
> just invalidate all open files on the way out then that's going to be
> exactly what most things want.

Well, accessing hardware is even more of a problem.  Consider that
ioremap()s will also be cleaned up at the same time (whether in
->remove() or in devm cleanup processing - again, not a devm problem)
thereby removing the mapping for accessing the hardware.

-- 
FTTC broadband for 0.8mile line: currently at 10.5Mbps down 400kbps up
according to speedtest.net.
