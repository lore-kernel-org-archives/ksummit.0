Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB6DE899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 09:41:21 +0000 (UTC)
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 99EF289
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 09:41:20 +0000 (UTC)
Received: by oio137 with SMTP id 137so15971121oio.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Aug 2015 02:41:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2029259.vVEoQEYbUz@avalon>
References: <2111196.TG1k3f53YQ@avalon>
	<20150804111804.GO7557@n2100.arm.linux.org.uk>
	<CAKMK7uHuzcv8M=Zd3Rk1kcvaGFj12FiXi_H+CjhpP4MAYRCtgw@mail.gmail.com>
	<2029259.vVEoQEYbUz@avalon>
Date: Wed, 5 Aug 2015 11:41:19 +0200
Message-ID: <CAKMK7uHxH-dYVHsuvxK6-CxHm-1cBsLWRvfH+92Ds8rDucKR9w@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King - ARM Linux <linux@arm.linux.org.uk>,
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

On Wed, Aug 5, 2015 at 12:44 AM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Tuesday 04 August 2015 13:56:38 Daniel Vetter wrote:
>> On Tue, Aug 4, 2015 at 1:18 PM, Russell King - ARM Linux wrote:
>> > A solution to that would be to drop something like a read-write lock into
>> > almost all f_op methods, which sounds expensive to me in the general case.
>>
>> srcu is what I considered since it would be least intrusive and shifts
>> the overall all to the write. The problem of course is that if you do
>> that then there will be deadlock gallore - suddenly anything called
>> from f->ops can stall code called from ->remove. And looking at how
>> regularly we have lockdep splat in the driver unload code just in i915
>> that will be really painful.
>>
>> But I don't see anything else that would work and which would be
>> semantically different from a reader/writer lock. There's an
>> additional problem that we need to guarantee that everyone completes
>> f->ops in finite time, which is a problem if you have blockings
>> ioctls. And that's a deadlock lockdep won't catch (in general at
>> least). For i915 that won't be a problem since because of the gpu
>> reset all our waiting is done interruptibly and all ioctls can be
>> restarted (userspace has to do it, it's part of the drm abi contract).
>> But even for drivers who can't do that and might deadlock I think a
>> deadlock in ->remove is better than randomly oopsing somewhere later
>> on because some f->ops is accessing freed memory.
>
> This seems subsystem-dependent. Looking at V4L2 for instance, we do have
> blocking ioctls, but drivers are expected to cancel all pending operations in
> the remove() handler, which will have the effect of waking up the waiters. It
> should thus be possible for a V4L2 driver to ensure in its remove() handler
> that
>
> 1. no new file operation can be called
> 2. all blocking file operations are woken up
>
> There's however no current provision for ensuring that a non-blocking file
> operation completes before returning from the remove() handler.

Yeah what I meant to say is that revoke won't be a silver bullet, it
still needs some work from the driver to avoid deadlocks. But like I
said I think a deadlock is already an improvement over randomly
crashing, which is what we usually do today.

> A revoke semantics for file operations is tempting, but it might open a big
> can of worms. I wonder whether it wouldn't be possible to implement proper
> life time management in a simpler way that we do today without going for full
> synchronous revoke in remove().

The problem is that the device is gone, so somewhere you need to catch
calls and reject them. And besides trying to do it at the
kernel/userspace level with revoke we could do filters at the
subsystem level (drm tries to do something like that with the unplug
stuff) or even at the device level. Some of this might require big
reworks all over but I think it should all work.

The problem is that the deeper down in the stack we reject stuff for
unplugged devices the more risk there is that we blow up in some
untested error handling code. And not blowing up on unplug is the goal
and that's why I like to reject ops at the top with a generic revoke.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
