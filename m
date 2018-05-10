Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 470D8C18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 16:47:28 +0000 (UTC)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0101.outbound.protection.outlook.com [104.47.38.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9684C685
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 16:47:27 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Jiri Kosina <jikos@kernel.org>
Date: Thu, 10 May 2018 16:47:24 +0000
Message-ID: <20180510164722.GH8514@sasha-vm>
References: <20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<nycvar.YFH.7.76.1805101802150.27054@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.1805101802150.27054@cbobk.fhfr.pm>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F842BC74018D7E4199421AA3BA4FC94B@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "w@1wt.eu" <w@1wt.eu>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 10, 2018 at 06:03:22PM +0200, Jiri Kosina wrote:
>On Wed, 9 May 2018, Daniel Vetter wrote:
>
>> >> Then, why don't we have a pre-integration tree for fixes? That would
>> >> at least simply automated testing of fixes separately from new
>> >> material.
>> >
>> >> Perhaps this has already been discussed, and concluded and it's not
>> >> worth it, then apologize for my ignorance.
>> >
>> > I think this is an excellent idea, copying in Stephen for his input.
>> > I'm currently on holiday but unless someone convinces me it's a terrib=
le
>> > idea I'm willing to at least give it a go on a trial basis once I'm ba=
ck
>> > home.
>>
>> Since Stephen merges all -fixes branches first, before merging all the
>> -next branches, he already generates that as part of linux-next. All
>> he'd need to do is push that intermediate state out to some
>> linux-fixes branch for consumption by test bots.
>
>What I do for my trees is that I actually merge the '-fixes' branch (that
>is scheduled to go to Linus in the 'current' cycle) into my for-next
>branch as well.
>
>This has the advantage of (a) getting all the coverage linux-next does (b)
>seeing any potential merge conflicts early
>
>Is this not feasible for other trees?

When Linus tags -rc1, -next will start filling up with commits destined
for the next merge window. The resulting -next tree becomes very
unstable, and very difficult to test.

The idea behind next-fixes is to provide a tree that will contain fixes
for the current merge window, which will generate a much more stable
tree that users/bots could actually run and validate the fixes that will
be merged in the upcoming weeks.

Right now, with the method you've described, there is no easy way to
test your '-fixes' branch even though the commits in there will be
pulled in by Linus much sooner than your 'for-next' branch.

You'll still get the same coverage from -next, but if you provide your
-fixes branch seperately you'll also get more coverage for the fixes
you're about to send to Linus.
