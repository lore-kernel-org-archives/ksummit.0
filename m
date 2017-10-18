Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8F55BAD6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 11:26:52 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 920FD4EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 11:26:51 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 18 Oct 2017 13:17:12 +0200
Message-ID: <1647817.aU4A16bmHW@aspire.rjw.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [Ksummit-discuss] [TECH TOPIC] Device power management during
	system-wide PM transitions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

If this isn't too late, I'd like to put a PM topic on the agenda.

One problem basically is that runtime PM interacts with system-wide PM for
devices in ways that need to be taken care of.  The most common patterns are:

- What if a device is in runtime suspend before system suspend?  Can it
  remain suspended and under what conditions if so?

- Can devices be left in suspend when the system is resuming from
  system-wide suspend?

- Can driver runtime PM callbacks be used for system-wide PM too and to
  what extent?  If they can, how to make that happen?

We have tried to address these points in a couple of different ways so
far, but none of them is universal enough.  Moreover, one approach is
mostly for systems with PCI/ACPI and the other one is used on systems
without those and they both are not compatible.  That sort of didn't
matter until IP block sharing between vendors led to situations in
which one and the same driver is expected to work in both environments.

It would be good to have a common approach and IMO it should be based on
changing the PM core to help address the most common cases, so I posted
a set of patches to that end:

https://marc.info/?l=linux-kernel&m=150811822405206&w=2

and I'd like to have a discussion regarding that and it spans many
different subsystems potentially, so the KS seems to be the right venue
for that discussion to happen.

The second issue is that some bus types and quite a few drivers still use
legacy power management callbacks and I'd like to get rid of those at last,
first from the bus types and then from drivers too.  That's more of a
heads-up thing, but also possibly touches multiple places, so should be
suitable for a KS session as well.

Thanks,
Rafael
