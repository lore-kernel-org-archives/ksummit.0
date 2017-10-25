Return-Path: <frowand.list@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E8B99C0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 06:45:28 +0000 (UTC)
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D1044EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 06:45:27 +0000 (UTC)
Received: by mail-wr0-f193.google.com with SMTP id z55so16769656wrz.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Oct 2017 23:45:27 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>, Joe Perches <joe@perches.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<CAGXu5jJAUbhEZPFYSU1ExON49LqQMTgjmRSszp6eMuaDuSimsA@mail.gmail.com>
	<1508888508.1955.16.camel@perches.com>
	<CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <5f0baf06-4cf1-e4b6-890c-08ee8e7d4f9a@gmail.com>
Date: Tue, 24 Oct 2017 23:45:24 -0700
MIME-Version: 1.0
In-Reply-To: <CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/24/17 17:54, Kees Cook wrote:
> On Tue, Oct 24, 2017 at 4:41 PM, Joe Perches <joe@perches.com> wrote:
>> On Tue, 2017-10-24 at 16:03 -0700, Kees Cook wrote:
>>> On Fri, Oct 6, 2017 at 8:27 AM, James Bottomley
>>> <James.Bottomley@hansenpartnership.com> wrote:
>>>> On Thu, 2017-10-05 at 15:20 -0400, Theodore Ts'o wrote:
>>>>> Appendix: Other topics that were brought up
>>>>> [...]
>>>>> Developing across multiple areas of the kernel
>>>>
>>>> I've got a couple of extra possibilities
>>>> [...]
>>>> 2) Trivial patches (again).
>>>
>>> Given that the "trivial patches" topic's discussion ended up boiling
>>> down to a discussion about developing across multiple areas of the
>>> kernel, maybe we should make space for a "tree-wide changes"
>>> discussion? Even after the earlier thread about it, I tripped all over
>>> this in the last couple months while doing timer conversions, so I
>>> would at least have some more strong opinions on the subject. ;)
>>
>> It's a ripe area (like months old limburger cheese) for discussion.
>>
>> There's currently no good way to do tree-wide changes.
> 
> Some things stand out for me:

< snip >

> 3) Maintainers (sanely) balk at getting a massive dump of patches all
> at once. It would be nice to document "batch limits" in the
> MAINTAINERS file too. (For example, davem asked me after I sent him 60
> patches in a single day if I could please limit the batch size to 12
> between commits (i.e. only send the next batch after the prior batch
> has been applied/processed). "H:"ow many at once, maybe?

< snip >

But patches sent to a list are not just for the maintainer.  They are
also for anyone else who may be affected or who may care to review
the patches.  Those other people have their own schedule issues.

If you hold off sending a second patch set this week, then send it
next week (when the maintainer once again has some bandwith), it is
likely that someone other than the maintainer has time to look at
that patche set this week, but may have no free time to do so next week.

-Frank
