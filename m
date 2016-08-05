Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8DFD371
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 19:28:15 +0000 (UTC)
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9D16F1A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 19:28:14 +0000 (UTC)
Received: by mail-yw0-f195.google.com with SMTP id j12so21950228ywb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 05 Aug 2016 12:28:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160805105420.GB1057@kroah.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160804102058.GT10376@sirena.org.uk>
	<CAL_JsqLFPdO5jfzA=eCnxMXa=oDb4ak=B3KkZ-T5_aV7cM653g@mail.gmail.com>
	<2402711.Aor2uS9Chj@wuerfel> <20160805105420.GB1057@kroah.com>
From: Rob Herring <robherring2@gmail.com>
Date: Fri, 5 Aug 2016 14:27:33 -0500
Message-ID: <CAL_JsqKNx0P4PgSbfK+saH7n47DTVJEUKKPB_ikn8S=saozdGw@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 5, 2016 at 5:54 AM, Greg KH <greg@kroah.com> wrote:
> On Fri, Aug 05, 2016 at 11:01:43AM +0200, Arnd Bergmann wrote:
>> On Thursday, August 4, 2016 9:59:30 PM CEST Rob Herring wrote:
>> > On Thu, Aug 4, 2016 at 5:20 AM, Mark Brown <broonie@kernel.org> wrote:
>> > > On Thu, Aug 04, 2016 at 11:50:49AM +0200, Greg KH wrote:
>> > >
>> > >> Nope, it doesn't work that way, sorry.
>> > >
>> > >> Nice try, just unwind your initialization properly
>> > >
>> > > Deferred probe is probably the best thing that ever happened for the
>> > > quality of kernel error handling
>> >
>> > Now we just need a way to force testing of the remove functions.
>>
>> Hmm, instead of calling just 'probe', we might first call probe,
>> then remove, then probe again as a compile-time option.
>>
>> What could possibly go wrong? ;-)
>
> Ooooh, that would be fun to see what blows up, anyone want to try it?

Well, I couldn't resist. Here's results from an x86 VM image.

There's some interesting side effects like this:

[    1.088470] input: QEMU Virtio Mouse as
/devices/pci0000:00/0000:00:07.0/virtio5/input/input2
[    1.089813] input: QEMU Virtio Mouse as
/devices/pci0000:00/0000:00:07.0/virtio5/input/input3
[    1.090945] input: QEMU Virtio Keyboard as
/devices/pci0000:00/0000:00:08.0/virtio6/input/input4
[    1.092275] input: QEMU Virtio Keyboard as
/devices/pci0000:00/0000:00:08.0/virtio6/input/input5

Then it blows up on the DRM driver which is virtio-gpu in this case.

