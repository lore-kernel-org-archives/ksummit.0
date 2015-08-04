Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD3CA847
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 22:43:56 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2BE4CEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 22:43:56 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 05 Aug 2015 01:44:40 +0300
Message-ID: <2029259.vVEoQEYbUz@avalon>
In-Reply-To: <CAKMK7uHuzcv8M=Zd3Rk1kcvaGFj12FiXi_H+CjhpP4MAYRCtgw@mail.gmail.com>
References: <2111196.TG1k3f53YQ@avalon>
	<20150804111804.GO7557@n2100.arm.linux.org.uk>
	<CAKMK7uHuzcv8M=Zd3Rk1kcvaGFj12FiXi_H+CjhpP4MAYRCtgw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Tejun Heo <tj@kernel.org>,
	Russell King - ARM Linux <linux@arm.linux.org.uk>,
	Shuah Khan <shuah.kh@samsung.com>
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

Hi Daniel,

On Tuesday 04 August 2015 13:56:38 Daniel Vetter wrote:
> On Tue, Aug 4, 2015 at 1:18 PM, Russell King - ARM Linux wrote:
> > A solution to that would be to drop something like a read-write lock into
> > almost all f_op methods, which sounds expensive to me in the general case.
> 
> srcu is what I considered since it would be least intrusive and shifts
> the overall all to the write. The problem of course is that if you do
> that then there will be deadlock gallore - suddenly anything called
> from f->ops can stall code called from ->remove. And looking at how
> regularly we have lockdep splat in the driver unload code just in i915
> that will be really painful.
> 
> But I don't see anything else that would work and which would be
> semantically different from a reader/writer lock. There's an
> additional problem that we need to guarantee that everyone completes
> f->ops in finite time, which is a problem if you have blockings
> ioctls. And that's a deadlock lockdep won't catch (in general at
> least). For i915 that won't be a problem since because of the gpu
> reset all our waiting is done interruptibly and all ioctls can be
> restarted (userspace has to do it, it's part of the drm abi contract).
> But even for drivers who can't do that and might deadlock I think a
> deadlock in ->remove is better than randomly oopsing somewhere later
> on because some f->ops is accessing freed memory.

This seems subsystem-dependent. Looking at V4L2 for instance, we do have 
blocking ioctls, but drivers are expected to cancel all pending operations in 
the remove() handler, which will have the effect of waking up the waiters. It 
should thus be possible for a V4L2 driver to ensure in its remove() handler 
that

1. no new file operation can be called
2. all blocking file operations are woken up

There's however no current provision for ensuring that a non-blocking file 
operation completes before returning from the remove() handler.

A revoke semantics for file operations is tempting, but it might open a big 
can of worms. I wonder whether it wouldn't be possible to implement proper 
life time management in a simpler way that we do today without going for full 
synchronous revoke in remove().

-- 
Regards,

Laurent Pinchart
