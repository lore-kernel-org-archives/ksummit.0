Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5058DDA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 23:04:25 +0000 (UTC)
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0113.outbound.protection.outlook.com [104.47.32.113])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B101C13A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 23:04:24 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Tue, 11 Sep 2018 23:04:22 +0000
Message-ID: <20180911230421.GA3821@sasha-vm>
References: <20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
In-Reply-To: <1536706409.3511.14.camel@HansenPartnership.com>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <EEC0A15E2C2BA04DB659F2A332863F95@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 06:53:29PM -0400, James Bottomley wrote:
>On Tue, 2018-09-11 at 16:31 -0400, Steven Rostedt wrote:
>> On Tue, 11 Sep 2018 16:09:32 -0400
>> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>>
>> > On Tue, 2018-09-11 at 14:39 -0400, Steven Rostedt wrote:
>[...]
>> > > > This applies to 0day as well, because, by agreement, it has a
>> > > > much deeper set of xfstest runs for branches we actually queue
>> > > > for -next rather than the more cursory set of tests it runs on
>> > > > ML patches.=A0=A0
>> > >
>> > > What about the tests on local branches? Not what you post to the
>> > > ML.=A0=A0
>> >
>> > I don't really see any point having a local -pre-next pass and
>> > hoping 0day will find it.=A0=A0It's much more valuable (and faster) to
>> > push to -next and have all the integrated tests work on it once
>> > we've done everything we can locally.
>>
>> Why not do what I do and push to a -pre-next branch when you kick off
>> your local tests?
>
>Because there's no point.  As I said, when we complete the local
>criteria the branch is ready for integration.  We push to -next and
>*all* the built bots tell us if there are any problems (which I don't
>expect there are but there's room for me to be wrong) ... including
>0day.  I don't see what the delay and the process hassle would buy us
>if we only get a review by 0day in the -pre-next branch.  It seems more
>efficient to let every bot loose on what we think is mergeable.

The problem with that approach is that it will break build more often,
and if build is broken then usually no automated testing are getting
done for that day.

So you're not hurting just your tree, you're basically stopping any
automated testing on -next.

And yes, bots are already building way more things than just -next. Both
0day and kernelci build individual maintainer branches as well. Maybe a
simple solution would be to just add your pre-next branch while you run
your own tests and have it added to 0day and kernelci?


--
Thanks,
Sasha=
