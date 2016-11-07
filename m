Return-Path: <mcgrof@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 87ADAB1E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  7 Nov 2016 20:40:18 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EA9371B8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  7 Nov 2016 20:40:15 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id 684612025B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  7 Nov 2016 20:40:14 +0000 (UTC)
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 21C3C200E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  7 Nov 2016 20:40:13 +0000 (UTC)
Received: by mail-ua0-f172.google.com with SMTP id 51so130107497uai.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 07 Nov 2016 12:40:13 -0800 (PST)
MIME-Version: 1.0
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Mon, 7 Nov 2016 12:39:51 -0800
Message-ID: <CAB=NE6XYBj0h7rYL8yWwACUHF7ni0AMeCe4Rf2dfbjRQ=KY78g@mail.gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=UTF-8
Cc: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: [Ksummit-discuss] Complex dependencies - tech topic notes
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Here are my own notes from what ended up being 2 sessions, 1
whiteboard session followed up by a few other hallway tracks from the
complex dependency tech topic at KS/Plumbers. Please provide your own
notes or feel free to help complete some points below if you have
anything to contribute, or let's just follow up through patch review
on Rafael's and Andrzej's work -- I'll be doing this in light of the
below notes.

My original goal really was to narrow down which subsystems might use
a graph to express dependencies, and which might perform a topological
sort on that graph in the kernel. The end goal being if we could
abstract and share a solution rather than re-inventing the wheel. Then
review this in consideration of Rafael's new patches on functional
dependencies, Andrzej Hajda's new patches on Resource tracking /
allocation tracking. As expressed in the threads and in the sessions
though there was an ultimate suspicion this could also help as an
optimization with probe ordering and to help replace deferred probe,
this turned out to be the main focus of much of the white board
session. The itemized list below represents some areas of the kernel
that came out through hallway tracks follow up discussions.

Other topics reviewed were dependency cycle resolution and generic
drivers. Cycles may arise due to topology changes (for instance
hotplug), and if cycles exist in the worst case we end up with an
NP-complete order problem, otherwise its a linear problem. One simple
proposal for cycle resolution that everyone seemed to reach consensus
for was to strive towards using a graph representation for devices per
operation or type of device. The topic of Generic drivers was pretty
broad on its own so we left this out.

Sadly Andrzej Hajda was not present, nor was anyone familiar with his
patches... so most review was done in light of Rafael's patches now
merged in Greg's tree.

So to recap -- are there areas in the kernel where we implement and
use a topological sort
on a graph ? What algorithms are used and could we abstract such code and
share it between subsystems ?

A) DAPM (Dynamic Audio Power Management)
- Summary: TBD
B) Component (DRM, ALSA, others) see commit 2a41e6070dd7e ("drivers/base:
provide an infrastructure for componentised subsystems")
- drivers/base/component.c
- include/linux/component.h
- Summary: TBD
C) v4l2-async:
- drivers/media/v4l2-core/v4l2-async.c
- Summary: TBD
D) x86 PCI IOMMU initialization
- arch/x86/include/asm/iommu_table.h
- arch/x86/kernel/pci-iommu_table.c
- Summary: Provides a simple sort with memmove() by using a special
ELF section, uses a detect and depends, with flags to annotate
dependencies. Not worth it to generalize given the sort is very
specific to the size / focus of the functionality implemetned, if we
wanted to share the technique we'd need to agree on an opaque data
structure, I don't see this as needed yet.
E) ACPI / platform firmware device registration
- Due to some issues here Rafael proposed the new device functional
dependency patches
- Summary: this has no *explicit* topological sort, instead it has an
implicit sort. The topology used is what defines today's device
registration order. Order is established first after the ACPI
namespace is walked and then devices are enumerated. Each device is
enumerated/registered serially, once buses are enumerated they
continue serially with devices on their bus, async mechanisms may
optionally be implemetned per bus (SCSCI has it sown async probe
solution, we also now have a generic optional solution async_probe).
In theory order should be correct, but both async mechanisms *and*
firmware bugs on ACPI could lead to misordering if dependencies are
not handled correctly.
F) Media controller
- Summary: Exports the graph to userspace. There is no need to do a
topological sort given other subsystem specific functionality such as
v4l2-async and/or component (B above) already deals with the ordering
of devices for it. It uses an ioctl mechanism to enable the kernel to
send a representation of the graph to userspace. It could be possible
and reasonable to make this opaque, to enable other subsystems/users
to take advantage of the graph representation in userspace
G) Linker tables
- In development
- Summary: currently only link time sort provided using /usr/bin/ld
link -T linker script SORT(). Run time sort is not needed yet, but the
x86 PCI IOMMU run time sort remains one solution with a  precedent. In
the future it may be possible to extend initialization levels beyond
the 7 levels we have today, this may provide more finer grained device
level initialization splits which could help today's implicit sort but
we can address this later once and if the basic first set of patches
for linker tables gets merged.

Rafael's patches do not deal with sorting at all given it relies on
the implicit sort provided by today's platform firmware (ACPI
enumeration described above). It currently only helps provide for
adjustments in the dpm list for suspend/resume. Limitations pointed
out during the whiteboard session for re-using Rafael's device links
framework to help optimize probe ordering are that device tree
annotates dependencies using device tree nodes, a struct device does
not exist for some of these references. Future extensions can be
considered and are welcomed.

I'll go provide feedback on Rafael's patches now :)

 Luis
