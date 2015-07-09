Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 308C9AAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:42:57 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2D3E81B2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 21:42:56 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: "Luis R. Rodriguez" <mcgrof@suse.com>, "josh@joshtriplett.org"
	<josh@joshtriplett.org>, "Wu, Fengguang" <fengguang.wu@intel.com>
Date: Thu, 9 Jul 2015 21:42:51 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F32AA52ED@ORSMSX114.amr.corp.intel.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
	<20150709210059.GA3720@cloud> <20150709210300.GG7021@wotan.suse.de>
In-Reply-To: <20150709210300.GG7021@wotan.suse.de>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

>> That would effectively make the bot duplicate part of 0-day.  Seems
>> easier to have some way to tell 0-day "if you see obvious procedural
>> issues, don't bother with full-scale testing, just reject".
>
> Yeah true, Fengguang, is that an option?

But you save some compute cycles on Fengguang's farm for serializing the
process for developers.  Letting the robots try some compilations may find
some more issues with the patch series.

-Tony
