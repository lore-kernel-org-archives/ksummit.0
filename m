Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 171E2910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 22:48:33 +0000 (UTC)
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1099C2027E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 22:48:32 +0000 (UTC)
Received: by mail-ig0-f175.google.com with SMTP id uq10so3074244igb.14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 15:48:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140528163902.GA5099@sirena.org.uk>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<20140528143246.GV15585@mwanda>
	<CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
	<20140528163902.GA5099@sirena.org.uk>
Date: Thu, 29 May 2014 00:48:31 +0200
Message-ID: <CAKMK7uGB8toTgmRJg4akj73CWBdKcUBH6CHt3TGHov5hHODwFA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 28, 2014 at 6:39 PM, Mark Brown <broonie@kernel.org> wrote:
> On Wed, May 28, 2014 at 04:39:15PM +0200, Daniel Vetter wrote:
>> My approach has been to insist on an in-patch revision log which gets
>> included in the commit. And that for any changes and bugs spotted the
>> reviewer/commenter must be acknowleged. See e.g.
>> d978ef14456a38034f6c0e for a very nice example of that. But that's
>> also a good example for no tag to acknowledge all the work that went
>> into this review/patch, since I've done the final review myself and
>> only put my sob onto the patch.
>
> This does mean that the final changelogs that get included in the kernel
> get very large and noisy and is relying on the submitters doing a good
> job paying attention to review comments in the first place, recording
> exactly what changed and so on.  They are sometimes useful but normally
> I'm finding very little value in the changelogs in the first place,
> generally it doesn't really matter what the problems were in any
> previous versions.

Thus far it didn't annoy me - it's at the bottom with the sob section.
And occasionally I've found it useful to follow some of the steps laid
out in there to understand why a patch looks what it looks like. I
know that a lot of other maintainers want the patch revision log below
the scissors.

And it also gives me a really good tool to scold patch authors if they
don't follow up on all review comments, which is the other useful
aspect. Including it in the commit makes it look a bit more valued imo
and hopefully makes sure people take this all serious.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
