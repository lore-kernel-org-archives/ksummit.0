Return-Path: <James.Bottomley@Hansenpartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D5813AEF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 12:24:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7F4847CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 12:24:41 +0000 (UTC)
In-Reply-To: <20180905104700.GE9781@sirena.org.uk>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: James Bottomley <James.Bottomley@Hansenpartnership.com>
Date: Wed, 05 Sep 2018 13:24:18 +0100
To: Mark Brown <broonie@kernel.org>
Message-ID: <6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On September 5, 2018 11:47:00 AM GMT+01:00, Mark Brown <broonie@kernel.org> wrote:
>On Wed, Sep 05, 2018 at 10:58:45AM +0100, James Bottomley wrote:
>
>> This really shouldn't be an issue: stable trees are backported from
>> upstream.  The patch (should) work in upstream, so it should work in
>> stable.  There are only a few real cases you need to worry about:
>
>>    1. Buggy patch in upstream backported to stable. (will be caught
>and
>>       the fix backported soon)
>>    2. Missing precursor causing issues in stable alone.
>>    3. Bug introduced when hand applying.
>
>> The chances of one of these happening is non-zero, but the criteria
>for
>> stable should mean its still better odds than the odds of hitting the
>> bug it was fixing.
>
>Some of those are substantial enough to be worth worrying about,
>especially the missing precursor issues.  It's rarely an issue with the
>human generated backports but the automated ones don't have a sense of
>context in the selection.
>
>There's also a risk/reward tradeoff to consider with more minor issues,
>especially performance related ones.  We want people to be enthusiastic
>about taking stable updates and every time they find a problem with a
>backport that works against them doing that.

I absolutely agree.  That's why I said our process is expediency based:  you have to trade off the value of applying the patch vs the probability of introducing bugs.  However the maintainers are mostly considering this which is why stable is largely free from trivial but pointless patches.  The rule should be: if it doesn't fix a user visible bug, it doesn't go into stable.

James

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
