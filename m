Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D9E33E58
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 20:29:10 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0091.outbound.protection.outlook.com [104.47.42.91])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B06B5786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 20:29:09 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Wed, 12 Sep 2018 20:29:07 +0000
Message-ID: <20180912202905.GG3821@sasha-vm>
References: <20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180912162422.37d545ec@vmware.local.home>
In-Reply-To: <20180912162422.37d545ec@vmware.local.home>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5D43820E97E2B84BB02FB09F3F9CCAD0@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 12, 2018 at 04:24:22PM -0400, Steven Rostedt wrote:
>On Tue, 11 Sep 2018 18:53:29 -0400
>James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>
>> > Why not do what I do and push to a -pre-next branch when you kick off
>> > your local tests?
>>
>> Because there's no point.  As I said, when we complete the local
>> criteria the branch is ready for integration.  We push to -next and
>> *all* the built bots tell us if there are any problems (which I don't
>> expect there are but there's room for me to be wrong) ... including
>> 0day.  I don't see what the delay and the process hassle would buy us
>> if we only get a review by 0day in the -pre-next branch.  It seems more
>> efficient to let every bot loose on what we think is mergeable.
>
>Stephen,
>
>If a bot discovers a new failure in linux-next, do you look to see
>which tree caused it? And then create a new linux-next without that
>tree?
>
>If not, then perhaps we should do so.

I suspect that by the time Stephen finishes merging everything, pushes
the tree out and receives back failure reports he's already about to hit
the bed.

Maybe it'll be useful adding someone who can revert a patch/merge on
Stephen's off-hours.


--
Thanks,
Sasha=
