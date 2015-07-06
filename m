Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5BF28AB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 19:11:30 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CB3891AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  6 Jul 2015 19:11:29 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Andy Lutomirski <luto@amacapital.net>, Benjamin Herrenschmidt
	<benh@kernel.crashing.org>
Date: Mon, 6 Jul 2015 19:11:22 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F32AA333A@ORSMSX114.amr.corp.intel.com>
References: <1435997837.3948.21.camel@kernel.crashing.org>
	<CAPcyv4hsJDJwv-yEJiiy2ptn7QYbCA1+3s9gTQuhz_C9UKGGsg@mail.gmail.com>
	<1436065368.3948.48.camel@kernel.crashing.org>
	<CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
In-Reply-To: <CALCETrV82gJKhYbvdrqt3SHE6=42=QBKD8BcQPSukk2nzi1+EA@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Semantics of MMIO mapping
 attributes accross archs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

>> Another side topic that has come up in this space is the desire to
>> define a "memremap" api to clean up __iomem abuses for cases where
>> "memory-like" mappings are needed.
>>
>> https://lkml.org/lkml/2015/6/22/100
>
> Interesting. I had missed this. There is a similar question about
> semantics (ordering etc...), ie, are they the same as memory for
> example ?

The drivers/acpi/apei/* usages are just mapping bits of normal memory that
happens to be BIOS reserved.  ioremap*() got used because it was available
and did the right thing with the page tables even though it broke the __iom=
em
annotations.  memremap() sounds like a great idea for these.

-Tony
