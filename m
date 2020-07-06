Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E01AC433DF
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 07:10:51 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D3B52070C
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 07:10:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D3B52070C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38907880C6;
	Mon,  6 Jul 2020 07:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QTA9YcxlC-5i; Mon,  6 Jul 2020 07:10:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFA3788055;
	Mon,  6 Jul 2020 07:10:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C3A68C0888;
	Mon,  6 Jul 2020 07:10:48 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E88EC016F;
 Mon,  6 Jul 2020 07:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 849CA842F8;
 Mon,  6 Jul 2020 07:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 000RlbEz7b1Y; Mon,  6 Jul 2020 07:10:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A77E1842AC;
 Mon,  6 Jul 2020 07:10:45 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 530D0AEE4;
 Mon,  6 Jul 2020 07:10:44 +0000 (UTC)
From: NeilBrown <neilb@suse.com>
To: Matthew Wilcox <willy6545@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>
Date: Mon, 06 Jul 2020 17:10:37 +1000
In-Reply-To: <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
Message-ID: <87h7ul15le.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Cc: Chris Mason <clm@fb.clm>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 tech-board-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1058548424669292091=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

--===============1058548424669292091==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Sat, Jul 04 2020, Matthew Wilcox wrote:

> Another suggestion for "slave" replacement should be "device". This is in
> the context of the w1 bus which is by far the largest user of the
> master/slave terminology in the kernel.

Ugh.  Please, no.  "device" doesn't mean anything, in that you can use
it to refer to any thing.  (i.e. it is almost semantically equivalent to
"thing").
Look in /sys/devices.  Everything in there is a device, and (nearly)
every thing is in there.

NeilBrown

