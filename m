Return-Path: <peterhuewe@gmx.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DEB5D93E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 08:21:00 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AAAAFB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 08:20:59 +0000 (UTC)
In-Reply-To: <20150709210059.GA3720@cloud>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
	<20150709210059.GA3720@cloud>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Peter Huewe <peterhuewe@gmx.de>
Date: Fri, 10 Jul 2015 10:19:09 +0200
To: josh@joshtriplett.org,"Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <217B337B-3703-43E5-86DF-6AE8AE268F8D@gmx.de>
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



Am 9=2E Juli 2015 23:00:59 MESZ, schrieb josh@joshtriplett=2Eorg:
>On Thu, Jul 09, 2015 at 10:38:30PM +0200, Luis R=2E Rodriguez wrote:
>> On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett=2Eorg
>wrote:
>> > Bonus if this is also wired into the 0day bot, so that you also
>find out
>> > if you introduce a new warning or error=2E
>>=20
>> No reason to make bots do stupid work, if we really wanted to
>consider
>> this a bit more seriously the pipeline could be:
>>=20
>>   mailing-list | coccinelle coccicheck| smatch | sparse | 0-day-bot
>
>That would effectively make the bot duplicate part of 0-day=2E  Seems
>easier to have some way to tell 0-day "if you see obvious procedural
>issues, don't bother with full-scale testing, just reject"=2E


0-day already includes sparse, coccinelle and smatch ;) (and others)

I have a dedicated for-review and testing branch which is 0-day monitored =
and only if I don't hear negative from 0-day stuff moves to my -next branch=
=2E

Thanks
Peter
--=20
Sent from my mobile
