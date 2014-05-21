Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E9C072FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 07:48:49 +0000 (UTC)
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 46A981F90C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 07:48:49 +0000 (UTC)
Received: by mail-ve0-f180.google.com with SMTP id db12so1985011veb.25
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 00:48:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <537628ED.1020208@fb.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
Date: Wed, 21 May 2014 00:48:48 -0700
Message-ID: <CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: Chris Mason <clm@fb.com>
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

On Fri, May 16, 2014 at 8:04 AM, Chris Mason <clm@fb.com> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> On 05/15/2014 10:56 PM, NeilBrown wrote:
>> On Thu, 15 May 2014 16:13:58 -0700 Dan Williams
>> <dan.j.williams@gmail.com> wrote:
>>
>>> What would it take and would we even consider moving 2x faster
>>> than we are now?
>>
>> Hi Dan, you seem to be suggesting that there is some limit other
>> than "competent engineering time" which is slowing Linux "progress"
>> down.
>>
>> Are you really suggesting that?  What might these other limits be?
>>
>> Certainly there are limits to minimum gap between conceptualisation
>> and release (at least one release cycle), but is there really a
>> limit to the parallelism that can be achieved?
>
> I haven't compared the FB commit rates with the kernel, but I'll
> pretend Dan's basic thesis is right and talk about which parts of the
> facebook model may move faster than the kernel.
>
> The facebook is pretty similar to the way the kernel works.  The merge
> window lasts a few days and the major releases are every week, but
> overall it isn't too far away.
>
> The biggest difference is that we have a centralized tool for
> reviewing the patches, and once it has been reviewed by a specific
> number of people, you push it in.
>
> The patch submission tool runs the patch through lint and various
> static analysis to make sure it follows proper coding style and
> doesn't include patterns of known bugs.  This cuts down on the review
> work because the silly coding style mistakes are gone before it gets
> to the tool.
>
> When you put in a patch, you have to put in reviewers, and they get a
> little notification that your patch needs review.  Once the reviewers
> are happy, you push the patch in.
>
> The biggest difference: there are no maintainers.  If I want to go
> change the calendar tool to fix a bug, I patch it, get someone else to
> sign off and push.
>
> All of which is my way of saying the maintainers (me included) are the
> biggest bottleneck.  There are a lot of reasons I think the maintainer
> model fits the kernel better, but at least for btrfs I'm trying to
> speed up the patch review process and use patchwork more effectively.

To be clear, I'm not arguing for a maintainer-less model.  We don't
have the tooling or operational-data to support that.  We need
maintainers to say "no".  But, what I think we can do is give
maintainers more varied ways to say it.  The goal, de-escalate the
merge event as a declaration that the code quality/architecture
conversation is over.

Release early, release often, and with care merge often.

With regards to saying "no" faster, it seems kernel code rarely comes
with tests.  However, maintainers today are already able to reduce the
latency to "no" when the 0-day-kbuild robot emits a negative test.
Why not arm that system with tests it can autodiscover?  What has held
back unit test culture in the kernel?
