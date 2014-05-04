Return-Path: <catalin.marinas@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 62F79918
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 11:15:12 +0000 (UTC)
Received: from collaborate-mta1.arm.com (fw-tnat.austin.arm.com
	[217.140.110.23])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id EEBC52020D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 11:15:11 +0000 (UTC)
Date: Sun, 4 May 2014 12:14:36 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20140504111436.GC15180@arm.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan> <6728604.hICTKAEWzt@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6728604.hICTKAEWzt@wuerfel>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Sat, May 03, 2014 at 04:14:51PM +0100, Arnd Bergmann wrote:
> On Saturday 03 May 2014 02:05:21 Rafael J. Wysocki wrote:
> > On Friday, May 02, 2014 02:42:07 PM Olof Johansson wrote:
> > > * Converting either of them to use platform device model
> > > (platform_data) to register drivers, and leave them unaware of either
> > > hardware description
> > > * [... I'm likely missing something here as well]
> 
> Olof, funny you missed the proposal you made yourself:
> 
>  * convert ACPI data into DT format at boot time

I thought this was discussed at length and agreed it's not a way
forward, given the differences between ACPI and DT, especially on the
AML feature which DT does not have (making one-off boot-time conversion
not feasible).

> > For what it's worth, we are working on extending ACPI to allow DT-style
> > information to be included into ACPI tables.
> 
> I think it's important to understand that we have people coming from
> two sides here: Intel x86 embedded systems with ACPI wanting to the
> same things we do on embbeded PowerPC and ARM systems with DT, and ARM64
> servers trying to do the same things that x86 servers do by moving
> to ACPI.
> 
> These two have very different requirements and while there is some
> overlap, I suspect we will end up with different solutions as well.

I think the middle ground is that for x86 to get into embedded and ARM64
into servers, the ACPI spec is not enough as hardware description.
Traditionally, the x86 hardware is rather standard and ACPI didn't need
to describe so many things. On ARM, OTOH, we have lots of variation and
DT provides such flexibility. Even if ARM is pushing for more standard
server hardware like SBSA, it's still relaxed enough not to look like a
PC platform. So even if the aims are different, the x86 efforts on more
hw description in ACPI help both Intel and ARM. Given the collaboration
between the two on ACPI forums already, I think there are good chances
of ending up with a common solution for Linux. Of course, x86 may decide
to go the DT route all the way (and ARM in the other direction ;)).

-- 
Catalin
