Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9069F412
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 20:16:45 +0000 (UTC)
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C64BF3EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 20:16:44 +0000 (UTC)
Received: by mail-it0-f54.google.com with SMTP id k192so13805750ith.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 13:16:44 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <20170629182044.GP21846@wotan.suse.de>
References: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
	<1498754169.2834.61.camel@HansenPartnership.com>
	<CAGXu5jJ011-7JH7w4n0No=gon-jp4VTeN=0JPWaQsGh5zz79eA@mail.gmail.com>
	<1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
From: Kees Cook <keescook@chromium.org>
Date: Thu, 29 Jun 2017 13:16:40 -0700
Message-ID: <CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Developing across
 multiple areas of the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 29, 2017 at 11:20 AM, Luis R. Rodriguez <mcgrof@kernel.org> wrote:
> On Thu, Jun 29, 2017 at 10:52:51AM -0700, Kees Cook wrote:
>> On Thu, Jun 29, 2017 at 10:42 AM, James Bottomley
>> <James.Bottomley@hansenpartnership.com> wrote:
>> > On Thu, 2017-06-29 at 09:51 -0700, Kees Cook wrote:
>> >> On Thu, Jun 29, 2017 at 9:36 AM, James Bottomley
>> >> <James.Bottomley@hansenpartnership.com> wrote:
>> >> > On Wed, 2017-06-28 at 16:01 -0700, Kees Cook wrote:
>> >> Right, I've got no objection to the performance concerns and how that
>> >> played out, but it's API-to-conversion steps that seem inefficient.
>> >
>> > Well don't discount tree merge problems, having seen a few caused by
>> > API plus conversion all at once.  However, by putting them through the
>> > maintainer trees you got the review that would otherwise have been
>> > missing which highlighted the performance concerns.  Even this time
>> > around the affected trees have a whole merge window to run performance
>> > regressions to verify everything is OK.  Based on this I think the rule
>> > should be API in release R - 1 and conversion in release R through the
>> > affected trees with the only exception being changes that are trivial
>> > enough (for some value of trivial).
>
> Do you mean add API with no users? If so perhaps test drivers can be the
> first users for it then. Then they are not naked APIs.
>
>> I'd argue that's what -next is for, but we lack a way to have people
>> base their trees on -next sanely.
>
> Linus has said before cross-tree collateral evolutions *could* just be sent to
> him as a set of scripts he could run. It might sound easier said than done
> though, but we can improve on the process by practicing it daily.

Yeah, though my concern doesn't tend to be limited to scriptable
evolutions. (In fact, I think the closest is atomic_t -> refcount_t,
but that usually requires a case-by-case analysis, so it's not really
scriptable.)

I think the fortify changes might best describe the situation. Adding
CONFIG_FORTIFY_SOURCE created build-time checks for obviously bad
states in str* and mem* functions (buffer overflows, information
exposures, etc). As such, when fortify encounters these states it will
fail a build since we should not allow them to exist in the resulting
kernel image. As it was still under development and it was unclear how
long it was going to take to stabilize, I started sending fixes for
the issues it found, and those were picked up into various
maintainer's trees (since they were legitimate, though minor, security
bugs).

When it was starting to stabilize, it got sent to a wider audience,
and I created a tree with all the fixes and fortify itself. I had to
keep the maintainer-picked patches in my tree or I couldn't compile
it. As such, that's not a tree I can include in -next because sfr ends
up with duplicated commits[1]. When akpm picked fortify to go into
-mm, he didn't also take the remaining fixes that I had sent but
maintainers hadn't applied yet. Since my tree wasn't in -next, both
-mm and -next would fail to build with fortify enabled since the fixes
were missing. The specific solution here was to have akpm pick up all
the remaining fixes into -mm.

So, perhaps I'm creating my own problems (by sending the fixes
"early"), but it's not clear to me that carrying such fixes in my own
tree would be looked favorably upon. But I really didn't want the
fixes to languish outside of -next, in case fortify development didn't
finish before the next merge window. Perhaps I should, in fact, carry
these kinds of changes and be more clear about sending such patches,
instead of "here's a fix for your subsystem", I should say "here's a
fix for your subsystem. I'm going to carry in my fortify tree, please
Ack" and then boldly carry them for -next? (A variation of this
successfully happened for randstruct fixes were hch urged me to just
ask Linus to pick up the stragglers during the v4.12 merge window.)

-Kees

[1] If the solution for this is to merge other -next trees into mine,
I guess I can do that, though it can be very messy if any of them are
forced to make their commits unstable. It also creates headaches,
AIUI, for sfr if my tree suddenly gains a bunch of other trees so it's
not clear where something came from.

-- 
Kees Cook
Pixel Security