[    1.277522] [drm] Initialized drm 1.1.0 20060810
[    1.277926] [drm] pci: virtio-gpu-pci detected
[    1.278389] [drm] virgl 3d acceleration enabled
[    1.278992] [drm] virtio vbuffers: 272 bufs, 192B each, 51kB total.
[    1.279487] [TTM] Zone  kernel: Available graphics memory: 506732 kiB
[    1.279931] [TTM] Initializing pool allocator
[    1.280247] [TTM] Initializing DMA pool allocator
[    1.280581] [drm] number of scanouts: 1
[    1.280847] [drm] number of cap sets: 1
[    1.281257] [drm] cap set 0: id 1, max-version 1, max-size 308
[    1.282451] virtio_gpu virtio4: fb0: virtiodrmfb frame buffer device
[    1.287125] [drm] Initialized virtio_gpu 0.0.1 0 on minor 0
[    1.291198] ------------[ cut here ]------------
[    1.291654] WARNING: CPU: 0 PID: 1 at
../drivers/gpu/drm/drm_mm.c:773 drm_mm_takedown+0x2a/0x30
[    1.292407] Memory manager not clean during takedown.
[    1.292752] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W
4.7.0-rc7+ #17
[    1.293257] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS rel-1.9.3-0-ge2fc41e-prebuilt.qemu-project.org 04/01/2014
[    1.294047]  0000000000000000 ffff88003e247bc8 ffffffff8133a383
ffff88003e247c18
[    1.294579]  0000000000000000 ffff88003e247c08 ffffffff81056ca1
000003053e247c20
[    1.295110]  ffff88003da904d8 ffff88003da90078 0000000000000000
ffff88003d6b9740
[    1.295648] Call Trace:
[    1.295821]  [<ffffffff8133a383>] dump_stack+0x65/0x92
[    1.296169]  [<ffffffff81056ca1>] __warn+0xc1/0xe0
[    1.296494]  [<ffffffff81056d0a>] warn_slowpath_fmt+0x4a/0x50
[    1.296883]  [<ffffffff819560a9>] ? _raw_spin_unlock+0x9/0x10
[    1.297271]  [<ffffffff8133bed6>] ? ida_destroy+0x16/0x20
[    1.297637]  [<ffffffff8142ccaa>] drm_mm_takedown+0x2a/0x30
[    1.298016]  [<ffffffff8143d656>] drm_vma_offset_manager_destroy+0x16/0x30
[    1.298480]  [<ffffffff814475c6>] ttm_bo_device_release+0xf6/0x120
[    1.298898]  [<ffffffff815142b1>] virtio_gpu_ttm_fini+0x11/0x40
[    1.299298]  [<ffffffff81510700>] virtio_gpu_driver_unload+0x60/0xc0
[    1.299736]  [<ffffffff81429564>] drm_dev_unregister+0x24/0xa0
[    1.300132]  [<ffffffff814295fe>] drm_put_dev+0x1e/0x60
[    1.300487]  [<ffffffff8150fff0>] virtio_gpu_remove+0x10/0x20
[    1.300876]  [<ffffffff813ce1cb>] virtio_dev_remove+0x3b/0xa0
[    1.301265]  [<ffffffff8151dbc4>] driver_probe_device+0xf4/0x3b0
[    1.301671]  [<ffffffff8151df16>] __driver_attach+0x96/0xa0
[    1.302048]  [<ffffffff8151de80>] ? driver_probe_device+0x3b0/0x3b0
[    1.302471]  [<ffffffff8151be0f>] bus_for_each_dev+0x5f/0x90
[    1.302855]  [<ffffffff8151dff9>] driver_attach+0x19/0x20
[    1.303221]  [<ffffffff8151c8e0>] bus_add_driver+0x1a0/0x210
[    1.303618]  [<ffffffff81f8d605>] ?
trace_event_define_fields_switch_mm+0xb3/0xb3
[    1.304121]  [<ffffffff8151e83b>] driver_register+0x5b/0xd0
[    1.304499]  [<ffffffff81f8d605>] ?
trace_event_define_fields_switch_mm+0xb3/0xb3
[    1.305003]  [<ffffffff813ce6fb>] register_virtio_driver+0x1b/0x30
[    1.305421]  [<ffffffff81f8d615>] virtio_gpu_driver_init+0x10/0x12
[    1.305841]  [<ffffffff81f49007>] do_one_initcall+0x8a/0x11a
[    1.306225]  [<ffffffff81f491f8>] kernel_init_freeable+0x161/0x1ec
[    1.306643]  [<ffffffff81950319>] kernel_init+0x9/0x100
[    1.306997]  [<ffffffff8195647f>] ret_from_fork+0x1f/0x40
[    1.307364]  [<ffffffff81950310>] ? rest_init+0x90/0x90
[    1.307736] ---[ end trace 143836688e11e498 ]---
[    1.308060] [TTM] Finalizing pool allocator
[    1.308364] [TTM] Finalizing DMA pool allocator
[    1.308826] [TTM] Zone  kernel: Used memory at exit: 5153 kiB
[    1.309274] [drm] virtio_gpu: ttm finalized
[    1.309576] ------------[ cut here ]------------
[    1.309893] kernel BUG at ../mm/slub.c:3657!
[    1.310187] invalid opcode: 0000 [#1] PREEMPT SMP
[    1.310507] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W
4.7.0-rc7+ #17
[    1.311014] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS rel-1.9.3-0-ge2fc41e-prebuilt.qemu-project.org 04/01/2014
[    1.311873] task: ffff88003e258000 ti: ffff88003e244000 task.ti:
ffff88003e244000
[    1.312451] RIP: 0010:[<ffffffff81172c54>]  [<ffffffff81172c54>]
kfree+0x144/0x180
[    1.313023] RSP: 0000:ffff88003e247cc8  EFLAGS: 00010246
[    1.313424] RAX: ffff88003ffd67e0 RBX: ffff88003da90000 RCX: 000000000002b840
[    1.313956] RDX: 0000000000000000 RSI: ffff88003fa176c0 RDI: ffff88003ffd67df
[    1.314482] RBP: ffff88003e247ce0 R08: 00000000000176c0 R09: ffffffff81510744
[    1.315008] R10: ffffea0000f6a400 R11: 0000000000000600 R12: ffff88003da99250
[    1.315542] R13: ffffffff8151074c R14: ffff88003da99250 R15: ffff88003fa16340
[    1.316080] FS:  0000000000000000(0000) GS:ffff88003fa00000(0000)
knlGS:0000000000000000
[    1.316680] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    1.317108] CR2: 0000000000000000 CR3: 0000000001e07000 CR4: 00000000000006f0
[    1.317674] Stack:
[    1.317828]  ffff88003da99250 ffff88003da99250 ffff88003da90000
ffff88003e247d10
[    1.318407]  ffffffff8151074c ffff88003d479800 ffff88003d479800
ffff88003e379408
[    1.318997]  ffffffff81ea2480 ffff88003e247d38 ffffffff81429564
ffff88003d479800
[    1.319564] Call Trace:
[    1.319749]  [<ffffffff8151074c>] virtio_gpu_driver_unload+0xac/0xc0
[    1.320221]  [<ffffffff81429564>] drm_dev_unregister+0x24/0xa0
[    1.320650]  [<ffffffff814295fe>] drm_put_dev+0x1e/0x60
[    1.321069]  [<ffffffff8150fff0>] virtio_gpu_remove+0x10/0x20
[    1.321628]  [<ffffffff813ce1cb>] virtio_dev_remove+0x3b/0xa0
[    1.322236]  [<ffffffff8151dbc4>] driver_probe_device+0xf4/0x3b0
[    1.322879]  [<ffffffff8151df16>] __driver_attach+0x96/0xa0
[    1.323425]  [<ffffffff8151de80>] ? driver_probe_device+0x3b0/0x3b0
[    1.323969]  [<ffffffff8151be0f>] bus_for_each_dev+0x5f/0x90
[    1.324349]  [<ffffffff8151dff9>] driver_attach+0x19/0x20
[    1.324719]  [<ffffffff8151c8e0>] bus_add_driver+0x1a0/0x210
[    1.325100]  [<ffffffff81f8d605>] ?
trace_event_define_fields_switch_mm+0xb3/0xb3
[    1.325600]  [<ffffffff8151e83b>] driver_register+0x5b/0xd0
[    1.325974]  [<ffffffff81f8d605>] ?
trace_event_define_fields_switch_mm+0xb3/0xb3
[    1.326472]  [<ffffffff813ce6fb>] register_virtio_driver+0x1b/0x30
[    1.326886]  [<ffffffff81f8d615>] virtio_gpu_driver_init+0x10/0x12
[    1.327298]  [<ffffffff81f49007>] do_one_initcall+0x8a/0x11a
[    1.327688]  [<ffffffff81f491f8>] kernel_init_freeable+0x161/0x1ec
[    1.328104]  [<ffffffff81950319>] kernel_init+0x9/0x100
[    1.328455]  [<ffffffff8195647f>] ret_from_fork+0x1f/0x40
[    1.328816]  [<ffffffff81950310>] ? rest_init+0x90/0x90
[    1.329167] Code: c0 75 e6 65 ff 0d 5d 97 e9 7e 74 05 e9 eb fe ff
ff e8 d9 e3 e8 ff e9 e1 fe ff ff 49 8b 02 f6 c4 40 75 0a 49 8b 42 20
a8 01 75 02 <0f> 0b 49 8b 02 31 f6 f6 c4 40 74 04 41 8b 72 6c 4c 89 d7
e8 44
[    1.330960] RIP  [<ffffffff81172c54>] kfree+0x144/0x180
[    1.331318]  RSP <ffff88003e247cc8>
[    1.331592] ---[ end trace 143836688e11e499 ]---
