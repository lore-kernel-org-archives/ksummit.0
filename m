Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9DC8D1498
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:29:46 +0000 (UTC)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0116.outbound.protection.outlook.com [104.47.38.116])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 027DD7E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:29:45 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Thomas Gleixner <tglx@linutronix.de>
Date: Wed, 5 Sep 2018 15:29:43 +0000
Message-ID: <20180905152942.GR16300@sasha-vm>
References: <1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<s5hefe8cd0u.wl-tiwai@suse.de> <20180905142038.GI16300@sasha-vm>
	<s5h1sa8c8z7.wl-tiwai@suse.de> <20180905144155.GK16300@sasha-vm>
	<s5hy3cgatod.wl-tiwai@suse.de> <20180905145413.GL16300@sasha-vm>
	<alpine.DEB.2.21.1809051717460.1416@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1809051717460.1416@nanos.tec.linutronix.de>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <BC67C25EE329B8468615B6DFF0FD4D40@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>
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

On Wed, Sep 05, 2018 at 05:19:59PM +0200, Thomas Gleixner wrote:
>On Wed, 5 Sep 2018, Sasha Levin via Ksummit-discuss wrote:
>> On Wed, Sep 05, 2018 at 04:46:26PM +0200, Takashi Iwai wrote:
>> >On Wed, 05 Sep 2018 16:41:56 +0200,
>> >Sasha Levin wrote:
>> >> So right now I'm lagging a few weeks behind upstream. If I limit it t=
o
>> >> patches that are at least 1 month old will that help with your concer=
ns?
>> >
>> >A few weeks after rc-release or the final release?
>> >If it's the latter, that should be fine.
>>
>> A few weeks after a given patch was merged upstream. The tricky part is
>> if I wait a month from final release then the relevant stable tree is
>> already EOL.
>
>If the thing is close to EOL then it wont get the next fix or worse the fi=
x
>for the subtly broken one either. It really does not matter at all.

Given that we release a kernel every ~2 months and that the Stable tree
goes EOL a week or two after the next kernel is released, we will
essentially ignore half of the release cycle (in particular the -rc
ones, when more fixes come in).


--
Thanks,
Sasha=
