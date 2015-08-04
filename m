Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 27FA483D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 11:59:04 +0000 (UTC)
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8E3C889
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 11:59:03 +0000 (UTC)
Received: by obnw1 with SMTP id w1so5065880obn.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 04:59:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHuzcv8M=Zd3Rk1kcvaGFj12FiXi_H+CjhpP4MAYRCtgw@mail.gmail.com>
References: <2111196.TG1k3f53YQ@avalon> <1832413.9MBGoll9RW@avalon>
	<alpine.DEB.2.02.1508011255010.2071@localhost6.localdomain6>
	<8475257.M7ZLAf3KQe@avalon> <20150801151839.GA9480@mtj.duckdns.org>
	<55BD68DE.5060903@roeck-us.net>
	<20150802143025.GF7557@n2100.arm.linux.org.uk>
	<CAKMK7uHHV5Kze1OMt2HL6rbKV0LVpva+h_CEGcSbC9znbJhWWQ@mail.gmail.com>
	<20150804111804.GO7557@n2100.arm.linux.org.uk>
	<CAKMK7uHuzcv8M=Zd3Rk1kcvaGFj12FiXi_H+CjhpP4MAYRCtgw@mail.gmail.com>
Date: Tue, 4 Aug 2015 13:59:02 +0200
Message-ID: <CAKMK7uEcLMMXt4ff1_He6UBiu82VmVbNr9Srm97RXPY0P0sp9w@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Content-Type: text/plain; charset=UTF-8
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

Oh and it's not just file->ops, it's also vma->ops, dma_buf->ops,
fence->ops and anything else that could be shared with other parts of
the kernel. But I think file->ops is a good first candidate since it's
the most widespread thing, so should uncover a lot of the common
troubles. And a lot of the bugs will be fixed by just taking care of
file->ops.
-Daniel


On Tue, Aug 4, 2015 at 1:56 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Tue, Aug 4, 2015 at 1:18 PM, Russell King - ARM Linux
> <linux@arm.linux.org.uk> wrote:
>> A solution to that would be to drop something like a read-write lock into
>> almost all f_op methods, which sounds expensive to me in the general case.
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
> -Daniel
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
