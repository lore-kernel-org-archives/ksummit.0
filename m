Return-Path: <sundar.iyer@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 22E9A9A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 14:57:14 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 12C771FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 14:57:12 +0000 (UTC)
From: "Iyer, Sundar" <sundar.iyer@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Preeti U Murthy
	<preeti@linux.vnet.ibm.com>
Date: Thu, 8 May 2014 14:57:08 +0000
Message-ID: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DB65@BGSMSX102.gar.corp.intel.com>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<53692127.7040603@linux.vnet.ibm.com>
	<1664398.kOfsDrBujV@vostro.rjw.lan>
In-Reply-To: <1664398.kOfsDrBujV@vostro.rjw.lan>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Peter Zijlstra <peterz@infradead.org>, "Brown, Len" <len.brown@intel.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH(CORE?) TOPIC] Energy conservation
	bias	interfaces
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
> discuss-bounces@lists.linuxfoundation.org] On Behalf Of Rafael J.
> Wysocki
> Sent: Thursday, May 8, 2014 6:28 PM
=20
> That's something I was thinking about too, but the difficulty here is in =
how to
> define the profiles (that is, what settings in each subsystem are going t=
o be
> affected by a profile change) and in deciding when to switch profiles and
> which profile is the most appropriate going forward.
>=20
> IOW, the high-level concept looks nice, but the details of the implementa=
tion
> are important too. :-)

I agree. Defining these profiles and trying to fit them into a system defin=
ition,=20
system usage policy and above all user usage policy is where the sticking p=
oint is.

> > Today cpuidle and cpufreq already expose these settings through
> > governors.
>=20
> cpufreq governors are kind of tied to specific "energy efficiency" profil=
es,
> performance, powersave, on-demand.  However, cpuidle governors are

I am not sure if that is correct. IMO Cpufreq governors function simply as =
per
policies defined to meet user experience. A system may choose to sacrifice
user experience @ the cost of running the CPU at the lowest frequency, but =
the
governor has no idea if it was really energy efficient for the platform. Si=
milarly,
the governor might decide to run at a higher turbo frequency for better use=
r
responsiveness, but it still doesn't know if it was energy efficient runnin=
g @ those
frequencies. I am coming back to the point that energy efficiency is counta=
ble
_only_ at the platform level: if it results in a longer battery life w/o ne=
eding to plug in.

> > Look at an example for a tuned profile for performance:
> > start() gets called when the profile is switched to and stop() when
> > its turned off. We could include the scheduling parameters in the
> > profile when we come up with the set of them.
> >
> >  start() {
> >      [ "$USB_AUTOSUSPEND" =3D 1 ] && enable_usb_autosuspend
> >      set_disk_alpm min_power
> >      enable_cpu_multicore_powersave
> >      set_cpu_governor ondemand
> >      enable_snd_ac97_powersave
> >      set_hda_intel_powersave 10
> >      enable_wifi_powersave
> >      set_radeon_powersave auto
> >      return 0
> >  }
> >
> >  stop() {
> >      [ "$USB_AUTOSUSPEND" =3D 1 ] && disable_usb_autosuspend
> >      set_disk_alpm max_performance
> >      disable_cpu_multicore_powersave
> >      restore_cpu_governor
> >      restore_snd_ac97_powersave
> >      restore_hda_intel_powersave
> >      disable_wifi_powersave
> >      restore_radeon_powersave
> >      return 0
> >  }
>=20
> You seem to think that user space would operate those profiles, but the
> experience so far is that user space is not actually good at doing things=
 like
> that.  We have exposed a number of PM-related knobs to user space, but in
> may cases it actively refuses to use them (we have dropped a couple of
> them too for this very reason).

Please correct me if I am wrong, but items like wifi_powersave are somethin=
g
default on most systems especially with per-device runtime power management=
.
Most devices are runtime managed and I don't see a strong reason to switch
device policies as energy saving methods.

> > A global knob would be useful in the case where the user chooses
> > performance policy for example. It means he expects the kernel to
> > *never* sacrifice performance for powersave. Now assume that a set of
> > tasks is running on 4 cpus out of 10. If the user has chosen
> > performance policy, *none of the 10 cpus should enter deep idle
> > states* lest they affect the latency of the tasks. Here a global knob w=
ould
> do well.

For this specific example, when you say the *user* has chosen the policy, d=
o
you mean a user space daemon that takes care of this or the application its=
elf?

How are we going to know if we will really save energy by limiting deep idl=
e states
on all the 10 CPUs? Please help me understand this.

Cheers!
