Return-Path: <sundar.iyer@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DC8064C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 05:21:59 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5403920274
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 05:21:59 +0000 (UTC)
From: "Iyer, Sundar" <sundar.iyer@intel.com>
To: Peter Zijlstra <peterz@infradead.org>, "Rafael J. Wysocki"
	<rjw@rjwysocki.net>
Date: Wed, 7 May 2014 05:20:59 +0000
Message-ID: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "Brown, Len" <len.brown@intel.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

> -----Original Message-----
> From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
> discuss-bounces@lists.linuxfoundation.org] On Behalf Of Peter Zijlstra

> > (http://marc.info/?t=3D139834240600003&r=3D1&w=3D4) it became apparent =
that

> > First of all, it would be good to have a place where subsystems and
> > device drivers can go and check what the current "energy conservation
> > bias" is in case they need to make a decision between delivering more
> > performance and using less energy.  Second, it would be good to

It might sound a stupid question, but isn't this entirely dependent on the =
platform?

A higher performance will translate into better energy only if the "race to=
 halt" was
true and the system/platform had a nice power/performance/energy curve. E.g=
. if the
task got completed quicker enough (reduced t) to offset the most probably i=
ncreased
current consumption (increased i @ constant v).

Am I wrong? What would happen on a platform, where more performance means
using more energy?

> > provide user space with a means to tell the kernel whether it should
> > care more about performance or energy.  Finally, it would be good to
> > be able to adjust the overall "energy conservation bias" automatically

Instead of either energy or performance, would it be easier to look if
it were a "just enough performance" metric? Rather than worry about a reduc=
ed
performance to save energy, it would be IMO better to try to optimize the e=
nergy
within the constraints of the required performance. Of course, those constr=
aints
could be changed.

e.g. if the display would communicate it doesn't need to refresh more than =
60fps,
this could be communicated to the GPU/CPU to control the bias for these sub=
-systems
accordingly.

> > in response to certain "power" events such as "battery is low/critical"=
 etc.

Would I be wrong if I said the thermal throttling is already an example of =
this?
When the battery is critical/temperature is unbearable, the system cuts dow=
n
the performance of sub-systems like CPU, display etc.

> per-subsystem sounds right to me; I don't care which particular instance =
of
> graphics cards I have, I want whichever one(s) I have to obey.
>=20
> global doesn't make sense, like stated earlier I absolutely detest automa=
gic
> backlight dimming, whereas I don't particularly care about compute speed =
at
> all.

That calls for highly customized preferences for what to control: in most c=
ases
the dimmed backlight itself saves a considerable amount of energy which wou=
ldn't
be matched by a CPU (or a GPU) control. On a battery device, the first pref=
erence
would be to dim out the screen but still allow the user a good battery life=
 and=20
user experience.

Cheers!
