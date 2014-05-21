Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8A0092FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 07:22:57 +0000 (UTC)
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 171C61F80A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 07:22:56 +0000 (UTC)
Received: by mail-ve0-f175.google.com with SMTP id jw12so2003548veb.34
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 00:22:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140516125611.06633446@notabene.brown>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown>
Date: Wed, 21 May 2014 00:22:55 -0700
Message-ID: <CAPcyv4h8veEB8Jc5N1TkfHV+5Z8My3tJa0F+o5gj4X5tip5b9g@mail.gmail.com>
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

[ speaking for myself ]

On Thu, May 15, 2014 at 7:56 PM, NeilBrown <neilb@suse.de> wrote:
> On Thu, 15 May 2014 16:13:58 -0700 Dan Williams <dan.j.williams@gmail.com>
> wrote:
>
>> What would it take and would we even consider moving 2x faster than we
>> are now?
>
> Hi Dan,
>  you seem to be suggesting that there is some limit other than "competent
>  engineering time" which is slowing Linux "progress" down.

Where "progress" is "value delivered to users", yes.

>  Are you really suggesting that?

Yes, look at -staging as the first step down this path.  Functionality
delivered to users while "upstream acceptance" happens in parallel.
I'm arguing for a finer grained mechanism for staging functionality
out to users.

> What might these other limits be?

Testing and audience.  A simplistic example of moving slow is merging
a feature only after it has proven to have a large enough audience.
Or the opposite, spending development resources to polish and merge a
dead-on-arrival solution, but only discovering that fact once exposed
to wider distribution.

>  Certainly there are limits to minimum gap between conceptualisation and
>  release (at least one release cycle), but is there really a limit to the
>  parallelism that can be achieved?

Again, in general, I think there are aspects of "upstream acceptance"
that can done in parallel with delivering value to end users.
