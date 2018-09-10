Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 92FFCD7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:31:29 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0102.outbound.protection.outlook.com [104.47.36.102])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0C164102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:31:28 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Jiri Kosina <jikos@kernel.org>
Date: Mon, 10 Sep 2018 15:31:27 +0000
Message-ID: <20180910153125.GQ16300@sasha-vm>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809101709371.15880@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.1809101709371.15880@cbobk.fhfr.pm>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <EDD037EDE3E6B240ADE1DA8B4AA3D212@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 05:13:05PM +0200, Jiri Kosina wrote:
>On Mon, 10 Sep 2018, James Bottomley wrote:
>
>>    1. How do reviews happen?  Non email projects tend to have only one
>>       review mechanism (gerrit, github, gitlab, etc.) and stick to it.  =
Do
>>       we want to pick a technology or allow multiple?  I don't think thi=
s
>>       is kernel wide, it could be a sybsystem choice.
>
>Yeah, but OTOH even now I've heard a lot of feedback about the irregular
>contributors / newcomers being confused by different subsystems having
>different processess and requirements; and those are basically just rather
>"minor" things currently (bugzilla usage, patchwork usage, subscriber-only
>mailinglists, etc), but it's still enough to confuse the hell out of
>people.

Similarily with stable tags: some subsystems do not allow authors to tag
patches for stable, which in turn means people don't add these tags in
any of their patches, even to other subsystems, to "play safe".


--
Thanks,
Sasha=
