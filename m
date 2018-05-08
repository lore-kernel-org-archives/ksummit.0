Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C41D3407
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 21:43:44 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0130.outbound.protection.outlook.com [104.47.33.130])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 18F9718A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 21:43:44 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: David Lang <david@lang.hm>
Date: Tue, 8 May 2018 21:43:41 +0000
Message-ID: <20180508214339.GE8514@sasha-vm>
References: <20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
	<20180508202912.GC8514@sasha-vm>
	<CAFhKne-aDcMKD8FjfROGZ-=ffmq3Xa+7n0dm8uvzKJ_7WO-qCQ@mail.gmail.com>
	<20180508205505.GD8514@sasha-vm>
	<alpine.DEB.2.02.1805081357451.31825@nftneq.ynat.uz>
In-Reply-To: <alpine.DEB.2.02.1805081357451.31825@nftneq.ynat.uz>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <88315B09AF26DC4C9BDFFC0D97704818@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 08, 2018 at 01:59:18PM -0700, David Lang wrote:
>On Tue, 8 May 2018, Sasha Levin wrote:
>
>>There's no one, for example, who picked up vanilla v4.16 and plans to
>>keep using it for a year.
>
>Actually, at a prior job I would do almost exactly that.
>
>I never intended to go a year without updating, but it would happen if=20
>nothing came up that was related to the hardware/features I was=20
>running.
>
>so 'no one uses the Linus kernel is false.

My point is not that "no one ever uses Linus kernel" but that no one
takes one of those kernels and plans to stick with it for 3 months until
the next one comes up, even if there are updates relevant to that user.

Yes, some users will use a .0 release until either Greg releases a
-stable, or until the next -rc is out.

What I'm trying to say is that there is that the .0 release makes some
people rush poorly tested commits in it even though the .0 release is
not significant in any way.=
