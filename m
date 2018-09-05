Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 39ACAD90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 22:57:06 +0000 (UTC)
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
	[209.85.161.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B53037CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 22:57:05 +0000 (UTC)
Received: by mail-yw1-f65.google.com with SMTP id j131-v6so3317515ywc.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 15:57:05 -0700 (PDT)
Received: from mail-yw1-f45.google.com (mail-yw1-f45.google.com.
	[209.85.161.45]) by smtp.gmail.com with ESMTPSA id
	r3-v6sm2278069ywr.80.2018.09.05.15.57.03
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Sep 2018 15:57:03 -0700 (PDT)
Received: by mail-yw1-f45.google.com with SMTP id z143-v6so3328997ywa.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 15:57:03 -0700 (PDT)
MIME-Version: 1.0
From: Kees Cook <keescook@chromium.org>
Date: Wed, 5 Sep 2018 15:57:02 -0700
Message-ID: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] API replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

I'd like to discuss ways that we could deprecate APIs more sanely. At
present I've seen (and used) two approaches, fast and slow:

Fast:
Introduce new API in release N. Perform massive patch bombs drowning
maintainers in a single release for release N+1, and remove the old
API before -rc2.
Pros:
- it gets done in 2 releases!
Cons:
- writing the API transition patches may span multiple release prior
to N without entering linux-next, which causes rebase/conflict cycles
- patches developed prior to N may not get adequate testing
- maintainers drown in patches
Example: timer_setup() refactoring, kmalloc()->kmalloc_array()

Slow:
Introduce new API in release N. Trickle patches in over N+M releases,
removing old API when no more uses are present.
Pros:
- patches are written and handed to maintainers at a regular rate
- testing happens normally
Cons:
- new users of the old API continue to enter the kernel, causing an
endless cycle of needing more work
- API may never get deprecated
Example: strscpy(), VLA removal

Note that "Fast" isn't actually fast, since the bulk of the prep work
happens "in the dark".

The primary issue with "Slow" is the introduction of uses of the old
API. With a "small" API, this is managemable (e.g. with VLA removal we
started with only about 120 instances, and only 2-3 new ones got added
each release). With large mechanical changes (kmalloc_array()) it's
easy to keep up with new users, since the fixes are mechanical.

While trying to prepare to move away from bare strcpy(),
not-always-terminated strncpy(), and
read-entire-src-and-do-full-NUL-padding strlen(), there are literally
thousands of users to move to strscpy(), and I expect new users to
keep entering the kernel at a high rate. Adding warnings to
checkpatch.pl isn't sufficient since only a subset of maintainers
require patches be "checkpatch clean".

Some str*cpy() numbers for context:
$ for i in '' n l s; do j=str${i}cpy; echo -en "$j\t"; git grep
'\b'"$j"'\b' | grep -Ev '^(Documentation|tools)/' | wc -l ; done
strcpy  2490
strncpy 865
strlcpy 2361
strscpy 29

Linus correctly removed __deprecated since it's just noisy: marking
strcpy() as __deprecated would be an absolute nightmare. What would be
great would be a way to mark NEW users of an API with a warning, but
outside of voluntary checkpatch use, we have no global patch checker
that is always run. Adding some kind of "__grandfathered" mark to
existing users that would silence a __deprecated warning seems like
just creating two problems, and would create massive churn in the
existing code.

I'd really like a solution besides "masochism". :)

-Kees

-- 
Kees Cook
Pixel Security
