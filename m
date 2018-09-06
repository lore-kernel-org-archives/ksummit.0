Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 313A0CEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 04:44:58 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2D6E8786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 04:44:56 +0000 (UTC)
Date: Thu, 6 Sep 2018 06:44:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Kees Cook <keescook@chromium.org>
In-Reply-To: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1809060641060.3065@hadrien>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
 replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Wed, 5 Sep 2018, Kees Cook wrote:

> Hi,
>
> I'd like to discuss ways that we could deprecate APIs more sanely. At
> present I've seen (and used) two approaches, fast and slow:
>
> Fast:
> Introduce new API in release N. Perform massive patch bombs drowning
> maintainers in a single release for release N+1, and remove the old
> API before -rc2.
> Pros:
> - it gets done in 2 releases!
> Cons:
> - writing the API transition patches may span multiple release prior
> to N without entering linux-next, which causes rebase/conflict cycles
> - patches developed prior to N may not get adequate testing
> - maintainers drown in patches
> Example: timer_setup() refactoring, kmalloc()->kmalloc_array()
>
> Slow:
> Introduce new API in release N. Trickle patches in over N+M releases,
> removing old API when no more uses are present.
> Pros:
> - patches are written and handed to maintainers at a regular rate
> - testing happens normally
> Cons:
> - new users of the old API continue to enter the kernel, causing an
> endless cycle of needing more work
> - API may never get deprecated
> Example: strscpy(), VLA removal
>
> Note that "Fast" isn't actually fast, since the bulk of the prep work
> happens "in the dark".
>
> The primary issue with "Slow" is the introduction of uses of the old
> API. With a "small" API, this is managemable (e.g. with VLA removal we
> started with only about 120 instances, and only 2-3 new ones got added
> each release). With large mechanical changes (kmalloc_array()) it's
> easy to keep up with new users, since the fixes are mechanical.
>
> While trying to prepare to move away from bare strcpy(),
> not-always-terminated strncpy(), and
> read-entire-src-and-do-full-NUL-padding strlen(), there are literally
> thousands of users to move to strscpy(), and I expect new users to
> keep entering the kernel at a high rate. Adding warnings to
> checkpatch.pl isn't sufficient since only a subset of maintainers
> require patches be "checkpatch clean".
>
> Some str*cpy() numbers for context:
> $ for i in '' n l s; do j=str${i}cpy; echo -en "$j\t"; git grep
> '\b'"$j"'\b' | grep -Ev '^(Documentation|tools)/' | wc -l ; done
> strcpy  2490
> strncpy 865
> strlcpy 2361
> strscpy 29
>
> Linus correctly removed __deprecated since it's just noisy: marking
> strcpy() as __deprecated would be an absolute nightmare. What would be
> great would be a way to mark NEW users of an API with a warning, but
> outside of voluntary checkpatch use, we have no global patch checker
> that is always run. Adding some kind of "__grandfathered" mark to
> existing users that would silence a __deprecated warning seems like
> just creating two problems, and would create massive churn in the
> existing code.
>
> I'd really like a solution besides "masochism". :)

Could people be encouraged to try for medium, ie following the fast
approach but not actually removing the old function immediately?
I remember that the devm functions, for example, took off very slowly.
>From the above numbers it looks like strscpy is doing the same.  I no one
sees something being used, then know one will know that they should be
using it, and it risks never being picked up.

julia
