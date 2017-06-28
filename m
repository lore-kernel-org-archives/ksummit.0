Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C5001B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 23:01:40 +0000 (UTC)
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C1D86AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 23:01:39 +0000 (UTC)
Received: by mail-io0-f181.google.com with SMTP id h64so44308089iod.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 16:01:39 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
From: Kees Cook <keescook@chromium.org>
Date: Wed, 28 Jun 2017 16:01:34 -0700
Message-ID: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Developing across multiple
	areas of the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

If there is time at the summit, I'd like to quickly discuss best
practices for the mechanics of doing security defense development in
the kernel. This has always been a bit tricky and I've done my best to
navigate it, but it still feels like there are glitches that could be
ironed out with a more clearly declared process (or ownership).

The specific problem I (and others doing this sort of work) face is
that changes tend to be needed across a very wide area of the kernel,
especially across architectures (e.g. hardened usercopy, fortify) and
subsystems (e.g. refcount_t). For kernel-wide defenses (e.g.
randstruct), things get even more complex. Landing things in a
coordinated fashion across multiple maintainers seems overly
difficult, and leads to dependencies between trees which complicates
merges.

For usercopy, I just carried the changes in a separate tree and got
Acks from the various maintainers as needed (the arch changes were
small, though we still collided with KASan changes). This was,
comparatively, a small series.

For refcount_t, the conversions have been going per-maintainer, and
while this is likely the right way to do things, there are
dependencies that are crossing releases, which seems inefficient. For
example, obviously doing a refcount_t conversion requires the
refcount_t implementation first (which landed in v4.11), but then
later conversions wanted an option for a light implementation
(expected for v4.13), but in both cases most maintainers wanted the
implementations entirely landed, not just in -next (vast majority of
refcount_t conversions currently in the kernel landed in v4.12, so the
next wave will have to wait until v4.14 it seems). This appears mostly
to be about avoiding tree dependencies, IIUC, but is an awfully slow
way to do things.

For the randstruct gcc plugin there have been multiple kernel-wide
fixes needed (e.g. designated initializers and sorting out various
"unusual" cross-structure casts). I followed the pattern of sending
these to maintainers, but ended up in tree dependency hell (the gcc
plugin tree must be merged at the end of -next to see all the required
changes in various trees), and faced cases where changes needed to
made in sources maintained outside the kernel itself (i.e. ACPICA)
before they'd be accepted back into the kernel. Making tree-wide
zero-binary changes (e.g. designated initializer updates) shouldn't be
that hard.

For fortify source, I was sending stand-alone fixes to maintainers
(e.g. memcpy to strncpy changes) while staging the fortify changes in
a tree not intended for -next yet (as it had more features pending)
but it got cherry-picked "early" into -mm. This lead to several days
of confusion that was mostly solved by dumping all the pending fixes
(that hadn't already been picked up by other maintainers) into the -mm
tree. The -mm tree has an implicit "merged after all other -next
trees" dependency, so it worked there, but it seems odd to gate this
kind of development entirely via -mm.

So, I'm left wondering what the best approach for doing kernel-wide
development is. The existing heuristic ("break up the changes by
maintainer and send them") doesn't recognize dependencies (e.g.
coccinelle identified code pattern fixes rarely depend on each other,
so those kinds of things work fine), or don't care too much about
changes spanning time (e.g. switching to a new API to avoid open-coded
versions result in equivalent code and can land independently).

The other heuristic is "carry it all in your own tree" but this tends
to run afoul of maintainers not wanting changes to their area living
in your tree (e.g. arch/x86 changes not in the tip tree), or a lack of
review (e.g. I don't want to carry a patch to mm/slub.c without
_someone_ giving an Ack).

Another approach appears to be a multi-phase merge heuristic (similar
to -mm) for things that have multi-tree dependencies. (This is going
to be the case for the randstruct merge in v4.13, since later patches
in its series depend on other trees. I'll send it in two parts and
pray than Linus doesn't murder me.) However, this breaks things like
0-day that have no idea that some tree is designed to be applied on
top of -next, and gives sfr a headache since there is an implicit
dependency on other trees in -next.

So, if I'm missing something obvious, we can quickly solve this over
email. :) If this is all "operating as expected" I can go cry in my
beer, but if there are other ideas, I'd love to discuss them at the
summit (assuming I can actually hear people through the monitor
speaker on the stage this year).

Thanks!

-Kees

-- 
Kees Cook
Pixel Security
