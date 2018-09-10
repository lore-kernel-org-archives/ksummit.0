Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F90DD67
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:38:10 +0000 (UTC)
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr710120.outbound.protection.outlook.com [40.107.71.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9DC8C71C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:38:09 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 10 Sep 2018 15:38:07 +0000
Message-ID: <20180910153806.GR16300@sasha-vm>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<CA+55aFwg+iP-R9=fiJ_uzggiQi39Ce7wO707rPYx7C9BGQ0-Rw@mail.gmail.com>
In-Reply-To: <CA+55aFwg+iP-R9=fiJ_uzggiQi39Ce7wO707rPYx7C9BGQ0-Rw@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0D109D75FEA8DB488814F00804560C72@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

On Mon, Sep 10, 2018 at 05:10:48AM -1000, Linus Torvalds wrote:
>On Mon, Sep 10, 2018 at 5:08 AM James Bottomley
><James.Bottomley@hansenpartnership.com> wrote:
>>
>> On Mon, 2018-09-10 at 04:53 -1000, Linus Torvalds wrote:
>> >   "Live without email - possible?"
>>
>> Can I propose one small alteration to the topic:
>>
>>         "Patches without Email - Possible?"
>
>Yes, better. That's what I meant anyway.
>
>I still want the pull requests as email, and I still think email is
>often the best way to discuss things.

Yes, email is great for discussions, but one concern I have is that once
discussions ended and a patch was merged, a lot of those discussions are
lost forever.

It's somewhat easy to google a patch and look in lkml archives to see
some discussion as a result of the patch, but that's far from perfect:

1. For different patch revisions, some discussions manage to hide in
the archives.
2. Discussions that resulted in a patch being sent aren't linked to the
patch itself.
3. Any discussions after the patch was merged aren't easy to locate,
specially if they're not in the same thread as the original patch.

This makes the lives of stable/distro folks more difficult than it
should be.

Yes, some maintainers started adding links to lkml archives, but those
are very inconsistent and often just point to the patch submission
rather than relevant discussions.

I'm not sure what's a good way to solve this, but I'd really like to
stop losing this valuable information as a result of the current
process.


--
Thanks,
Sasha=
