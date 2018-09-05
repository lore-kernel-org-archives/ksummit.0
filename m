Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72B0310FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:20:43 +0000 (UTC)
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0118.outbound.protection.outlook.com [104.47.41.118])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D0C95786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:20:42 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Takashi Iwai <tiwai@suse.de>
Date: Wed, 5 Sep 2018 14:20:40 +0000
Message-ID: <20180905142038.GI16300@sasha-vm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<s5hefe8cd0u.wl-tiwai@suse.de>
In-Reply-To: <s5hefe8cd0u.wl-tiwai@suse.de>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A5F21781C3488D469046D7BBF7068EBC@namprd21.prod.outlook.com>
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

On Wed, Sep 05, 2018 at 03:03:13PM +0200, Takashi Iwai wrote:
>On Wed, 05 Sep 2018 14:24:18 +0200,
>James Bottomley wrote:
>>
>> On September 5, 2018 11:47:00 AM GMT+01:00, Mark Brown <broonie@kernel.o=
rg> wrote:
>> >On Wed, Sep 05, 2018 at 10:58:45AM +0100, James Bottomley wrote:
>> >
>> >> This really shouldn't be an issue: stable trees are backported from
>> >> upstream.  The patch (should) work in upstream, so it should work in
>> >> stable.  There are only a few real cases you need to worry about:
>> >
>> >>    1. Buggy patch in upstream backported to stable. (will be caught
>> >and
>> >>       the fix backported soon)
>> >>    2. Missing precursor causing issues in stable alone.
>> >>    3. Bug introduced when hand applying.
>> >
>> >> The chances of one of these happening is non-zero, but the criteria
>> >for
>> >> stable should mean its still better odds than the odds of hitting the
>> >> bug it was fixing.
>> >
>> >Some of those are substantial enough to be worth worrying about,
>> >especially the missing precursor issues.  It's rarely an issue with the
>> >human generated backports but the automated ones don't have a sense of
>> >context in the selection.
>> >
>> >There's also a risk/reward tradeoff to consider with more minor issues,
>> >especially performance related ones.  We want people to be enthusiastic
>> >about taking stable updates and every time they find a problem with a
>> >backport that works against them doing that.
>>
>> I absolutely agree.  That's why I said our process is expediency
>> based:  you have to trade off the value of applying the patch vs the
>> probability of introducing bugs.  However the maintainers are mostly
>> considering this which is why stable is largely free from trivial
>> but pointless patches.  The rule should be: if it doesn't fix a user
>> visible bug, it doesn't go into stable.
>
>Right, and here the current AUTOSEL (and some other not-stable-marked)
>patches coming to a gray zone.  The picked-up patches are often right
>as "some" fixes, but they are not necessarily qualified as "stable
>fixes".
>
>How about allowing to change the choice of AUTOSEL to be opt-in and
>opt-out, depending on the tree?  In my case, usually the patches
>caught by AUTOSEL aren't really the patches with forgotten stable
>marker, but rather left intentionally by various reasons.  Most of
>them are fine to apply in anyway, but it was uncertain whether they
>are really needed / qualifying as stable fixes.  So, I'd be happy to
>see them as opt-in, i.e. applied only via manual approval.

So right now you can opt-out your tree if you'd like. I'm not trying to
force it on any particular maintainer. If you'd like to ack each patch I
send before it goes in a tree this is something we can definitely do.

FWIW, it looks like your tree is in a very good shape compared to most
other trees I encounter, so I end up sending fewer proposed stable
commits your way.

I tried picking a random commit that went through my selection process
and chose https://lore.kernel.org/patchwork/patch/909923/ . Is this type
of patch that should not belong in stable?


--
Thanks,
Sasha=
