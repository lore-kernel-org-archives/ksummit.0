Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 570A240F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Oct 2017 01:02:50 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1BBC4174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Oct 2017 01:02:48 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Theodore Ts'o <tytso@mit.edu>
Date: Fri, 20 Oct 2017 02:53:05 +0200
Message-ID: <2702341.d09qLObUfe@aspire.rjw.lan>
In-Reply-To: <20171013001534.x35ipyu5fg3pdbaa@thunk.org>
References: <20171013001534.x35ipyu5fg3pdbaa@thunk.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Draft Agenda for the Kernel Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Ted,

On Friday, October 13, 2017 2:15:34 AM CEST Theodore Ts'o wrote:
> The following is a draft agenda for the Kernel Summit.
> 
> Please note that three are still a number of TBD slots, and there will
> also be another room available for unconference topics.  The timeslots
> are still largely arbitrary and subject to change.
> 
> Please comment and propose any requests you might have for schedule
> changes, things that you would like to talk about, etc.

I haven't CCed you directly on my recent tech-topic message, so
let me repeat it below:

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

At least Ulf is interested in this too, but it should be at least
tangentially interesting to other people at the KS too.

Thanks,
Rafael
