Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F4B4F26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 00:51:46 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0132.outbound.protection.outlook.com [104.47.42.132])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4999D806
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 00:51:45 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Fri, 7 Sep 2018 00:51:42 +0000
Message-ID: <20180907004944.GD16300@sasha-vm>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
In-Reply-To: <20180905101710.73137669@gandalf.local.home>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E4D32E56772A3449806031C40EA596B0@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 05, 2018 at 10:17:10AM -0400, Steven Rostedt wrote:
>On Tue, 4 Sep 2018 22:53:23 +0200
>Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
>> > I've previously sent a mail
>> > (https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flw=
n.net%2Fml%2Flinux-kernel%2F20180501163818.GD1468%40sasha-vm%2F&amp;data=3D=
02%7C01%7CAlexander.Levin%40microsoft.com%7C7643e868bb5e4d76817c08d6133a46c=
b%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C636717538346291007&amp;sdata=
=3DMEleczglT%2FGM46uI0F4hwbofY9ARD2NEQLS7NW37ntg%3D&amp;reserved=3D0) about
>> > this topic, so I won't repeat everything here.
>>
>> That thread sprawled all over the place, and I honestly don't even
>> recollect half of it. I'd very much appreciate a summary of the
>> problems and different viewpoints shared in there. Otherwise I think
>> we'll just have the exact same discussion once more ...
>
>I was thinking the exact same thing.

Assuming you've read the original mail, it appears that most parties who
participated in the discussion agreed that there's an issue where
patches that go in during (late) -rc cycles seems to be less tested and
are buggier than they should be.

Most of that thread discussed possible solutions such as:

 - Not taking non-critical patches past -rcX (-rc4 seemed to be a
   popular one).
 - -rc patches must fix something introduced in the current merge
   window. Patches fixing anything older should go in the next merge
   window.
 - 1 or more weeks at the end of the cycle where nothing is taken at all
   and we only run testing.
 - Mandate X days/weeks in linux-next before a patch goes in.

We've never reached a conclusion because maintainers have different
approach to this and different pain points, so it seemed difficult
finding a one-size-fits-all solution.

If you look at the few last -rc cycles of every release in recent
history, almost all of them were written within 2-3 days of being
merged. There is no way to properly test these patches.

Furthermore, these patches often end up in Stable, which is quite bad of
the Stable kernel's regression rates.


--
Thanks,
Sasha=
