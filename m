Return-Path: <panto@antoniou-consulting.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CC85C996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 02:50:39 +0000 (UTC)
Received: from li42-95.members.linode.com (li42-95.members.linode.com
	[209.123.162.95])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B1C292022C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 02:50:38 +0000 (UTC)
Mime-Version: 1.0 (Apple Message framework v1085)
Content-Type: text/plain; charset=us-ascii
From: Pantelis Antoniou <panto@antoniou-consulting.com>
In-Reply-To: <7701777.LWanFdz802@vostro.rjw.lan>
Date: Sun, 4 May 2014 19:44:27 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <93AA3E28-F354-42D8-B8F2-F2517493CE23@antoniou-consulting.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140504171807.GA4418@quad.lixom.net>
	<5366789F.4090800@roeck-us.net> <7701777.LWanFdz802@vostro.rjw.lan>
To: Rafael J. Wysocki <rjw@rjwysocki.net>
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Georgi Vlaev <georgi.vlaev@konsulko.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
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

Hi Rafael,

On May 4, 2014, at 3:02 PM, Rafael J. Wysocki wrote:

> Hi,
>=20
> On Sunday, May 04, 2014 10:27:59 AM Guenter Roeck wrote:
>> On 05/04/2014 10:18 AM, Olof Johansson wrote:
>=20
> [cut]
>=20
>>> I think it's very optimistic to assume that there will ever be a =
common
>>> solution for both ends of the spectrum (embedded - enterprise), but =
we
>>> should make sure we can stay sane and not have more solutions than =
we need
>>> in parallel, and that things will work together where there is =
overlap.
>>>=20
>> We (Juniper) are moving towards a partial conversion from ACPI to DT, =
pretty
>> much just enough to let us work with DT overlays on X86. If there is =
interest
>> to discuss this, it might make sense to invite Pantelis Antoniou and =
possibly
>> Georgi Vlaev, since both are instrumental to making it work.
>=20
> I actually wonder how you are going to handle things like references =
from
> a DT overlay to ACPI device objects in the namespace (like various =
things
> controllers etc).
>=20

At the moment we got dynamic PCI DT node creation; i.e. the PCI bus(es) =
is probed
and the platform's pci bios creates DT nodes; PCI nodes that already =
defined do not
get created from scratch, rather DT properties are appended to them.

It is not a whole-sale conversion (yet), but it seems to work find as a =
target for
DT overlays.

All this is on vanilla x86-64 btw, with very small fixes to get booted =
using an DT blob.

So far we didn't have to deal with ACPI device objects; perhaps it will =
be required
for when we tackle pure platform devices. But TBH it doesn't seem that =
difficult.

> Thanks!
>=20
> --=20
> I speak only for myself.
> Rafael J. Wysocki, Intel Open Source Technology Center.

Regards

-- Pantelis
