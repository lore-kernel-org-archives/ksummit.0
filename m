Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3DAD0135F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:00:49 +0000 (UTC)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0113.outbound.protection.outlook.com [104.47.40.113])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 87D1B7F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:00:48 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Mark Brown <broonie@kernel.org>
Date: Wed, 5 Sep 2018 15:00:46 +0000
Message-ID: <20180905150045.GM16300@sasha-vm>
References: <20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<20180905131643.GM9781@sirena.org.uk> <20180905142728.GJ16300@sasha-vm>
	<20180905145029.GQ9781@sirena.org.uk>
In-Reply-To: <20180905145029.GQ9781@sirena.org.uk>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1E4EC4A07888B845842C4D0AFFCEC110@namprd21.prod.outlook.com>
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

On Wed, Sep 05, 2018 at 03:50:29PM +0100, Mark Brown wrote:
>On Wed, Sep 05, 2018 at 02:27:29PM +0000, Sasha Levin wrote:
>> On Wed, Sep 05, 2018 at 02:16:43PM +0100, Mark Brown wrote:
>
>> >It's not just maintainers any more - in particular we've got Sasha's
>> >neural net thing picking patches as well and it's substantially more
>> >trigger happy than at least I am.  People do get a chance to review wha=
t
>> >it's picking but that's different to maintainers picking things.
>
>> What can I do to make the process better?
>
>> I tried giving longer review periods, I tried sending emails right when
>> the patch is merged upstream instead of weeks later and I tried actively
>> pursuing some maintainers for explicit Acks. None of which seemed to
>> make anyone happier.
>
>Honestly the whole thing just gives me a bit of anxiety.  I'd say most
>of the patches my thinking is "it's *probably* fine" and it's rare for
>me to think "Oh, I missed that important patch!".  As you know I do
>sometimes actively push back on things.  On balance it mostly doesn't
>break things though and I'm not sure what can be improved process wise
>here, a lot of it is fundamentally that if I thought it was clearly good
>for stable I'd have flagged it already.

Indeed. Some maintainers do a better job than others with tagging things
for Stable, so to them it seems like AUTOSEL patches are just noise, but
for other maintainers they basically do all the job for them.


--
Thanks,
Sasha=
