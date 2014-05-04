Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 174298CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 12:12:24 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 4D8441FAA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 12:12:23 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mark Brown <broonie@kernel.org>
Date: Sun, 04 May 2014 14:28:59 +0200
Message-ID: <3007964.pJHjDrtZps@vostro.rjw.lan>
In-Reply-To: <20140503020242.GD22111@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan>
	<20140503020242.GD22111@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dvhart@dvhart.com,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
	etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, May 02, 2014 07:02:42 PM Mark Brown wrote:
> 
> --sXc4Kmr5FA7axrvy
> Content-Type: text/plain; charset=us-ascii
> Content-Disposition: inline
> 
> On Sat, May 03, 2014 at 02:05:21AM +0200, Rafael J. Wysocki wrote:
> > On Friday, May 02, 2014 02:42:07 PM Olof Johansson wrote:
> 
> > > Some of the ideas I have heard discussed are:
> > > * Adding a new common API for resource management which will have
> > > backends for ACPI or DT depending on platform
> 
> > I would like to do this, personally, because I believe that drivers
> > should not need to add support for any particular firmware interfaces
> > directly (except for listing matching device IDs).
> 
> The trouble with this is that the different firmware interfaces have
> rather different ideas about how things should work.  Basic things like
> interrupts are generally fine but more complex things like the way that
> devices integrate with system power management are much more up in the
> air.

In my opinion, device drivers should not be concerned about that really.
The layers of code above them (bus types etc.) should, but not drivers
themselves, because that makes it difficult to use the same driver
for the same piece of hardware on two systems with different firmware
interfaces.

Thanks!


-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
