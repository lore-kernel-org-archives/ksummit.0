Return-Path: <peterhuewe@gmx.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 14A4FCA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 06:49:12 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 12ACE102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 06:49:10 +0000 (UTC)
Date: Wed, 12 Sep 2018 08:49:05 +0200
In-Reply-To: <20180912062631.GB10268@kroah.com>
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<20180911113725.5d91b945@jawa>
	<20180911193308.GA4429@kroah.com> <2400444.QbA1LOmrIy@avalon>
	<20180912062631.GB10268@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
From: Peter Huewe <peterhuewe@gmx.de>
Message-ID: <D4FD9759-C9C2-4F09-8175-48504E8BC87A@gmx.de>
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Lukasz Majewski <lukma@denx.de>, Jonas Jensen <jonas.jensen@gmail.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Deprecation / Removal of
	old hardware support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



Am 12=2E September 2018 08:26:31 MESZ schrieb Greg KH <gregkh@linuxfoundat=
ion=2Eorg>:
>On Wed, Sep 12, 2018 at 12:39:34AM +0300, Laurent Pinchart wrote:
>> Hi Greg,
>>=20
>> On Tuesday, 11 September 2018 22:33:08 EEST Greg KH wrote:
>> > On Tue, Sep 11, 2018 at 11:37:25AM +0200, Lukasz Majewski wrote:
>> > > In the kernel community we pose a lot of attention to security
>(for
>> > > example the prompt reaction on meltdown/spectre), but in the same
>time
>> > > we tend to forget about the "long lived" devices and force their
>> > > maintainers to use 2=2E6=2Ex kernels=2E=2E=2E=2E=2E (or even 2=2E4=
=2Ex)=2E
>> >=20
>> > We care, but really, how much can we do here?
>> >=20
>> > I've been working a lot with the Adroid ecosystem to try to help
>fix
>> > their bad habits of "grab a random kernel and ship it and never
>update
>> > it" by providing longer lived kernels that they can constantly
>update
>> > their devices to=2E
>> >=20
>> > But their lifetimes is much shorter compared to yours, and I have
>no
>> > insight into what kernels are being used, what configurations you
>all
>> > care about, and how long you need/want them updated=2E
>> >=20
>> > Working with really old kernels like you have, without hardware
>> > available to test is a hard task=2E  If your hardware is in a system
>like
>> > kernelci, then you can be sure that any new kernel will work
>properly
>> > with your system and then you might not want to have to stay with
>really
>> > old kernels that no one can maintain :)
>> >=20
>> > There's a Linux Foundation project, "CIP" that wants to maintain
>kernels
>> > for devices like what you are making for 20+ years=2E  They are
>having the
>> > problems of not knowing exactly what platforms they wish to
>support, but
>> > their goal is good, hopefully they eventually nail something down
>and we
>> > can work together=2E  Perhaps you should contact them to try to help
>solve
>> > this issue for everyone?
>>=20
>> I may be wrong, but I understand Lukasz's comment as the exact
>opposite: we=20
>> forget about long-lived devices and drop their support while they're
>still in=20
>> active use, forcing vendors to start using old and unsupported
>kernels=2E If a=20
>> large number of ARMv4(T) devices are still being actively deployed
>and=20
>> maintain, we should treat them as first-class citizens=2E
>
>No, I never want to drop support for anything that anyone is actually
>using=2E  When I drop support for hardware/protocols, it goes through the
>staging tree for a few months to see if anyone says anything=2E  If not,
>then it gets removed=2E  And even then, if someone comes back and says
>"hey I use that!" it's a simple revert to get it back=2E
Can/should everything that we think is broken/unused be moved to staging f=
irst?
Isn't this unecessary churn of code?
The mandarory todo file would then consist of which action items?

>
>The problem is if no one _tells_ us they are using something=2E  And
>that's not something we can fix without help from the developers/users
>of those hardware platforms talking to us=2E

Would it make sense to introduce something like the staging warning ('this=
 driver is from stagin directory' message in dmesg) for support deprecation=
?

So if a maintainer, who probably has the best *available* picture about hw=
 usage, thinks it's about time to remove the support, he adds a depecration=
 flag to kconfig, which then adds code to emit a warning to dmesg=2E
Users then get at least informed that deprecation would affect them, once =
they boot a newer kernel=2E
"Foobar support is about to be removed from kernel - please object to xyz =
if you see this message"

If after e=2Eg=2E 10 kernel cycles no one objected, it can be assumed that=
 no one cared too much about it=2E
Even newbie users tend to have a look in dmesg from time to time - atleast=
 I teach that to my students - and a warning usually gets noticed=2E

We (used to) have similar warnings in the kernel log if a driver uses old =
apis ("this driver still uses old v4l=2E=2E=2E" ), why not introduce someth=
ing similar for support deprecation?



Just an idea=2E
Peter

--=20
Sent from my mobile
