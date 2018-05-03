Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C2AE892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 18:20:49 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1C5CE299
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 18:20:48 +0000 (UTC)
Date: Thu, 3 May 2018 19:20:39 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180503182039.GC30522@ZenIV.linux.org.uk>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
	<20180503173422.GR18390@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180503173422.GR18390@sasha-vm>
Sender: Al Viro <viro@ftp.linux.org.uk>
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

On Thu, May 03, 2018 at 05:34:24PM +0000, Sasha Levin wrote:

> >Moreover, what the hell do you suggest in situation when
> >	* foofs_barf() is b0rken in quite a few ways.  There's an
> >easily triggerable memory corruptor that can be fixed locally as well
> >as something else that needs a change of e.g. ->mkdir() calling
> >conventions to take care of.  The change is mechanical and fairly
> >simple, but it's already -rc4.
> 
> I'm not advocating to forcefully block people from submitting patches
> after -rc4 (that was Ted's suggesting).

I am, though - change of a method signature when we have several dozens
of instances does *not* belong in -rc5; if nothing else, it guarantees
a nightmare pile of conflicts with individual filesystem trees.

> I'm just saying that as a maintainer, you should use your brain and
> figure out how critical the bug is, how good is the fix and how well was
> it tested, and decide if you want to merge it in or not.
> 
> If it fixed the bug and didn't introduce a regression, great! If it
> messed something else, you'd have some input on how to address it better
> in the future.
> 
> I'm trying to come up with a tool/system to help maintainers with
> this task because right now it's not working too well. I'm not trying to
> introduce arbitrary rules to make your life miserable.

And I am asking you what kind of rules do you want/expect/would prefer
for Fixes: pseudo-header.  *I* do not give a flying fuck for its
contents; I can put it in, if there is a good reason, though.  And
the obvious consumers of that thing are -stable maintainers.  Including
yourself.  Which is why I am asking you what should go in there in
situation described above.  And no, that's not a rhetorical question;
I really want to know.

Let me describe it again:
	* a bunch of holes is found in a function; all of them go back
several years
	* a clean fix for the whole pile is a composition of
1) local fix of trivially triggered memory corruptor
2) tree-wide mechanical change of method signature + matching modifications
of callers of that method (say, all five of them).
3) further changes in the function in question and its caller (which happens
to be an instance of the method modified by (2).
	* dependencies between parts: (1) is standalone, (3) has a hard
dependency on (2), (1) can be reordered past (2)+(modified 3), but modifications
needed in (1) and (3) are not trivial.
	* the crap fixed by (1) is much more severe than that fixed by (3)
(and (2) is an equivalent transformation which does not affect behaviour of
anything).
	* too late in the cycle for tree-wide patches like (2).

As far as I'm concerned (and if it makes -stable folks' lives unpleasant,
too fucking bad) the merge order is: (1) as soon as it's sufficiently
reviewed and tested, (2) and (3) - next merge window.  The only question
is what kind of metadata should go into commit messages to minimize the
PITA for -stable folks, *given* *that* *merge* *timing*.
