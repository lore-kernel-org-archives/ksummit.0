Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4565798F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Aug 2014 18:03:10 +0000 (UTC)
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1E83520204
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Aug 2014 18:03:08 +0000 (UTC)
Received: by mail-ie0-f171.google.com with SMTP id at1so3339890iec.30
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Aug 2014 11:03:08 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <53F4E2DF.6010505@dvhart.com>
Date: Wed, 20 Aug 2014 13:03:11 -0500
From: Darren Hart <darren@dvhart.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: "mika.westerberg@linux.intel.com" <mika.westerberg@linux.intel.com>
Subject: [Ksummit-discuss] Unconference Read-Out: Device Model / Driver
	Properties / ACPI _DSD
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Device Model / Driver Properties / ACPI _DSD

This was a fairly uneventful session with only a few minor changes required to
the patches Mika Westerberg sent out for review. There was some valuable
consensus reached with respect to guiding principles and next steps.

ACPI _DSD Device Specific Data
   * _DSD+UUID provides for free-form hardware description to ACPI
   * This enables ACPI to provide DT schema data
   * Agreed that for existing drivers, the existing schemas should be common
     across implementations

Unified Driver Properties Interface
   * The device_property* interface allows for firmware-agnostic property access
     for drivers
   * Update drivers as needed - not in a giant sweeping patch (Grant)
   * For the few broken schemas, better to have the schema broken everywhere.
     Ultimately, the driver is in charge (Grant)
   * Some drivers will remain firmware-specific. In existing drivers, _DSD is
     primarily useful for pdata creation. Other uses include config augmentation
     of existing ACPI or PCI devices.
   * We will rename the interfaces to be closer to the of_* names (Olof)
   * We will eliminate the ops pointer in favor of checks for ACPI or OF in the
     two accessors. We can address this if the function count or the backend
     count grows above three or so. (Grant)
   * Where appropriate, subsystem accessors like those provided by gpiolib
     should be used as opposed to freeform properties. This is especially true
     whenever a DT or ACPI specific data format is required.

Enumeration / Driver Matching
   * Preference for new drivers is to get a new HID
   * For the existing 250+ OF aware drivers, we don't want to allocate so many
     new HIDs
   * We will use a common DT-compatible type HID, PRP0001 is preferred over
     PRP0000 to avoid unintentional matches. (HPA)
   * Such DSDs will include a "compatible" property which must also match by the
     driver core, using the DT match table.
   * Some existing OF-only drivers blindly assume OF and will break if matched
     to an ACPI enumerated/described device.
   * The "compatible" property should include some kind of ACPI namespacing,
     such as "acpi,<drivername>" to allow drivers to easily know where it came
     from, and to prevent matching if necessary (Olof, Grant)

Thanks,

Darren Hart
Intel Opensource Technology Center
