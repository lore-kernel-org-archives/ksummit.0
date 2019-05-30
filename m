Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6C59131EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 06:02:45 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C87FD875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 06:02:44 +0000 (UTC)
Date: Thu, 30 May 2019 02:02:35 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190530060235.GA30567@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: Megha Dey <megha.dey@linux.intel.com>
Subject: [Ksummit-discuss] [TECH TOPIC] Interrupt Message Store: A scalable
 interrupt mechanism for the cloud
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Megha Dey <megha.dey@linux.intel.com>

[ Note: The following abstract was submitted via the Linsux Plumbers
  Conference website.  Per the instructions that were posted for the
  Maintainer's / Kernel Summit Call for Proposals[1], the proposal
  should also be posted on the ksummit-discuss list, so that people
  can comment on the proposal, and perhaps start a discussion before
  the summit.

  [1] https://lwn.net/Articles/788378/

  Please note that topic proposals for both the Kernel Summit and the
  Maintainer's Summit are still welcome, and the deadline has been
  extended to June 3rd. -- Ted ]

With virtualization being the key to the success of cloud computing,
Intel's introduction of the Scalable IO Virtualization (SIOV) aims to
further the cause by shifting the creation of assignable virtual
devices from hardware to a more software assisted approach. Using
SIOV, a device resource can be mapped directly to guest or other user
space drivers for near native DMA (Direct Memory Access)
performance. This flexible composition of direct assignable devices
a.k.a. Assignable Device Interfaces (ADIs) is device specific and
light weight, thus making them highly scalable. SIOV enables simpler
device designs by unchaining hardware from costly PCI standard and can
help address limitations associated with direct device assignment.

Until now, message signaled interrupts (MSI and MSI-X) were the de
facto standard for device interrupt mechanism and could support up to
2048 interrupts per device. But now with SIOV, there is a need to
support a large number of ADIs (>2048), through a matching scalable
interrupt management mechanism to service these ADIs.

Interrupt message storage (IMS) is conceived as a scalable albeit
device specific interrupt mechanism to meet such a demand. It allows
non-PCI standard storage and enumeration of MSI address/data pair to
reduce hardware overhead and achieve scalability. The size, location,
and storage format for IMS is device-specific; some devices may
implement IMS as on-device storage, while other devices may implement
IMS in host memory.

Also, one of the limitations with the current Linux MSI-X code is that
PCIe device MSI-x enablement and allocation is static. i.e. device
driver gets only one chance to enable MSI-X vectors, usually during
probe. With IMS, we aim to make the vector negotiation with the OS
dynamic, deferring vector allocation to post probe phase, where actual
demand information is available.

Through this presentation, the audience can view the internals of the
complex and ever evolving Linux interrupt subsystem and understand how
IMS can fit into the maze of interrupt domains, chips, remapping
etc. Also, an initial IMS Linux implementation will be presented with
highlights on some of the unique implementation challenges. We will
conclude by demonstrating a test case using the SIOV enabled device as
an example for a complete view of IMS in a scalable virtualization
environment.
