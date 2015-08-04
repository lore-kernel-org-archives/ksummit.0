Return-Path: <htejun@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A23F58EF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:48:36 +0000 (UTC)
Received: from mail-yk0-f173.google.com (mail-yk0-f173.google.com
	[209.85.160.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 071761C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:48:35 +0000 (UTC)
Received: by ykeo23 with SMTP id o23so9582330yke.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 07:48:35 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Tue, 4 Aug 2015 10:48:33 -0400
From: Tejun Heo <tj@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20150804144833.GA17598@mtj.duckdns.org>
References: <2111196.TG1k3f53YQ@avalon> <1832413.9MBGoll9RW@avalon>
	<alpine.DEB.2.02.1508011255010.2071@localhost6.localdomain6>
	<8475257.M7ZLAf3KQe@avalon> <20150801151839.GA9480@mtj.duckdns.org>
	<55BD68DE.5060903@roeck-us.net>
	<20150802143025.GF7557@n2100.arm.linux.org.uk>
	<CAKMK7uHHV5Kze1OMt2HL6rbKV0LVpva+h_CEGcSbC9znbJhWWQ@mail.gmail.com>
	<20150804111804.GO7557@n2100.arm.linux.org.uk>
	<CAKMK7uHuzcv8M=Zd3Rk1kcvaGFj12FiXi_H+CjhpP4MAYRCtgw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uHuzcv8M=Zd3Rk1kcvaGFj12FiXi_H+CjhpP4MAYRCtgw@mail.gmail.com>
Cc: Shuah Khan <shuah.kh@samsung.com>,
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

Hello,

On Tue, Aug 04, 2015 at 01:56:38PM +0200, Daniel Vetter wrote:
> On Tue, Aug 4, 2015 at 1:18 PM, Russell King - ARM Linux
> <linux@arm.linux.org.uk> wrote:
> > A solution to that would be to drop something like a read-write lock into
> > almost all f_op methods, which sounds expensive to me in the general case.
> 
> srcu is what I considered since it would be least intrusive and shifts
> the overall all to the write. The problem of course is that if you do

percpu_ref is likely a better fit.

> that then there will be deadlock gallore - suddenly anything called
> from f->ops can stall code called from ->remove. And looking at how
> regularly we have lockdep splat in the driver unload code just in i915
> that will be really painful.

It's the other side of the same coin.  At least it's a lot easier to
detect with a lot more deterministic failure mode than derefing freed
memory or accessing gone hardware.

Thanks.

-- 
tejun
