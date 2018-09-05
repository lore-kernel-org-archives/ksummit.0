Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8F1BDD1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:33:32 +0000 (UTC)
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2936D71C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:33:32 +0000 (UTC)
Received: by mail-it0-f65.google.com with SMTP id 139-v6so11267376itf.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 13:33:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180905201848.GV16300@sasha-vm>
References: <1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<s5hefe8cd0u.wl-tiwai@suse.de>
	<CAKMK7uFMHkw4jw3D6ijGNZF84+p+EGY_6YAdCOTcXe0DQbLC6g@mail.gmail.com>
	<20180905140535.GB7556@kroah.com>
	<CAKMK7uFMCL95mrvFQvxzjZhEk+QvkaYmZDRvp7PY6FgJTQnWzw@mail.gmail.com>
	<20180905161859.GS16300@sasha-vm>
	<CAKMK7uFf_Wv3eG18JQr9Pp5NTUiCHsxXEmKrB2EDzNdCizRR=g@mail.gmail.com>
	<20180905190902.GU16300@sasha-vm> <20180905201848.GV16300@sasha-vm>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 5 Sep 2018 22:33:30 +0200
Message-ID: <CAKMK7uGQr+fFFX27D_CJ-rwHb6SfU1U_rsCZS=LK+ooaz3aS_g@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
	time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 5, 2018 at 10:18 PM, Sasha Levin
<Alexander.Levin@microsoft.com> wrote:
> On Wed, Sep 05, 2018 at 03:09:02PM -0400, Sasha Levin wrote:
>>On Wed, Sep 05, 2018 at 06:26:17PM +0200, Daniel Vetter wrote:
>>>Note that because of fbcon and other reasons, an rmmod i915 will fail.
>>>You need to enable a bunch of CONFIG_EXPERT options (with scary texts
>>>and stuff) and have a script from our test suite to be able to even
>>>make this happen.
>>
>>Hm, how does that work?
>>
>>On an Ubuntu 4.18 kernel I can remove i915 just by:
>>
>>root@jumpy:~# echo 1 > /sys/devices/pci0000\:00/0000\:00\:02.0/remove
>>root@jumpy:~# sudo rmmod i915
>
> ... which apparently spews a warning and hangs the system:

Yeah don't do that, we know about it. The force-unplug is what kills
your box, without that you can't rmmod even. Fixing i915+drm core to
properly refcount everything so thist doesn't blow up anymore is
probably a few man-years of effort. You can unload the entire thing,
if you first make sure everyone stops using the driver.

Like I said, not stable material.
-Daniel

>
> [  802.065412] PCH DPLL A assertion failure (expected on, current off)
> [  802.065574] WARNING: CPU: 1 PID: 804 at drivers/gpu/drm/i915/intel_dpl=
l_mgr.c:124 assert_shared_dpll+0x106/0x120 [i915]
> [  802.065576] Modules linked in: intel_rapl x86_pkg_temp_thermal intel_p=
owerclamp kvm_intel kvm irqbypass arc4 snd_hda_codec_hdmi crct10dif_pclmul =
crc32_pclmul ghash_clmulni_intel pcbc iwldvm snd_hda_codec_conexant snd_hda=
_codec_generic mac80211 gpio_ich snd_hda_intel iwlwifi snd_hda_codec aesni_=
intel aes_x86_64 crypto_simd snd_hda_core cryptd glue_helper snd_hwdep inpu=
t_leds intel_cstate intel_rapl_perf joydev snd_pcm serio_raw cfg80211 wmi_b=
mof snd_timer lpc_ich mei_me mei thinkpad_acpi nvram snd soundcore mac_hid =
binfmt_misc sch_fq_codel coretemp ip_tables x_tables autofs4 i915 i2c_algo_=
bit drm_kms_helper psmouse syscopyarea e1000e sysfillrect sysimgblt fb_sys_=
fops sdhci_pci ahci drm cqhci libahci sdhci wmi video
> [  802.065678] CPU: 1 PID: 804 Comm: bash Not tainted 4.18.6-041806-gener=
ic #201809050847
> [  802.065681] Hardware name: LENOVO 4236AT9/4236AT9, BIOS 83ET66WW (1.36=
 ) 10/31/2011
