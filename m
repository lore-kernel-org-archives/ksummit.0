Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 93E99B0C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 03:34:02 +0000 (UTC)
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E47BC201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 03:34:01 +0000 (UTC)
Received: by mail-qg0-f53.google.com with SMTP id f51so20612030qge.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 20:34:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKrqSSzg-BurzVOZsPYG5JQa56qwmtCYhfARUrNRMNs1g@mail.gmail.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281832550.1280@utopia.booyaka.com>
	<CAL_JsqKrqSSzg-BurzVOZsPYG5JQa56qwmtCYhfARUrNRMNs1g@mail.gmail.com>
Date: Wed, 28 May 2014 20:34:00 -0700
Message-ID: <CAOesGMhMH26yd=9EeKMb5Ma5DpmVC-FwWy3Gwws153qKaxh+4Q@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: Rob Herring <robherring2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 28, 2014 at 7:15 PM, Rob Herring <robherring2@gmail.com> wrote:
> On Wed, May 28, 2014 at 1:47 PM, Paul Walmsley <paul@pwsan.com> wrote:
>> On Sat, 24 May 2014, James Bottomley wrote:
>>
>>> I'm sure there are many other things people could suggest.
>>
>> What's needed is to bring quality reviewers up to the same level of
>> recognition and control as maintainers.
>>
>> Ideally, maintainers would recognize quality reviewers, and list them in
>> the MAINTAINERS file - perhaps with an "R:" tag?  Maintainers would be
>> expected to designate at least one quality reviewer, but ideally more, for
>> a given subsystem.
>>
>> Then we should require every patch to have at least one "Reviewed-by:",
>> aside from the maintainer's "Signed-off-by:" before being merged.  This
>> "Reviewed-by:" could come from the maintainer, but ideally would come from
>> a quality reviewer.
>>
>> Patch submitters would need to get their patches reviewed by at least one
>> of the recognized reviewers before expecting it to be merged.
>>
>> Part of the goal here would also be to convert quality reviewers into
>> co-maintainers over time, so maintainership duties can be spread among a
>> larger group of people.
>
> What really needs to change here as we already essentially have this
> today. Getting more reviewer bandwidth is why we have 5 DT binding
> maintainers. DT bindings are a bit unique in that almost everything
> goes in thru other maintainers trees, so the role is almost entirely
> reviews. But what's to say a co-maintainers role is not solely
> reviews. How co-maintainers split up the load is really an internal
> decision among them.

I honestly think 5 are too many from some perspectives, but I also
understand why it's needed in this case due to sheer volume of
patches.

The main drawback, that I have complained a little about at random
moments lately, is that the 5 maintainers have quite different
feedback to give and it's hard for a contributor to know what to do to
please the union set of reviewers. Preferences shift for everybody
over time, but with 5x the shifting, it can be annoying to deal with.
One maintainer's "good enough, let's pick it up" can be "oh no, you
really need to change this -- everybody got this wrong in the past so
don't look at existing code" for someone else.

> Do we really have people we trust to review that we wouldn't trust to
> be a co-maintainer?

It's not about trust as much as practicalities of shared git repos and
the overhead of getting that going (in some cases).

To me as a patch poster, if I send a patch to a maintainer and he
finds it good, I expect it to show up in linux-next shortly and then
be on the way in for the next merge window. For a reviewer, this might
not be the case since he/she will just reply with an ack and then the
patch might or might not show up in a tree at some point in the
future. That's why I'm somewhat hesitant to label every reviewer a
maintainer since it's hard to tune expectations.


-Olof
