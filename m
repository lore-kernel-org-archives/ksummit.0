Return-Path: <mcgrof@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AFF6EB68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:30:26 +0000 (UTC)
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BF748158
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:30:24 +0000 (UTC)
Received: by obbkm3 with SMTP id km3so181236755obb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 09 Jul 2015 16:30:24 -0700 (PDT)
MIME-Version: 1.0
Sender: mcgrof@gmail.com
In-Reply-To: <20150709231131.GA4516@cloud>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net>
	<20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150709201127.GA3426@cloud>
	<20150709203830.GF7021@wotan.suse.de> <20150709210059.GA3720@cloud>
	<alpine.DEB.2.10.1507091723380.2532@hadrien>
	<20150709231131.GA4516@cloud>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 9 Jul 2015 16:30:04 -0700
Message-ID: <CAB=NE6XF08UK5Q_tHPmrpK1XdoRqoxVNY4Vrub-0XVXgMw0W1Q@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 9, 2015 at 4:11 PM,  <josh@joshtriplett.org> wrote:
> On Thu, Jul 09, 2015 at 05:24:06PM -0400, Julia Lawall wrote:
>> On Thu, 9 Jul 2015, josh@joshtriplett.org wrote:
>>
>> > On Thu, Jul 09, 2015 at 10:38:30PM +0200, Luis R. Rodriguez wrote:
>> > > On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett.org wrote:
>> > > > Bonus if this is also wired into the 0day bot, so that you also find out
>> > > > if you introduce a new warning or error.
>> > >
>> > > No reason to make bots do stupid work, if we really wanted to consider
>> > > this a bit more seriously the pipeline could be:
>> > >
>> > >   mailing-list | coccinelle coccicheck| smatch | sparse | 0-day-bot
>> >
>> > That would effectively make the bot duplicate part of 0-day.  Seems
>> > easier to have some way to tell 0-day "if you see obvious procedural
>> > issues, don't bother with full-scale testing, just reject".
>>
>> Not sure to understand.  Isn't it better to have the most feedback
>> possible?
>
> If 0-day has enough bandwidth, sure.  However, if this is going to
> encourage a large number of new contributors to quickly iterate a pile
> of patches, many of which are likely to have basic procedural issues in
> the first few iterations, then that may waste quite a lot of build time
> in 0-day.

I'm not being empathetic towards machines as they are not [yet]
sentient, but has anyone estimated the average cost of a full 0-day
test cycle on a full kernel tree? I'm all for using machines when
available to due our bidding, but I was simply trying to consider how
we can be more efficient about it. That's all.

 Luis
