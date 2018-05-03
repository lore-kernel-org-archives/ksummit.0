Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 355F38E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 15:43:48 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0115.outbound.protection.outlook.com [104.47.33.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6BE04F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 15:43:47 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Thu, 3 May 2018 15:43:44 +0000
Message-ID: <20180503154342.GN18390@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org> <877eol808s.fsf@intel.com>
	<1525357984.3225.12.camel@HansenPartnership.com>
	<20180503144850.GC23311@1wt.eu> <20180503150608.GM18390@sasha-vm>
	<1525361268.3225.17.camel@HansenPartnership.com>
In-Reply-To: <1525361268.3225.17.camel@HansenPartnership.com>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E351D48CCF52AB4EA795D833AF51862D@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg KH <gregkh@linuxfoundation.org>, Willy Tarreau <w@1wt.eu>,
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

On Thu, May 03, 2018 at 08:27:48AM -0700, James Bottomley wrote:
>On Thu, 2018-05-03 at 15:06 +0000, Sasha Levin via Ksummit-discuss
>wrote:
>> On Thu, May 03, 2018 at 04:48:50PM +0200, Willy Tarreau wrote:
>> > On Thu, May 03, 2018 at 07:33:04AM -0700, James Bottomley wrote:
>> > > They're definitely for bug fixes, but there's a spectrum: obvious
>> > > bug fixes with no side effects are easy to justify.=A0=A0More comple=
x
>> > > bug fixes run the risk of having side effects which introduce
>> > > other bugs, so could potentially destabilize the -rc process.=A0=A0I=
n
>> > > SCSI we tend to look at what the user visible effects of the bug
>> > > are in the post -rc5 region and if they're slight or wouldn't be
>> > > visible to most users, we'll hold them over.=A0=A0If the fix looks
>> > > complex and we're not sure we caught the ramifications, we often
>> > > add it to the merge window tree with a cc to stable and a note
>> > > saying to wait X weeks before actually adding to the
>> > > stable tree just to make sure no side effects show up with wider
>> > > testing.=A0=A0So, as with most things, it's a judgment call for the
>> > > maintainer.
>> >
>> > For me this is the right, and responsible way to deal with bug
>> > fixes. Self-control is much more efficient than random rejection
>> > and favors a good analysis.
>>
>> I think that the ideal outcome of this discussion, at least for me,
>> is a tool to go under scripts/ that would allow maintainers to get
>> some sort of (quantifiable) data that will indicate how well the
>> patch was tested via the regular channels.
>>
>> At which point it's the maintainer's judgement call on whether he
>> wants to grab the patch or wait for more tests or reviews.
>>
>> This is very similar to what James has described, it just needs to
>> leave his brain and turn into code :)
>
>I appreciate the sentiment, but if we could script taste, we'd have
>replaced Linus with something far less cantankerous a long time ago ...

Linus, IMO, is getting replaced. Look at how many functions he used to
do 10 years ago he's no longer responsible for.

One of the most obvious examples is -next, where most integration issues
are resolved before they even reach to Linus.

This is good for the community, as it allows us make the process better
and scale out. It is also good for Linus, as I'm not sure how long he'd
last if he still had to edit patches by hand too often. Instead, he gets
to play with things that interest him more where his is irreplaceable.

>It's also a sad fact that a lot of things which look like obvious fixes
>actually turn out not to be so with later testing.  This is why the
>user visibility test is paramount.  If a bug fix has no real user
>visible effects, it's often better to defer it no matter how obvious it
>looks, which is why the static code checkers often get short shrift
>before a merge window.
>
>A script measuring user visibility would be nice, but looks a bit
>complex ...

It is, but I think it's worthwhile. Would something that'll show you
things like:

 - How long a patch has been in -next?
 - How many replies/reviews/comments it got on a mailing list?
 - Did the 0day bot test it?
 - Did syzbot fuzz it? for how long?
 - If it references a bugzilla of some sort, how many
   comments/reviews/etc it got there?
 - Is it -stable material, or does it fix a regression in the current
   merge window?
 - If subsystem has custom testing rig, results from those tests

be a step in the right way? is it something you'd use to make decisions
on whether you'd take a patch in?=
