Return-Path: <ulf.hansson@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6C4417A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Oct 2017 08:55:44 +0000 (UTC)
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BEAAE488
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Oct 2017 08:55:43 +0000 (UTC)
Received: by mail-io0-f182.google.com with SMTP id 101so9088216ioj.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Oct 2017 01:55:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1647817.aU4A16bmHW@aspire.rjw.lan>
References: <1647817.aU4A16bmHW@aspire.rjw.lan>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Oct 2017 10:55:42 +0200
Message-ID: <CAPDyKFqFDH7kupxkQfEm9jMuGvOC1Nt2s7ydG2Xp78R8Y_NVdA@mail.gmail.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset="UTF-8"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Device power management during
	system-wide PM transitions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 18 October 2017 at 13:17, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> Hi,
>
> If this isn't too late, I'd like to put a PM topic on the agenda.
>
> One problem basically is that runtime PM interacts with system-wide PM for
> devices in ways that need to be taken care of.  The most common patterns are:
>
> - What if a device is in runtime suspend before system suspend?  Can it
>   remain suspended and under what conditions if so?
>
> - Can devices be left in suspend when the system is resuming from
>   system-wide suspend?
>
> - Can driver runtime PM callbacks be used for system-wide PM too and to
>   what extent?  If they can, how to make that happen?
>
> We have tried to address these points in a couple of different ways so
> far, but none of them is universal enough.  Moreover, one approach is
> mostly for systems with PCI/ACPI and the other one is used on systems
> without those and they both are not compatible.  That sort of didn't
> matter until IP block sharing between vendors led to situations in
> which one and the same driver is expected to work in both environments.
>
> It would be good to have a common approach and IMO it should be based on
> changing the PM core to help address the most common cases, so I posted
> a set of patches to that end:
>
> https://marc.info/?l=linux-kernel&m=150811822405206&w=2
>
> and I'd like to have a discussion regarding that and it spans many
> different subsystems potentially, so the KS seems to be the right venue
> for that discussion to happen.
>
> The second issue is that some bus types and quite a few drivers still use
> legacy power management callbacks and I'd like to get rid of those at last,
> first from the bus types and then from drivers too.  That's more of a
> heads-up thing, but also possibly touches multiple places, so should be
> suitable for a KS session as well.
>
> Thanks,
> Rafael
>

Rafael, thanks for suggesting this topic, of course I share your
interest in discussion this in Prague.

Kind regards
Uffe
