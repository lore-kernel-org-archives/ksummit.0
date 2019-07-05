Return-Path: <sashal@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C24852C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 16:52:17 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5141F87B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 16:52:17 +0000 (UTC)
Date: Fri, 5 Jul 2019 12:52:15 -0400
From: Sasha Levin <sashal@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20190705165215.GH10104@sasha-vm>
References: <20190703013557.GQ11506@sasha-vm>
	<87lfxc1ta4.fsf@concordia.ellerman.id.au>
	<s5hwogwy3g0.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <s5hwogwy3g0.wl-tiwai@suse.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel
	process	automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 05, 2019 at 04:13:35PM +0200, Takashi Iwai wrote:
>On Fri, 05 Jul 2019 15:54:11 +0200,
>Michael Ellerman wrote:
>>
>> Sasha Levin <sashal@kernel.org> writes:
>> > Hi folks,
>> >
>> > If there is interest, I'd like to go over the (minor) changes that went
>> > into the -stable kernel process since last year's MS, the various
>> > automations we now have, and how we have addressed some of the pain
>> > points that came up last year. I'd also love to hear from folks about
>> > the issues they're seeing with the process, and if there's anything we
>> > can do to make it better.
>> >
>> > Some of the concerns that were raised during last year's MS (both in the
>> > group session as well as in the hallway track) which we've tried to
>> > address are:
>> >
>> >  - Commits missing because authors did not respond to Greg's "FAILED:"
>> >    mails.
>> >  - Concerns about how well -stable kernels are tested.
>> >  - "Fixes for fixes" end up being missed.
>> >  - Saner AUTOSEL process.
>> >  - Tracking of dropped commits.
>>
>> Yeah definitely interested in this.
>>
>> Especially the tracking part. I have been trying to keep track of
>> powerpc commits that need backporting, but haven't really come up with a
>> good system. So would be interested in what you and/or others are doing.
>>
>> Something I've been experimenting with is using git notes to mark
>> commits that have been fixed by a subsequent commit. This gives you a
>> two way link between the fix and the fixed commit, and you can get the
>> notes to show up in git log, like:
>>
>>   commit 1846193b178dcc58435fdc57352db7b74826ef37
>>   Author: Michael Ellerman <mpe@ellerman.id.au>
>>   Date:   Thu Jul 7 22:54:29 2016 +1000
>>
>>       powerpc/xmon: Dump ISA 2.06 SPRs
>>
>>       Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
>>
>>   Notes (fixed):
>>       Fixed-by: c47a94031e81 ("powerpc/xmon: Fix display of SPRs")
>>
>>
>> I'd like to extend this to the stable trees, so you could have output
>> something like:
>>
>>   commit 1846193b178dcc58435fdc57352db7b74826ef37
>>   Author: Michael Ellerman <mpe@ellerman.id.au>
>>   Date:   Thu Jul 7 22:54:29 2016 +1000
>>
>>       powerpc/xmon: Dump ISA 2.06 SPRs
>>
>>       Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
>>
>>   Notes (fixed):
>>       Fixed-by: c47a94031e81 ("powerpc/xmon: Fix display of SPRs")
>>         v4.9.y: deadbeef0000 ("powerpc/xmon: Fix display of SPRs")
>>        v4.10.y: not found
>>
>>
>> Git notes are also just blobs, so in theory the processing to generate
>> those notes could be done once and pushed to a repo where everyone could
>> pull them.
>
>Yes, I'd love to have (and share) this kind of reverse mapping
>information.  But somehow using git-notes for such a purpose wasn't
>accepted widely.  IIRC, Linus mentioned that git-notes is a hack, and
>indeed it is.  But if the entries aren't too big, it would work well
>enough, I guess.  Once when the size matters, we can reconsider to
>switch to a better infrastructure...
>
>FWIW, SUSE tracks the possible upstream fixes by parsing Fixes tag
>regularly, so it's proven to be useful.

Indeed, I also have quite a few scripts that do interesting things with
the fixes tag (such as the "fixes for fixes" script which tries to
understand if a certain fix was backported, and the new fix would apply
to older LTS trees).

I'm toying with a similar idea for git notes, but my approach was to
extract mailing list conversations that are related to the patch in
question and add them as git notes to the commit they're discussing.

This means that when I do 'git log' to see a commit I'm about to
backport, I also get all the mailing list context related to it which
often tends to be more valuable than the commit message itself.

This is the sort of things I feel would be useful beyond just -stable
work; I'm sure that everyone spent hours sifting through the mailing
list to understand some of the logic of a given patch. I'd love to have
better integration between our git tree and the mailing list.

--
Thanks,
Sasha
