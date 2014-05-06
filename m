Return-Path: <peterz@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BE09D942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 15:40:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE3BC1FAA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 15:40:05 +0000 (UTC)
Date: Tue, 6 May 2014 17:39:56 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Morten Rasmussen <morten.rasmussen@arm.com>
Message-ID: <20140506153956.GV26782@laptop.programming.kicks-ass.net>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<20140506134909.GM11096@twins.programming.kicks-ass.net>
	<20140506145125.GB2779@e103034-lin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20140506145125.GB2779@e103034-lin>
Cc: Len Brown <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH(CORE?) TOPIC] Energy conservation bias
	interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 06, 2014 at 03:51:25PM +0100, Morten Rasmussen wrote:
> On Tue, May 06, 2014 at 02:49:09PM +0100, Peter Zijlstra wrote:
> > On Tue, May 06, 2014 at 02:54:03PM +0200, Rafael J. Wysocki wrote:
> > > Hi All,
> > >=20
> > > During a recent discussion on linux-pm/LKML regarding the integration=
 of the
> > > scheduler with cpuidle (http://marc.info/?t=3D139834240600003&r=3D1&w=
=3D4) it became
> > > apparent that the kernel might benefit from adding interfaces to let =
it know
> > > how far it should go with saving energy, possibly at the expense of p=
erformance.
> > >=20
> > > First of all, it would be good to have a place where subsystems and d=
evice
> > > drivers can go and check what the current "energy conservation bias" =
is in
> > > case they need to make a decision between delivering more performance=
 and
> > > using less energy.  Second, it would be good to provide user space wi=
th
> > > a means to tell the kernel whether it should care more about performa=
nce or
> > > energy.  Finally, it would be good to be able to adjust the overall "=
energy
> > > conservation bias" automatically in response to certain "power" event=
s such
> > > as "battery is low/critical" etc.
> > >=20
> > > It doesn't seem to be clear currently what level and scope of such in=
terfaces
> > > is appropriate and where to place them.  Would a global knob be usefu=
l?  Or
> > > should they be per-subsystem, per-driver, per-task, per-cgroup etc?
> >=20
> > per-task and per-cgroup doesn't seem to make sense to me; its the
> > hardware that consumes energy.
>=20
> True. But performance requirements are associated with tasks or groups
> of tasks. We also need an interface to get input from userspace to tell
> us when it is acceptable to potentially loose performance to save
> energy. IIUC, that is Rafael's second point above.

That's the QoS thing. While related I don't think we should confuse the
two.
