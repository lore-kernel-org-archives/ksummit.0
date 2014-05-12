Return-Path: <rafael.j.wysocki@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AF4EF942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 22:03:46 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 55B4D20367
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 22:03:46 +0000 (UTC)
Message-ID: <5371453E.2070108@intel.com>
Date: Tue, 13 May 2014 00:03:42 +0200
From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<3007964.pJHjDrtZps@vostro.rjw.lan>
	<1399279528.20388.37.camel@pasglop>
	<2059176.eyfmTsLPbt@vostro.rjw.lan>
	<20140512215925.GY12304@sirena.org.uk>
In-Reply-To: <20140512215925.GY12304@sirena.org.uk>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: dvhart@dvhart.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

On 5/12/2014 11:59 PM, Mark Brown wrote:
> On Tue, May 06, 2014 at 02:22:15PM +0200, Rafael J. Wysocki wrote:
>> On Monday, May 05, 2014 06:45:28 PM Benjamin Herrenschmidt wrote:
>>> On Sun, 2014-05-04 at 14:28 +0200, Rafael J. Wysocki wrote:
>>>> In my opinion, device drivers should not be concerned about that
>>>> really.
>>>> The layers of code above them (bus types etc.) should, but not drivers
>>>> themselves, because that makes it difficult to use the same driver
>>>> for the same piece of hardware on two systems with different firmware
>>>> interfaces.
>>> Only for standardized resource types, such as mmio ranges or interrupts.
>>> Anything else is absolutely in the domain of competence of the driver
>>> and I would argue *only* in the domain of competence of the driver.
>> But why can't we treat DT bindings as a standard?
> Aside from the whole question of people bothering to pay attention to
> the specs when writing their BIOSs DTs (as used in modern systems) and
> ACPI have quite different models for what should be handled where - FDT
> is pure data and expects the kernel to do everything while ACPI expects
> to be used with active firmware.

While in practice ACPI is used on systems with active firmware usually, 
there's no expectation like this in ACPI itself in principle.
