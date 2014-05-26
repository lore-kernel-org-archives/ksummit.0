Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E1B3F85D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 17:08:46 +0000 (UTC)
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DEB72026D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 17:08:46 +0000 (UTC)
Received: by mail-ig0-f178.google.com with SMTP id hl10so182793igb.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 10:08:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140524003036.GB26422@thunk.org>
References: <537F3551.2070104@hitachi.com>
	<1400853902.31124.5.camel@fedora64.linuxtx.org>
	<20140524003036.GB26422@thunk.org>
Date: Mon, 26 May 2014 19:08:45 +0200
Message-ID: <CAKMK7uGvF6x55ERBj-PSZuhJELp1xbtqBNVutjWk0CzhLYDkjA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, May 24, 2014 at 2:30 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> On Fri, May 23, 2014 at 09:05:02AM -0500, Justin M. Forbes wrote:
>> All good suggestions. As nice as it would be if tests were in tree, this
>> might be unmanageable. But even out of tree tests could be automatically
>> brought in provided they are listed somewhere in tree.  Ideally you
>> would be able to "make tests" and get all in tree tests run, or "make
>> alltests" and have it grab/build/run out of tree tests with git urls as
>> well.
>
> Um.... how long do you expect "make alltests" to run?
>
> And how do you deal with tests that require specific hardware?
>
> For ext4, just doing a light smoke test takes about 30 minutes.  For
> me to run the full set of tests using multiple file system
> configurations, it takes about 12 to 16 hours.  And that's just for
> one file system.  (I do the tests using KVM, with a 90 megabyte
> compressed root file system, and 55 gigabytes worth of scratch
> partitions.)

Full drm/i915 regression testing takes about equally long, multiplied
by the need to run this on different physical hw platforms to cover
all relevant code paths. tbh I really don't see much point in having a
fully integrated testsuite for everything. At least for developers.

Otoh if distros/stable trees and other consumers of upstream want to
run this I think it would make sense to have something unified. I've
tried to haggle the drm/i915 testsuite to various people, but thus far
very little success. So I'm not sure whether it's just a lack of
awareness about the tests or whether it is a more fundamental lack of
interest (usually called "we don't have time").
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
