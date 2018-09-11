Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6C53C109C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 23:20:04 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0129.outbound.protection.outlook.com [104.47.42.129])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C809F2C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 23:20:03 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Tue, 11 Sep 2018 23:20:01 +0000
Message-ID: <20180911232000.GB3821@sasha-vm>
References: <20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180911230421.GA3821@sasha-vm>
	<1536707508.3511.16.camel@HansenPartnership.com>
In-Reply-To: <1536707508.3511.16.camel@HansenPartnership.com>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <4FEEB3D13C6A9243A349C1140BF282A2@namprd21.prod.outlook.com>
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

On Tue, Sep 11, 2018 at 07:11:48PM -0400, James Bottomley wrote:
>On Tue, 2018-09-11 at 23:04 +0000, Sasha Levin via Ksummit-discuss
>wrote:
>> On Tue, Sep 11, 2018 at 06:53:29PM -0400, James Bottomley wrote:
>> > On Tue, 2018-09-11 at 16:31 -0400, Steven Rostedt wrote:
>> > > On Tue, 11 Sep 2018 16:09:32 -0400
>> > > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>> > >
>> > > > On Tue, 2018-09-11 at 14:39 -0400, Steven Rostedt wrote:
>> >
>> > [...]
>> > > > > > This applies to 0day as well, because, by agreement, it has
>> > > > > > a much deeper set of xfstest runs for branches we actually
>> > > > > > queue for -next rather than the more cursory set of tests
>> > > > > > it runs on ML patches.=A0=A0
>> > > > >
>> > > > > What about the tests on local branches? Not what you post to
>> > > > > the ML.=A0=A0
>> > > >
>> > > > I don't really see any point having a local -pre-next pass and
>> > > > hoping 0day will find it.=A0=A0It's much more valuable (and faster=
)
>> > > > to push to -next and have all the integrated tests work on it
>> > > > once we've done everything we can locally.
>> > >
>> > > Why not do what I do and push to a -pre-next branch when you kick
>> > > off your local tests?
>> >
>> > Because there's no point.=A0=A0As I said, when we complete the local
>> > criteria the branch is ready for integration.=A0=A0We push to -next an=
d
>> > *all* the built bots tell us if there are any problems (which I
>> > don't expect there are but there's room for me to be wrong) ...
>> > including 0day.=A0=A0I don't see what the delay and the process hassle
>> > would buy us if we only get a review by 0day in the -pre-next
>> > branch.=A0=A0It seems more efficient to let every bot loose on what we
>> > think is mergeable.
>>
>> The problem with that approach is that it will break build more
>> often, and if build is broken then usually no automated testing are
>> getting done for that day.
>
>You're making the wrong assumption: most bugs aren't build breaks.  We
>do occasionally have them, usually because of an obscure config
>interaction issue, but it's a tiny percentage, so the impact to the
>entire tree usually isn't great.

Right, most bugs aren't build/boot bugs, but between all various
subsystems there's always the one that snuck through. It only takes one
to kill build.

>However, think of this like release early, release often.  If we think
>a branch is ready but there's a lurking bug, even a build related one,
>it's better we find out sooner than later, so it's still better we
>expose it ASAP to the full test machinery.  If it's one the local
>criteria should have caught, I'm sure there'll be a huge line up of
>people wanting to complain (which is why we try to make sure any
>lurking bugs aren't build related).

Right, I'm not saying delay it, I'm just saying that you should feed it
to the bots *while* you run your testsuites, even if to just get build
coverage.

Also remember that -next releases once a day in a very predictable
timing, there's usually a few hours to spare between your push and the
time linux-next gets constructed, so ASAP isn't really all that critical
here as long as it gets in the same day.

--
Thanks,
Sasha=
