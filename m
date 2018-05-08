Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E0F2DBBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 21:51:20 +0000 (UTC)
Received: from mail-ot0-f182.google.com (mail-ot0-f182.google.com
	[74.125.82.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 62A18F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 21:51:20 +0000 (UTC)
Received: by mail-ot0-f182.google.com with SMTP id l13-v6so37886817otk.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 08 May 2018 14:51:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180508214339.GE8514@sasha-vm>
References: <20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
	<20180508202912.GC8514@sasha-vm>
	<CAFhKne-aDcMKD8FjfROGZ-=ffmq3Xa+7n0dm8uvzKJ_7WO-qCQ@mail.gmail.com>
	<20180508205505.GD8514@sasha-vm>
	<alpine.DEB.2.02.1805081357451.31825@nftneq.ynat.uz>
	<20180508214339.GE8514@sasha-vm>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 8 May 2018 14:51:18 -0700
Message-ID: <CAPcyv4jTmvYDz=2Fc1HmopqK1R=eNjCvbqT3VCkeC8VEwNjjnw@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Cc: David Lang <david@lang.hm>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 8, 2018 at 2:43 PM, Sasha Levin via Ksummit-discuss
<ksummit-discuss@lists.linuxfoundation.org> wrote:
> On Tue, May 08, 2018 at 01:59:18PM -0700, David Lang wrote:
>>On Tue, 8 May 2018, Sasha Levin wrote:
>>
>>>There's no one, for example, who picked up vanilla v4.16 and plans to
>>>keep using it for a year.
>>
>>Actually, at a prior job I would do almost exactly that.
>>
>>I never intended to go a year without updating, but it would happen if
>>nothing came up that was related to the hardware/features I was
>>running.
>>
>>so 'no one uses the Linus kernel is false.
>
> My point is not that "no one ever uses Linus kernel" but that no one
> takes one of those kernels and plans to stick with it for 3 months until
> the next one comes up, even if there are updates relevant to that user.
>
> Yes, some users will use a .0 release until either Greg releases a
> -stable, or until the next -rc is out.
>
> What I'm trying to say is that there is that the .0 release makes some
> people rush poorly tested commits in it even though the .0 release is
> not significant in any way.

I think we should take pride in our releases, so I disagree that it is
insignificant. If a maintainer is rushing things into late rc's and
breaking things then they need that feedback, not de-emphasize the
importance of ".0" releases. Could the bar be raised higher on late
fixes, perhaps. I otherwise think the message is already clear
"changes at -rc6,7,8 had better be worthy of and coming in late and be
accompanied with good explanation".
