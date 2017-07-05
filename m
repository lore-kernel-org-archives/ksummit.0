Return-Path: <SRS0=19W6=6I=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3C8F6BEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 14:33:39 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26735271
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 14:33:38 +0000 (UTC)
Date: Wed, 5 Jul 2017 10:33:35 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20170705103335.0cbd9984@gandalf.local.home>
In-Reply-To: <20170705140607.GA30187@kroah.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Jul 2017 16:06:07 +0200
Greg KH <greg@kroah.com> wrote:

> On Wed, Jul 05, 2017 at 09:27:57AM -0400, Steven Rostedt wrote:
> > Your "b" above is what I would like to push. But who's going to enforce
> > this? With 10,000 changes per release, and a lot of them are fixes, the
> > best we can do is the honor system. Start shaming people that don't
> > have a regression test along with a Fixes tag (but we don't want people
> > to fix bugs without adding that tag either). There is a fine line one
> > must walk between getting people to change their approaches to bugs and
> > regression tests, and pissing them off where they start doing the
> > opposite of what would be best for the community. =20
>=20
> I would bet, for the huge majority of our fixes, they are fixes for
> specific hardware, or workarounds for specific hardware issues.  Now
> writing tests for those is not an impossible task (look at what the i915
> developers have), but it is very very hard overall, especially if the
> base infrastructure isn't there to do it.
>=20
> For specific examples, here's the shortlog for fixes that went into
> drivers/usb/host/ for 4.12 after 4.12-rc1 came out.  Do you know of a
> way to write a test for these types of things?
> 	usb: xhci: ASMedia ASM1042A chipset need shorts TX quirk
> 	usb: xhci: Fix USB 3.1 supported protocol parsing
> 	usb: host: xhci-plat: propagate return value of platform_get_irq()
> 	xhci: Fix command ring stop regression in 4.11
> 	xhci: remove GFP_DMA flag from allocation
> 	USB: xhci: fix lock-inversion problem
> 	usb: host: xhci-ring: don't need to clear interrupt pending for MSI enab=
led hcd
> 	usb: host: xhci-mem: allocate zeroed Scratchpad Buffer
> 	xhci: apply PME_STUCK_QUIRK and MISSING_CAS quirk for Denverton
> 	usb: xhci: trace URB before giving it back instead of after
> 	USB: host: xhci: use max-port define
> 	USB: ehci-platform: fix companion-device leak
> 	usb: r8a66597-hcd: select a different endpoint on timeout
> 	usb: r8a66597-hcd: decrease timeout
>=20
> And look at the commits with the "Fixes:" tag in it, I do, I read every
> one of them.  See if writing a test for the majority of them would even
> be possible...
>=20
> I don't mean to poo-poo the idea, but please realize that around 75% of
> the kernel is hardware/arch support, so that means that 75% of the
> changes/fixes deal with hardware things (yes, change is in direct
> correlation to size of the codebase in the tree, strange but true).

I would say that if it's for a specific hardware, then it's really up
to the maintainer if there should be a test or not. As a lot of these
is just to deal with some quirk or non standard that the hardware does.
But are these regressions, or just some feature that's been broken on
that hardware since its conception?

That is, Thorsten this is more for you, how much real regressions are in
hardware? A bug that's been there forever is not a regression. It's a
feature ;-)  A regression is something that use to work and now does
not. Is that number still as high with hardware? Those probably could
be where tests can be focused on.

I'm worried more about infrastructure too. I would look at general
functionality of say USB, to see if something can be written to test a
device. Using the one change above that actually mentions "regression"
would it be possible to test completion codes? (I have no idea, I only
read the change log and I'm speaking out of my derri=C3=A8re)

If we have a bunch of generic tests that can test hardware (general
video tests, USB tests, network cards, etc) and people ran these on
their own hardware, and it were to trigger a failure, then it would be
easier for users to report these issues to the maintainers. And these
would be easier to find and fix.

No test should be written for a single specific hardware. It should be a
general functionality that different hardware can execute.

>=20
> If only I had a subsystem that didn't have to deal with hardware, that
> must be so easy to work with :)

*smack*!  ;-)

-- Steve