>
> On Sat., Jul. 4, 2020, 16:19 Dan Williams, <dan.j.williams@intel.com> wrote:
>
>> Recent events have prompted a Linux position statement on inclusive
>> terminology. Given that Linux maintains a coding-style and its own
>> idiomatic set of terminology here is a proposal to answer the call to
>> replace non-inclusive terminology.
>>
>> Cc: Jonathan Corbet <corbet@lwn.net>
>> Cc: Kees Cook <keescook@chromium.org>
>> Signed-off-by: Chris Mason <clm@fb.clm>
>> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
>> ---
>>  Documentation/process/coding-style.rst          |   12 ++++
>>  Documentation/process/inclusive-terminology.rst |   64
>> +++++++++++++++++++++++
>>  Documentation/process/index.rst                 |    1
>>  3 files changed, 77 insertions(+)
>>  create mode 100644 Documentation/process/inclusive-terminology.rst
>>
>> diff --git a/Documentation/process/coding-style.rst
>> b/Documentation/process/coding-style.rst
>> index 2657a55c6f12..4b15ab671089 100644
>> --- a/Documentation/process/coding-style.rst
>> +++ b/Documentation/process/coding-style.rst
>> @@ -319,6 +319,18 @@ If you are afraid to mix up your local variable
>> names, you have another
>>  problem, which is called the function-growth-hormone-imbalance syndrome.
>>  See chapter 6 (Functions).
>>
>> +For symbol names, avoid introducing new usage of the words 'slave' and
>> +'blacklist'. Recommended replacements for 'slave' are: 'secondary',
>> +'subordinate', 'replica', 'responder', 'follower', 'proxy', or
>> +'performer'.  Recommended replacements for blacklist are: 'blocklist' or
>> +'denylist'.
>> +
>> +Exceptions for introducing new usage is to maintain a userspace ABI, or
>> +when updating code for an existing (as of 2020) hardware or protocol
>> +specification that mandates those terms. For new specifications consider
>> +translating specification usage of the terminology to the kernel coding
>> +standard where possible. See :ref:`process/inclusive-terminology.rst
>> +<inclusiveterminology>` for details.
>>
>>  5) Typedefs
>>  -----------
>> diff --git a/Documentation/process/inclusive-terminology.rst
>> b/Documentation/process/inclusive-terminology.rst
>> new file mode 100644
>> index 000000000000..a8eb26690eb4
>> --- /dev/null
>> +++ b/Documentation/process/inclusive-terminology.rst
>> @@ -0,0 +1,64 @@
>> +.. _inclusiveterminology:
>> +
>> +Linux kernel inclusive terminology
>> +==================================
>> +
>> +The Linux kernel is a global software project, and in 2020 there was a
>> +global reckoning on race relations that caused many organizations to
>> +re-evaluate their policies and practices relative to the inclusion of
>> +people of African descent. This document describes why the 'Naming'
>> +section in :ref:`process/coding-style.rst <codingstyle>` recommends
>> +avoiding usage of 'slave' and 'blacklist' in new additions to the Linux
>> +kernel.
>> +
>> +On the triviality of replacing words
>> +====================================
>> +
>> +The African slave trade was a brutal system of human misery deployed at
>> +global scale. Some word choice decisions in a modern software project
>> +does next to nothing to compensate for that legacy. So why put any
>> +effort into something so trivial in comparison? Because the goal is not
>> +to repair, or erase the past. The goal is to maximize availability and
>> +efficiency of the global developer community to participate in the Linux
>> +kernel development process.
>> +
>> +Word choice and developer efficiency
>> +====================================
>> +
>> +Why does any software project go through the trouble of developing a
>> +document like :ref:`process/coding-style.rst <codingstyle>`? It does so
>> +because a common coding style maximizes the efficiency of both
>> +maintainers and developers. Developers learn common design patterns and
>> +idiomatic expressions while maintainers can spot deviations from those
>> +norms. Even non-compliant whitespace is considered a leading indicator
>> +to deeper problems in a patchset. Coding style violations are known to
>> +take a maintainer "out of the zone" of reviewing code. Maintainers are
>> +also sensitive to word choice across specifications and often choose to
>> +deploy Linux terminology to replace non-idiomatic word-choice in a
>> +specification.
>> +
>> +Non-inclusive terminology has that same distracting effect which is why
>> +it is a style issue for Linux, it injures developer efficiency.
>> +
>> +Of course it is around this point someone jumps in with an etymological
>> +argument about why people should not be offended. Etymological arguments
>> +do not scale. The scope and pace of Linux to reach new developers
>> +exceeds the ability of historical terminology defenders to describe "no,
>> +not that connotation". The revelation of 2020 was that black voices were
>> +heard on a global scale and the Linux kernel project has done its small
>> +part to answer that call as it wants black voices, among all voices, in
>> +its developer community.
>> +
>> +Really, 'blacklist' too?
>> +========================
>> +
>> +While 'slave' has a direct connection to human suffering the etymology
>> +of 'blacklist' is devoid of a historical racial connection. However, one
>> +thought exercise is to consider replacing 'blacklist/whitelist' with
>> +'redlist/greenlist'. Realize that the replacement only makes sense if
>> +you have been socialized with the concepts that 'red/green' implies
>> +'stop/go'. Colors to represent a policy requires an indirection. The
>> +socialization of 'black/white' to have the connotation of
>> +'impermissible/permissible' does not support inclusion.
>> +
>> +Inclusion == global developer community efficiency.
>> diff --git a/Documentation/process/index.rst
>> b/Documentation/process/index.rst
>> index f07c9250c3ac..ed861f6f8d25 100644
>> --- a/Documentation/process/index.rst
>> +++ b/Documentation/process/index.rst
>> @@ -27,6 +27,7 @@ Below are the essential guides that every developer
>> should read.
>>     submitting-patches
>>     programming-language
>>     coding-style
>> +   inclusive-terminology
>>     maintainer-pgp-guide
>>     email-clients
>>     kernel-enforcement-statement
>>
>> _______________________________________________
>> Ksummit-discuss mailing list
>> Ksummit-discuss@lists.linuxfoundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEG8Yp69OQ2HB7X0l6Oeye3VZigbkFAl8Czm0ACgkQOeye3VZi
gblWkQ/+L6Z7fCLEPlLNM0sLpOAhNewiZyjXujpTLxlSbCe+ABRjjbqDh/sUwN+5
nvTZVDDK6NxqA9jxkLB2prZs6kugGPkWDqYWPF7/UB+gH+l2QaAUiKukqgqfBLQ2
LgjYkQ9d7OirdiniSFAd7WXsOILf7p4sjJVL0aFYBQfQ9lvf36J5k3aR8q+KE/9C
salFa8rjeDgAZkAtTAfj25knF/UP8K3Q4h+3JSUmp/9djG0KXuzlhvJx76rLxFZI
hR/JCV2CA91jpsaQNBdtsMFt8Fe4vX0BFD4DGNaTjSrOHbsrGBf/yjFCeSeaV6jM
E79o522OVLC/aH9AvIICG7SKfBK92fxJonqwaLIAq//v99go6LQoZqDy4UVy9wKD
HCfjs2C/vjJaPSyhk+U/mlRMSM1jfDUXW4y711iPw/eQl2MT+t4vIsakHiC5BmIW
y3mK/YW/tz2OirEdPRwsm7IUa3TSpwO8BOAmGRn4OC7mXGUIC7KPMX3Nn0uubdDM
ILjjYJCKMeHmf7BK0D3fm+9mkhdrBNRSku37Oiy32kCdssiWxMVM1vV5oQgLlgl4
ptlmY/nyCz2PASFcJ6VVmn4daP8Ue6ZsA90EJrm3lj5mlgLd9mXuQeyJ+TOKyPu2
5kaRIYONEffEkeT5ehS9rw5MFVKy15xk7zZQpQ4gsTMPMYHAf0U=
=M7Y5
-----END PGP SIGNATURE-----
--=-=-=--

--===============1058548424669292091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============1058548424669292091==--
