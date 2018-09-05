Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0BF981108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:27:32 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0129.outbound.protection.outlook.com [104.47.33.129])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 67CC32D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:27:31 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Mark Brown <broonie@kernel.org>
Date: Wed, 5 Sep 2018 14:27:29 +0000
Message-ID: <20180905142728.GJ16300@sasha-vm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<20180905131643.GM9781@sirena.org.uk>
In-Reply-To: <20180905131643.GM9781@sirena.org.uk>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C7992B0AF1B8A04CB58DAE80DBB160D2@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 05, 2018 at 02:16:43PM +0100, Mark Brown wrote:
>On Wed, Sep 05, 2018 at 01:24:18PM +0100, James Bottomley wrote:
>
>> I absolutely agree.  That's why I said our process is expediency
>> based:  you have to trade off the value of applying the patch vs the
>> probability of introducing bugs.  However the maintainers are mostly
>> considering this which is why stable is largely free from trivial but
>> pointless patches.  The rule should be: if it doesn't fix a user
>> visible bug, it doesn't go into stable.
>
>It's not just maintainers any more - in particular we've got Sasha's
>neural net thing picking patches as well and it's substantially more
>trigger happy than at least I am.  People do get a chance to review what
>it's picking but that's different to maintainers picking things.

What can I do to make the process better?

I tried giving longer review periods, I tried sending emails right when
the patch is merged upstream instead of weeks later and I tried actively
pursuing some maintainers for explicit Acks. None of which seemed to
make anyone happier.

--
Thanks,
Sasha=
