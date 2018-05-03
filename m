Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 37950A80
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 19:04:41 +0000 (UTC)
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0096.outbound.protection.outlook.com [104.47.41.96])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 002BF299
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 19:04:39 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Al Viro <viro@ZenIV.linux.org.uk>
Date: Thu, 3 May 2018 19:04:34 +0000
Message-ID: <20180503190431.GV18390@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org> <20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
	<20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
In-Reply-To: <20180503182039.GC30522@ZenIV.linux.org.uk>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C24392948911924A9B908A3DBCF6B369@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
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

On Thu, May 03, 2018 at 07:20:39PM +0100, Al Viro wrote:
>On Thu, May 03, 2018 at 05:34:24PM +0000, Sasha Levin wrote:
>
>> >Moreover, what the hell do you suggest in situation when
>> >	* foofs_barf() is b0rken in quite a few ways.  There's an
>> >easily triggerable memory corruptor that can be fixed locally as well
>> >as something else that needs a change of e.g. ->mkdir() calling
>> >conventions to take care of.  The change is mechanical and fairly
>> >simple, but it's already -rc4.
>>
>> I'm not advocating to forcefully block people from submitting patches
>> after -rc4 (that was Ted's suggesting).
>
>I am, though - change of a method signature when we have several dozens
>of instances does *not* belong in -rc5; if nothing else, it guarantees
>a nightmare pile of conflicts with individual filesystem trees.
>
>> I'm just saying that as a maintainer, you should use your brain and
>> figure out how critical the bug is, how good is the fix and how well was
>> it tested, and decide if you want to merge it in or not.
>>
>> If it fixed the bug and didn't introduce a regression, great! If it
>> messed something else, you'd have some input on how to address it better
>> in the future.
>>
>> I'm trying to come up with a tool/system to help maintainers with
>> this task because right now it's not working too well. I'm not trying to
>> introduce arbitrary rules to make your life miserable.
>
>And I am asking you what kind of rules do you want/expect/would prefer
>for Fixes: pseudo-header.  *I* do not give a flying fuck for its
>contents; I can put it in, if there is a good reason, though.  And
>the obvious consumers of that thing are -stable maintainers.  Including
>yourself.  Which is why I am asking you what should go in there in
>situation described above.  And no, that's not a rhetorical question;
>I really want to know.
>
>Let me describe it again:
>	* a bunch of holes is found in a function; all of them go back
>several years
>	* a clean fix for the whole pile is a composition of
>1) local fix of trivially triggered memory corruptor
>2) tree-wide mechanical change of method signature + matching modification=
s
>of callers of that method (say, all five of them).
>3) further changes in the function in question and its caller (which happe=
ns
>to be an instance of the method modified by (2).
>	* dependencies between parts: (1) is standalone, (3) has a hard
>dependency on (2), (1) can be reordered past (2)+(modified 3), but modific=
ations
>needed in (1) and (3) are not trivial.
>	* the crap fixed by (1) is much more severe than that fixed by (3)
>(and (2) is an equivalent transformation which does not affect behaviour o=
f
>anything).
>	* too late in the cycle for tree-wide patches like (2).
>
>As far as I'm concerned (and if it makes -stable folks' lives unpleasant,
>too fucking bad) the merge order is: (1) as soon as it's sufficiently
>reviewed and tested, (2) and (3) - next merge window.  The only question
>is what kind of metadata should go into commit messages to minimize the
>PITA for -stable folks, *given* *that* *merge* *timing*.

Right, -stable shouldn't affect how/when you merge your patches in.

Also, in scenarios such as this we have enough tools in place to figure
out the dependency chain, and we could address it when backporting to
stable.

I don't want to create additional work that you wouldn't do anyways.
Keep in mind that the Fixes: tag will also be useful for yourself later
on if you have to go back to this patch a few years later.

As to the question you actually asked, assuming patch (3) is important=20
for stable as well (you didn't state it explicitly), the correct=20
tagging would be:

For patch (1):
	Fixes: AAA ("Commit from several years ago that introduced the hole")
	Cc: stable@vger.kernel.org

For patch (2):
	No tags

For patch (3):
	Fixes: AAA ("Commit from several years ago that introduced the hole")
	Cc: stable@vger.kernel.org # commit-id-of-(2)
