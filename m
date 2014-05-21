Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 13DE7892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 08:36:57 +0000 (UTC)
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6211D1F977
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 08:36:56 +0000 (UTC)
Received: by mail-ve0-f179.google.com with SMTP id oy12so2104570veb.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 01:36:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140521182552.2ed57ad7@notabene.brown>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
	<20140521182552.2ed57ad7@notabene.brown>
Date: Wed, 21 May 2014 01:36:55 -0700
Message-ID: <CAPcyv4iJ8vO_7BfqyPSpOm3AcdYvoJS8kzbiqfAwH77wO_-auA@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: NeilBrown <neilb@suse.de>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
	Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 21, 2014 at 1:25 AM, NeilBrown <neilb@suse.de> wrote:
> On Wed, 21 May 2014 00:48:48 -0700 Dan Williams <dan.j.williams@intel.com>
> wrote:
>
>> On Fri, May 16, 2014 at 8:04 AM, Chris Mason <clm@fb.com> wrote:
>> > -----BEGIN PGP SIGNED MESSAGE-----
>> > Hash: SHA1
>> >
>> > On 05/15/2014 10:56 PM, NeilBrown wrote:
>> >> On Thu, 15 May 2014 16:13:58 -0700 Dan Williams
>> >> <dan.j.williams@gmail.com> wrote:
>> >>
>> >>> What would it take and would we even consider moving 2x faster
>> >>> than we are now?
>> >>
>> >> Hi Dan, you seem to be suggesting that there is some limit other
>> >> than "competent engineering time" which is slowing Linux "progress"
>> >> down.
>> >>
>> >> Are you really suggesting that?  What might these other limits be?
>> >>
>> >> Certainly there are limits to minimum gap between conceptualisation
>> >> and release (at least one release cycle), but is there really a
>> >> limit to the parallelism that can be achieved?
>> >
>> > I haven't compared the FB commit rates with the kernel, but I'll
>> > pretend Dan's basic thesis is right and talk about which parts of the
>> > facebook model may move faster than the kernel.
>> >
>> > The facebook is pretty similar to the way the kernel works.  The merge
>> > window lasts a few days and the major releases are every week, but
>> > overall it isn't too far away.
>> >
>> > The biggest difference is that we have a centralized tool for
>> > reviewing the patches, and once it has been reviewed by a specific
>> > number of people, you push it in.
>> >
>> > The patch submission tool runs the patch through lint and various
>> > static analysis to make sure it follows proper coding style and
>> > doesn't include patterns of known bugs.  This cuts down on the review
>> > work because the silly coding style mistakes are gone before it gets
>> > to the tool.
>> >
>> > When you put in a patch, you have to put in reviewers, and they get a
>> > little notification that your patch needs review.  Once the reviewers
>> > are happy, you push the patch in.
>> >
>> > The biggest difference: there are no maintainers.  If I want to go
>> > change the calendar tool to fix a bug, I patch it, get someone else to
>> > sign off and push.
>> >
>> > All of which is my way of saying the maintainers (me included) are the
>> > biggest bottleneck.  There are a lot of reasons I think the maintainer
>> > model fits the kernel better, but at least for btrfs I'm trying to
>> > speed up the patch review process and use patchwork more effectively.
>>
>> To be clear, I'm not arguing for a maintainer-less model.  We don't
>> have the tooling or operational-data to support that.  We need
>> maintainers to say "no".  But, what I think we can do is give
>> maintainers more varied ways to say it.  The goal, de-escalate the
>> merge event as a declaration that the code quality/architecture
>> conversation is over.
>>
>> Release early, release often, and with care merge often.
>
> I think this falls foul of the "no regressions" rule.
>
> The kernel policy is that once the functionality gets to users, it cannot be
> taken away.  Individual drivers in 'staging' manage to avoid this rule
> because that are clearly separate things.
> New system calls and attributes in sysfs etc seem to be much harder to
> "partially" release.

My straw man is something like the following for driver "foo"

if (gatekeeper_foo_new_awesome_sauce)
   do_new_thing();

Where setting gatekeeper_foo_new_awesome_sauce taints the kernel and
warns that there is no guarantee of this functionality being present
in the same form or at all going forward.
