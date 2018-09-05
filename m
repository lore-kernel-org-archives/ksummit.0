Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7337E142D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:10:22 +0000 (UTC)
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr700129.outbound.protection.outlook.com [40.107.70.129])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ABA377A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:10:21 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Wed, 5 Sep 2018 15:10:19 +0000
Message-ID: <20180905151018.GN16300@sasha-vm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<CAFbkSA3Zjojhb4uUFrdpJUTSWz1V9RbG_EL83roQY3bzX80i-g@mail.gmail.com>
	<20180905144233.GB15573@kroah.com>
In-Reply-To: <20180905144233.GB15573@kroah.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <306B8D0ABFACD14D890E66389A494D84@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Justin Forbes <jforbes@redhat.com>
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

On Wed, Sep 05, 2018 at 04:42:33PM +0200, Greg KH wrote:
>On Tue, Sep 04, 2018 at 04:22:59PM -0500, Justin Forbes wrote:
>> On Tue, Sep 4, 2018 at 3:58 PM, Laura Abbott <labbott@redhat.com> wrote:
>> > I'd like to start a discussion about the stable release cycle.
>> >
>> > Fedora is a heavy user of the most recent stable trees and we
>> > generally do a pretty good job of keeping up to date. As we
>> > try and increase testing though, the stable release process
>> > gets to be a bit difficult. We often run into the problem where
>> > release .Z is officially released and then .Z+1 comes
>> > out as an -rc immediately after. Given Fedora release processes,
>> > we haven't always finished testing .Z by the time .Z+1 comes
>> > out. What to do in this situation really depends on what's in
>> > .Z and .Z+1 and how stable we think things are. This usually
>> > works out fine but a) sometimes we guess wrong and should have
>> > tested .Z more b) we're only looking to increase testing.
>> >
>> > What I'd like to see is stable updates that come on a regular
>> > schedule with a longer -rc interval, say Sunday with
>> > a one week -rc period. I understand that much of the current
>> > stable schedule is based on Greg's schedule. As a distro
>> > maintainer though, a regular release schedule with a longer
>> > testing window makes it much easier to plan and deliver something
>> > useful to our users. It's also a much easier sell for encouraging
>> > everyone to pick up every stable update if there's a known
>> > schedule. I also realize Greg is probably reading this with a very
>> > skeptical look on his face so I'd be interested to hear from
>> > other distro maintainers as well.
>> >
>>
>> This has been a fairly recent problem. There was a roughly weekly
>> cadence for a very long time and that was pretty easy to work with.  I
>> know that some of these updates do fix embargoed security issues that
>> we don't find out are actual fixes until later, but frequently in
>> those cases, the fixes are pushed well before embargo lifts, and they
>> could be fit into a weekly cadence.  Personally I don't have a problem
>> with the 3 day rc period, but pushing 2 kernels a week can be a
>> problem for users. (skipping a stable update is also a problem for
>> users.)  What I would prefer is 1 stable update per week with an
>> exception for *serious* security issues, where serious would mean
>> either real end user impact or high profile lots of press users are
>> going to be wondering where a fix is.
>
>Laura, thanks for bringing this up.  I'll try to respond here given that
>Justin agrees with the issue of timing.
>
>Honestly, this year has been a total shit-storm for stable due to the
>whole security mess we have been dealing with.  The number of
>totally-crazy-intrusive patches I have had to take is insane.  Combine
>that with a total lack of regard for the security issues for some arches
>(arm32 comes to mind), it's been a very rough year and I have been just
>trying to keep on top of everything.
>
>Because of these issues (and it wasn't just spectre/meltdown, we have
>had other major fire drills in some subsystems), the release cycles have
>been quick and contain a lot of patches, sorry about that.  But that is
>reflected in Linus's tree as well, so maybe this is just the "new
>normal" that we all need to get used to.
>
>I could do a "one release a week" cycle, which I would _love_ but that
>is not going to decrease the number of patches per release, it is only
>going to make them large (patch rate stays the same, and increases, no
>matter when I release)  So I had been thinking that to break the
>releases up into a "here's a hundred or so patches" per release, was a
>helpful thing to the reviewers.

Maybe something like stable-next would help? I know that right now you
lag a few weeks behind Linus. What if instead of lagging we just put all
the stable tagged commits into a stable-next branch right away and let
adventerous humans/distros test it out?

By the time you'll be queueing up these commits to your stable branches
they would have already had a few weeks worth of eyeballs and some
extent of testing.

>If this assumption is incorrect, yes, I can go to one-per-week, if
>people agree that they can handle the large increase per release
>properly.  Can you all do that?
>
>Are we going to do a "patch tuesday" like our friends in Redmond now? :)

diff --git a/Makefile b/Makefile
index 2b458801ba74..9a7e83c658cc 100644
--- a/Makefile
+++ b/Makefile
@@ -3,7 +3,7 @@ VERSION =3D 4
 PATCHLEVEL =3D 19
 SUBLEVEL =3D 0
 EXTRAVERSION =3D -rc1
-NAME =3D Merciless Moray
+NAME =3D Microsoft Linux

 # *DOCUMENTATION*
 # To see a list of typical targets execute "make help"

--
Thanks,
Sasha=
