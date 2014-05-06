Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 105DF996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:10:19 +0000 (UTC)
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 500BE2022C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:10:18 +0000 (UTC)
Received: by mail-ig0-f176.google.com with SMTP id hl10so6746744igb.15
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 May 2014 13:10:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1399404095.4218.51.camel@jlt4.sipsolutions.net>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
	<1399404095.4218.51.camel@jlt4.sipsolutions.net>
Date: Tue, 6 May 2014 22:10:17 +0200
Message-ID: <CAKMK7uHT0S0fGnaf2CesCJcG--pZxd=0xtk08KwAuGAj53-RqA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 6, 2014 at 9:21 PM, Johannes Berg <johannes@sipsolutions.net> wrote:
> On Tue, 2014-05-06 at 10:58 -0700, josh@joshtriplett.org wrote:
>
>> We need to have better processes for vetting new syscalls and ABIs far
>> more carefully than we currently do.
>
> How far would you want to take this? New syscalls is one thing, but
> there are frequently additions to "subsystem APIs", e.g. in networking,
> that aren't really syscalls but part of netlink etc. Trying to vet all
> of that might very well end up just overwhelming the process, but on the
> other hand it's still something that probably should be done in some
> form.

drm drivers add massive amounts of per-driver ioctls/sysfs files/...
and of course we've done all the usual (and a lot of the unusual) api
design mistakes. For i915 I've got fed up with all that and we've
switched to a fairly strict regime:

1. Patches that add new abi need to have full userspace ready before
the kernel side gets merged. Usually that means an (open source)
implementation of the OpenGL feature for that feature in mesa,
including all the functionality tests mesa requires (which are again
open source in piglit). New interfaces without fully validated and
working userspace parts get rejected.

2. I also require detailed testcases of all the corner-cases (reserved
bits/fields, signal handling, corener-cases/interactions with other
interfaces, overflow/array bounds issues, ...). Those low-level tests
are in intel-gpu-tools. I also have a lenghty blog with all the
mistakes we've done thus far wrt userspace interface design and what
kind of test coverage I expect:
http://blog.ffwll.ch/2013/11/botching-up-ioctls.html

3. Patches which require a testcase should have a Testcase: tag to
make sure both pieces (kernel patch + testcase) are linked together.
They usually also get reviewed in tandem by the same person.

I've made it very clear (and enforced this a bunch of times already)
that patches which don't follow this will be rejected. In my
experience (we've been doing this since about a year or so) this takes
care of the abi design fun completely.

I guess in a year or so I'll also add

4. Create/update the relevant manpage.

But currently we don't yet have that part set up (and also higher
priorities for documentation elsewhere in the stack).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