> [  802.065769] RIP: 0010:assert_shared_dpll+0x106/0x120 [i915]
> [  802.065770] Code: c7 c2 42 cc 36 c0 48 8b 83 88 00 00 00 48 89 f1 48 c=
7 c7 40 49 38 c0 48 0f 44 ca 45 84 e4 48 0f 45 d6 48 8b 30 e8 5c 60 7b dc <=
0f> 0b e9 40 ff ff ff e8 ae 5d 7b dc 66 66 2e 0f 1f 84 00 00 00 00
> [  802.065883] RSP: 0018:ffffba82014d3a28 EFLAGS: 00010282
> [  802.065887] RAX: 0000000000000000 RBX: ffff9a3e8977e350 RCX: 000000000=
0000006
> [  802.065890] RDX: 0000000000000007 RSI: 0000000000000092 RDI: ffff9a3e9=
e2564b0
> [  802.065893] RBP: ffffba82014d3ac0 R08: 0000000000000001 R09: 000000000=
0000341
> [  802.065895] R10: 0000000000000004 R11: 0000000000000000 R12: 000000000=
0000001
> [  802.065898] R13: 0000000000000001 R14: ffff9a3e89778000 R15: ffff9a3e8=
977e6b8
> [  802.065902] FS:  00007fcd73414740(0000) GS:ffff9a3e9e240000(0000) knlG=
S:0000000000000000
> [  802.065905] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  802.065908] CR2: 000055cf3a21ae00 CR3: 00000002137b4002 CR4: 000000000=
00606e0
> [  802.065911] Call Trace:
> [  802.065926]  ? __cancel_work_timer+0x110/0x190
> [  802.066003]  ? intel_set_pch_fifo_underrun_reporting+0xec/0x180 [i915]
> [  802.066082]  intel_disable_shared_dpll+0xa2/0x140 [i915]
> [  802.066162]  intel_atomic_commit_tail+0x210/0xd10 [i915]
> [  802.066244]  intel_atomic_commit+0x2b8/0x2f0 [i915]
> [  802.066290]  drm_atomic_commit+0x4a/0x50 [drm]
> [  802.066315]  __drm_atomic_helper_disable_all+0x190/0x1d0 [drm_kms_help=
er]
> [  802.066335]  drm_atomic_helper_shutdown+0x5c/0xb0 [drm_kms_helper]
> [  802.066397]  i915_driver_unload+0x8a/0x120 [i915]
> [  802.066462]  i915_pci_remove+0x19/0x30 [i915]
> [  802.066470]  pci_device_remove+0x3e/0xc0
> [  802.066479]  device_release_driver_internal+0x18c/0x250
> [  802.066486]  device_release_driver+0x12/0x20
> [  802.066492]  pci_stop_bus_device+0x82/0xa0
> [  802.066498]  pci_stop_and_remove_bus_device_locked+0x1a/0x30
> [  802.066504]  remove_store+0x7c/0x90
> [  802.066509]  dev_attr_store+0x1b/0x30
> [  802.066515]  sysfs_kf_write+0x3b/0x50
> [  802.066520]  kernfs_fop_write+0x12e/0x1b0
> [  802.066526]  __vfs_write+0x3a/0x190
> [  802.066533]  ? common_file_perm+0x4d/0x140
> [  802.066538]  ? apparmor_file_permission+0x1a/0x20
> [  802.066546]  ? security_file_permission+0x2f/0xb0
> [  802.066554]  ? _cond_resched+0x19/0x30
> [  802.066559]  vfs_write+0xab/0x1b0
> [  802.066564]  ksys_write+0x55/0xc0
> [  802.066569]  __x64_sys_write+0x1a/0x20
> [  802.066576]  do_syscall_64+0x5a/0x110
> [  802.066583]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [  802.066588] RIP: 0033:0x7fcd72ae9154
> [  802.066589] Code: 89 02 48 c7 c0 ff ff ff ff c3 66 2e 0f 1f 84 00 00 0=
0 00 00 66 90 48 8d 05 b1 07 2e 00 8b 00 85 c0 75 13 b8 01 00 00 00 0f 05 <=
48> 3d 00 f0 ff ff 77 54 f3 c3 66 90 41 54 55 49 89 d4 53 48 89 f5
> [  802.066668] RSP: 002b:00007ffdc88ea2c8 EFLAGS: 00000246 ORIG_RAX: 0000=
000000000001
> [  802.066673] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007fcd7=
2ae9154
> [  802.066676] RDX: 0000000000000002 RSI: 0000561e2995ec20 RDI: 000000000=
0000001
> [  802.066678] RBP: 0000561e2995ec20 R08: 000000000000000a R09: 000000000=
0000001
> [  802.066681] R10: 000000000000000a R11: 0000000000000246 R12: 00007fcd7=
2dc5760
> [  802.066683] R13: 0000000000000002 R14: 00007fcd72dc12a0 R15: 00007fcd7=
2dc0760
> [  802.066689] ---[ end trace 45b9f0b00b7e9277 ]---
>
> --
> Thanks,
> Sasha



--=20
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
