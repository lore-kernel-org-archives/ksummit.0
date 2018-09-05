Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9BEFD1327
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:54:16 +0000 (UTC)
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr720107.outbound.protection.outlook.com [40.107.72.107])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3358D7C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:54:16 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Takashi Iwai <tiwai@suse.de>
Date: Wed, 5 Sep 2018 14:54:14 +0000
Message-ID: <20180905145413.GL16300@sasha-vm>
References: <20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<s5hefe8cd0u.wl-tiwai@suse.de> <20180905142038.GI16300@sasha-vm>
	<s5h1sa8c8z7.wl-tiwai@suse.de> <20180905144155.GK16300@sasha-vm>
	<s5hy3cgatod.wl-tiwai@suse.de>
In-Reply-To: <s5hy3cgatod.wl-tiwai@suse.de>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <B0513404D9670B4585E60F908978EFFE@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and
	release	time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 05, 2018 at 04:46:26PM +0200, Takashi Iwai wrote:
>On Wed, 05 Sep 2018 16:41:56 +0200,
>Sasha Levin wrote:
>> So right now I'm lagging a few weeks behind upstream. If I limit it to
>> patches that are at least 1 month old will that help with your concerns?
>
>A few weeks after rc-release or the final release?
>If it's the latter, that should be fine.

A few weeks after a given patch was merged upstream. The tricky part is
if I wait a month from final release then the relevant stable tree is
already EOL.

Greg has an aggressive schedule for Stable, I'm just trying to keep up
most of the time...


--
Thanks,
Sasha=
