Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7615AC0A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 19:17:13 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0094.outbound.protection.outlook.com [104.47.36.94])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF83442D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 19:17:12 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Willy Tarreau <w@1wt.eu>
Date: Thu, 3 May 2018 19:17:10 +0000
Message-ID: <20180503191708.GW18390@sasha-vm>
References: <CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org> <20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
	<20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
	<20180503185529.GB15247@kroah.com> <20180503191405.GC23467@1wt.eu>
In-Reply-To: <20180503191405.GC23467@1wt.eu>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CD35F29F3EE5334BB0C9886691350C4C@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 03, 2018 at 09:14:05PM +0200, Willy Tarreau wrote:
>The dependency chain however matters less because once you start fighting
>with a small patch set for 1 hour you can spend an extra minute testing
>several combinations or figuring the dependencies in mainline.

https://git.kernel.org/pub/scm/linux/kernel/git/sashal/stable-tools.git/tre=
e/stable-deps

:)=
